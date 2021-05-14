import 'package:flutter/material.dart';

extension FocusNextField on FocusScopeNode {
  void focusNextField() {
    do {
      this.nextFocus();
    } while (this.focusedChild?.context?.widget is! EditableText);
  }
}
