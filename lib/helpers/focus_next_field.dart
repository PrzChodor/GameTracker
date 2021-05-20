import 'package:flutter/material.dart';

extension FocusNextField on FocusScopeNode {
  ///Focus next textField and skip all other focusable widgets (buttons etc.)
  void focusNextField() {
    do {
      this.nextFocus();
    } while (this.focusedChild?.context?.widget is! EditableText);
  }
}
