import 'package:delivery_application/app_widget.dart';
import 'package:delivery_application/src/dependece/inject_dependeces.dart';
import 'package:flutter/cupertino.dart';

void main() {
  initInject();
  runApp(const AppWidget());
}
