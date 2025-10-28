import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/prihlasovaci_udaje.freezed.dart';

@freezed
sealed class PrihlasovaciUdaje with _$PrihlasovaciUdaje {
  const factory PrihlasovaciUdaje(String uzivatelskeJmeno, String heslo) = _PrihlasovaciUdaje;
}
