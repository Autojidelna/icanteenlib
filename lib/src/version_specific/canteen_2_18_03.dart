part of 'package:icanteenlib/src/base_canteen.dart';

class Canteen2v18v03 extends BaseCanteen {
  Canteen2v18v03(super.url, super.webVerze) {
    _cookies = {"JSESSIONID": "", "XSRF-TOKEN": ""};
  }

  @override
  String get verzeKnihovny => "2.18.03";

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
  String _strankaNastaveniPath() => '/web/setting';

  @override
  String _strankaBurzyPath() => '/faces/secured/burza.jsp';

  @override
  String _strankaVsechJidelnickuPath() {
    String vydejna = (stavUctu != null && stavUctu!.vydejny.isNotEmpty) ? 'vydejna=$_novaVydejnaId&' : '';
    return '/faces/secured/mobile.jsp?${vydejna}terminal=false&keyboard=&printer=';
  }

  @override
  String _strankaSpecifickyJidelnicekPath(DateTime datum) {
    String vydejna = (stavUctu != null && stavUctu!.vydejny.isNotEmpty) ? 'vydejna=$_novaVydejnaId&' : '';
    return "/faces/secured/main.jsp?${vydejna}day=${datum.year}-${datum.month.toString().padLeft(2, '0')}-${datum.day.toString().padLeft(2, '0')}&terminal=false&printer=false&keyboard=false";
  }

  @override
  String _objednejJidloPath(Jidlo jidlo, int pocetDoBurzy) {
    String? finalUrl = (jidlo.stav == StavJidla.objednanoPouzeNaBurzu && jidlo.url!.endsWith("amount=")) ? "${jidlo.url}$pocetDoBurzy" : jidlo.url;
    if (finalUrl == null) throw Exception(CanteenLibExceptions.neplatneUrl);

    return "/faces/secured/$finalUrl";
  }
}
