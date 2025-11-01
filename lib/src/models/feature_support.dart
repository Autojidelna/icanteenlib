import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/feature_support.freezed.dart';
part 'generated/feature_support.g.dart';

enum Features {
  // Pomocná stránka
  help,

  /// burza
  burza,

  // Hodnocení jídel
  hodnoceni,

  /// Získat informace o jídelníčku zvěřejněném na webu bez nutnosti přihlášení
  verejnyJidelnicek,

  /// Získat informace o jídelníčku zvěřejněném na webu s nutností přihlášení + objednání obědů
  specifickyJidelnicek,

  // Vsechny jidelnicky ziskane z mobilniho rozhrani
  vsechnyJidelnicky,

  /// alergeny
  alergeny,

  /// Získat informace o přihlášeném uživateli
  uzivatelskeUdaje,

  // Možnost objednat více kusů jídla
  objednavatViceJidel,

  // Podpora pro výce jazyků
  viceJazycnost,

  /// zda má test očekávat vícero výdejen
  viceVydejen,
}

/// Reprezentuje dostupnost funkcí
@Freezed(makeCollectionsUnmodifiable: false)
abstract class FeatureSupport with _$FeatureSupport {
  factory FeatureSupport({
    /// Funkce nepodporované touto knihovnou
    @JsonKey(name: 'missing_in_code') @Default({}) Set<Features> missingInCode,

    /// Funkce nepodporované instancí iCanteenu
    @JsonKey(name: 'unsupported_by_canteen') @Default({}) Set<Features> unsupportedByCanteen,
  }) = _FeatureSupport;

  factory FeatureSupport.fromJson(Map<String, Object?> json) => _$FeatureSupportFromJson(json);
}

extension FeatureSupportX on FeatureSupport {
  /// Zkontroluje, jestli je funkce dostupná
  bool isAvailable(Features feature) => !missingInCode.contains(feature) && !unsupportedByCanteen.contains(feature);

  /// Zkontroluje, jestli je funkce implementovaná v knihovně
  bool isImplemented(Features feature) => !missingInCode.contains(feature);

  /// Zkontroluje, jestli je funkce podporovaná instancí iCanteenu
  bool isSupported(Features feature) => !unsupportedByCanteen.contains(feature);
}
