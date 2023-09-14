// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_user.freezed.dart';

@freezed
class LoginUser with _$LoginUser {
  factory LoginUser({
    required String id,
    required String name,
  }) = _LoginUser;
}