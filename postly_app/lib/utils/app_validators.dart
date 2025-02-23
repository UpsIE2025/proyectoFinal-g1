import 'package:flutter/material.dart';

class AppValidators {
  AppValidators._();

  static FormFieldValidator<String> requiredField() {
    return (v) {
      if (v == null || v.isEmpty) {
        return "* Este campo es obligatorio.";
      }
      return null;
    };
  }
}
