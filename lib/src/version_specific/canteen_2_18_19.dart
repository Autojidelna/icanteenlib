part of 'package:icanteenlib/src/base_canteen.dart';

class Canteen2v18v19 extends BaseCanteen {
  Canteen2v18v19(super.url, super.webVerze) {
    _cookies = {"JSESSIONID": "", "XSRF-TOKEN": ""};
  }

  @override
  String get verzeKnihovny => "2.18.19";

  @override
  // TODO: implement featureSupport
  FeatureSupport get featureSupport => FeatureSupport(unsupportedByCanteen: [Features.burzaAmount, Features.vydejny]);

  @override
  Future<http.Response> _loginPostRequest(PrihlasovaciUdaje udaje) async {
    return await http.post(
      Uri.parse("$url/j_spring_security_check"),
      headers: {"Cookie": _buildCookieHeader(), "Content-Type": "application/x-www-form-urlencoded"},
      body: {
        "j_username": udaje.uzivatelskeJmeno,
        "j_password": udaje.heslo,
        "terminal": "false",
        "_csrf": _cookies["XSRF-TOKEN"],
        "_spring_security_remember_me": "on",
        "targetUrl": "/faces/secured/main.jsp?terminal=false&status=true&printer=&keyboard=",
      },
    );
  }

  @override
  Future<String> _strankaNastaveniRequest() async {
    return await $getRequest(url, '/web/setting', _buildCookieHeader(), _cookies);
  }

  @override
  Future<String> _strankaBurzyRequest() async {
    return await $getRequest(url, '/faces/secured/burza.jsp', _buildCookieHeader(), _cookies);
  }

  @override
  Future<String> _strankaVsechJidelnickuRequest() async {
    return await $getRequest(url, '/faces/secured/mobile.jsp', _buildCookieHeader(), _cookies);
  }

  @override
  Future<String> _strankaSpecifickyJidelnicekRequest(DateTime datum) async {
    String vydejna = (stavUctu != null && stavUctu!.vydejny.isNotEmpty) ? 'vydejna=$_novaVydejnaId&' : '';
    return await $getRequest(
      url,
      "/faces/secured/main.jsp?${vydejna}day=${datum.year}-${datum.month.toString().padLeft(2, '0')}-${datum.day.toString().padLeft(2, '0')}&terminal=false&printer=false&keyboard=false",
      _buildCookieHeader(),
      _cookies,
    );
  }

  @override
  Future<String> _objednejJidloRequest(Jidlo jidlo, int pocetDoBurzy) async {
    String? finalUrl = (jidlo.stav == StavJidla.objednanoPouzeNaBurzu && jidlo.url!.endsWith("amount=")) ? "${jidlo.url}$pocetDoBurzy" : jidlo.url;
    if (finalUrl == null) throw Exception(CanteenLibExceptions.neplatneUrl);

    return await $getRequest(url, "/faces/secured/$finalUrl", _buildCookieHeader(), _cookies); // provést operaci
  }
}
