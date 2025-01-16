import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/auth_login/cubit/login_state.dart';
import 'package:products_api/features/auth_login/data/services/login_service.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final LoginAuth dataLogin = LoginAuth();

  getLoginCubitData({required email, required password}) async {
    emit(LoginLoadingState());
    var loginSuccess =
        await dataLogin.getLoginAuthData(email: email, password: password);
    emit(LoginSuccessState(loginUserData: loginSuccess));
  }
}
