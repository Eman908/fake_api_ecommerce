import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_api/features/profile%20user/cubit/user_profile_state.dart';
import 'package:products_api/features/profile%20user/data/services/user_profile_service.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit() : super(UserProfileInitial());
  UserProfileService userProfileService = UserProfileService();

  getUserProfileDataCubit() async {
    emit(UserLoadingState());
    var success = await userProfileService.getUserProfileData();
    emit(UserSuccessState(userData: success));
  }
}
