import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/feature_support.freezed.dart';
part 'generated/feature_support.g.dart';

enum Features {
  /// zda má test očekávat vícero výdejen
  vydejny,

  /// Získat informace o přihlášeném uživateli
  uzivatelskeUdaje,

  /// Získat informace o jídelníčku zvěřejněném na webu bez nutnosti přihlášení
  verejnyJidelnicek,

  /// Získat informace o jídelníčku zvěřejněném na webu s nutností přihlášení + objednání obědů
  jidelnicekDen,

  // Vsechny jidelnicky ziskane z mobilniho rozhrani
  vsechnyJidelnicky,

  /// burza
  burza,

  // dát počet jídel na burzu
  burzaAmount,

  /// alergeny
  alergeny,
}

/// Reprezentuje dostupnost funkcí
@freezed
sealed class FeatureSupport with _$FeatureSupport {
  const factory FeatureSupport({
    /// Funkce nepodporované touto knihovnou
    @Default([]) List<Features> missingInCode,

    /// Funkce nepodporované instancí iCanteenu
    @Default([]) List<Features> unsupportedByCanteen,
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
