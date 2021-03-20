import 'package:flutter/material.dart';

class User {
  final String email;
  final String password;

  final String error;
  final bool loading;

  const User({
    @required this.email,
    @required this.password,

    this.loading = false,
    this.error: ''

  });
}