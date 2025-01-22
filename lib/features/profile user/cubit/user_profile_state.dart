import 'package:products_api/features/profile%20user/data/models/user_profile_model.dart';

sealed class UserProfileState {}

final class UserProfileInitial extends UserProfileState {}

final class UserSuccessState extends UserProfileState {
  final UserProfileModelData userData;
  UserSuccessState({required this.userData});
}

final class UserLoadingState extends UserProfileState {}
