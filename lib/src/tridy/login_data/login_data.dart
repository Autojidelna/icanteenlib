import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_data.freezed.dart';

@freezed
class LoginData with _$LoginData {
  const factory LoginData(
    String username,
    String password,
  ) = _LoginData;
}
