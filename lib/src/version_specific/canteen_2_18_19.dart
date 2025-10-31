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

  String _buildCookieHeader() {
    final StringBuffer buf = StringBuffer();
    buf.write("JSESSIONID=${_cookies["JSESSIONID"]!}; ");
    buf.write("XSRF-TOKEN=${_cookies["XSRF-TOKEN"]!}; ");
    if (_cookies.containsKey("remember-me")) buf.write("${_cookies["remember-me"]!};");

    return buf.toString().trim();
  }

  @override
  Future<void> _firstSessionCheck() async {
    if (_cookies["JSESSIONID"] == "" || _cookies["XSRF-TOKEN"] == "") {
      try {
        await $getFirstSession(url, _cookies);
      } catch (e) {
        rethrow;
      }
    }
  }

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
  Future<String> _strankaSpecifickyJidelnicekRequest(DateTime datum) {
    return $getRequest(
      url,
      "/faces/secured/main.jsp?day=${datum.year}-${(datum.month < 10) ? "0${datum.month}" : datum.month}-${(datum.day < 10) ? "0${datum.day}" : datum.day}&terminal=false&printer=false&keyboard=false",
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
