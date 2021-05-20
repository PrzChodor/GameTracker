import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gametracker/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Allow only portrait mode
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(App()));
}
