import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/account_credentials.freezed.dart';

@freezed
sealed class AccountCredentials with _$AccountCredentials {
  const factory AccountCredentials(String username, String password) = _AccountCredentials;
}
