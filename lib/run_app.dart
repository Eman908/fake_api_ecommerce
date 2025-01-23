import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';
import 'package:products_api/features/auth_login/cubit/login_cubit.dart';
import 'package:products_api/features/auth_login/view/screen/login_screen.dart';
import 'package:products_api/features/cart/cubit/cart_cubit.dart';
import 'package:products_api/features/favorite/cubit/favorite_cubit.dart';
import 'package:products_api/features/products/cubit/product_cubit.dart';
import 'package:products_api/features/profile%20user/cubit/user_profile_cubit.dart';
//import 'package:products_api/features/splash/view/screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginCubit(),
          ),
          BlocProvider(
            create: (context) => AuthCubit(),
          ),
          BlocProvider(
            create: (context) => UserProfileCubit()..getUserProfileDataCubit(),
          ),
          BlocProvider(
            create: (context) => ProductCubit()..getProductDataCubit(),
          ),
          BlocProvider(
            create: (context) => CartCubit()..getAllProductsCubit(),
          ),
          BlocProvider(
            create: (context) => FavoriteCubit()..getAllFav(),
          )
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        ),
      ),
    );
  }
}
