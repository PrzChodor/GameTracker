import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gametracker/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(App()));
}
