import 'package:icanteenlib/src/base_canteen.dart';

final Map<String, Function(String, String)> canteenVersions = {
  //'2.10.27': (url, webWerze) => Canteen2v10v27(url, webWerze),
  '2.16.15': (url, webWerze) => Canteen2v16v15(url, webWerze),
  '2.18.03': (url, webWerze) => Canteen2v18v03(url, webWerze),
  '2.18.19': (url, webWerze) => Canteen2v18v19(url, webWerze),
  '2.19.13': (url, webWerze) => Canteen2v19v13(url, webWerze),
  '2.20.13': (url, webWerze) => Canteen2v20v13(url, webWerze),
};
