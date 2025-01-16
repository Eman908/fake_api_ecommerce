import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/core/bloc/bloc_observer.dart';
import 'package:products_api/run_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}
