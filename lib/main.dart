import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/core/bloc/bloc_observer.dart';
import 'package:products_api/features/auth_login/data/model/login_info_list.dart';
import 'package:products_api/run_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CashToken.init();
  Bloc.observer = MyBlocObserver();
  runApp(
    const MyApp(),
  );
}
