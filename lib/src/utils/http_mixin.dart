import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icanteenlib/canteenlib.dart';

import 'package:http/http.dart' as http;

mixin HttpMixin {
  @protected
  Future<void> $getFirstSession(String url, Map<String, String> cookies) async {
    if (url.endsWith("/")) url = url.substring(0, url.length - 1); // odstranit lomítko
    try {
      http.Response res = await http.get(Uri.parse(url));
      $parseCookies(res.headers['set-cookie']!, cookies);
    } catch (e) {
      throw Exception(CanteenLibExceptions.chybaSite);
    }
  }

  /// Builder pro GET request
  @protected
  Future<String> $getRequest(String url, String path, String cookie, Map<String, String> cookies) async {
    http.Response res;
    try {
      res = await http.get(Uri.parse(url + path), headers: {"Cookie": cookie});
    } catch (e) {
      throw Exception(CanteenLibExceptions.chybaSite);
    }

    if (res.statusCode != 200 || res.body.contains("fail") || res.body.contains("Chyba")) {
      throw Exception("Chyba: ${res.body}");
    }

    if (res.body.contains("přihlášení uživatele") && path != '/') {
      throw Exception(CanteenLibExceptions.jePotrebaSePrihlasit);
    }

    if (res.headers.containsKey("set-cookie")) {
      $parseCookies(res.headers["set-cookie"]!, cookies);
    }

    return res.body;
  }

  /// Převede cookie řetězec z požadavku do mapy
  @protected
  void $parseCookies(String cookieString, Map<String, String> cookies) {
    List<RegExpMatch> regCookie = RegExp(r'([A-Z\-]+=.+?(?=;))|(remember-me=.+?)(?=;)').allMatches(cookieString).toList();
    for (RegExpMatch cook in regCookie) {
      List<String> c = cook.group(0).toString().split("=");
      cookies[c[0]] = c[1];
    }
  }
}
