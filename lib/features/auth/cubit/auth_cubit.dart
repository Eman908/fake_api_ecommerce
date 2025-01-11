import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/auth/cubit/auth_state.dart';
import 'package:products_api/features/auth/data/services/auth_service.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  AuthData authData = AuthData();
  getAuthDataCubit(
      {required name,
      required email,
      required phone,
      required nationalId,
      required gender,
      required password,
      required token,
      required profileImage}) async {
    emit(AuthLoadingState());
    var user = await authData.getAuthPostData(
        name: name,
        email: email,
        phone: phone,
        nationalId: nationalId,
        gender: gender,
        password: password,
        token: token,
        profileImage: profileImage);
    emit(
      AuthSuccessState(userData: user),
    );
  }
}
