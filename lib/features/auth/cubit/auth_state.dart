sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSuccessState extends AuthState {
  final dynamic userData;
  AuthSuccessState({required this.userData});
}

final class AuthFailuerState extends AuthState {
  final String error;
  AuthFailuerState({required this.error});
}

final class AuthLoadingState extends AuthState {}

final class ChooseImage extends AuthState {}
