import 'package:icanteenlib/src/base_canteen.dart';

final Map<String, Function(String, String)> canteenVersions = {
  '2.16.15': (url, webWerze) => Canteen2v16v15(url, webWerze),
  '2.18.03': (url, webWerze) => Canteen2v18v03(url, webWerze),
};
