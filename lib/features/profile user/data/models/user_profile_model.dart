class UserProfileModel {
  final String nationalId;
  final String name;

  final String phone;
  final String email;
  final String profileImage;

  UserProfileModel(
      {required this.email,
      required this.name,
      required this.nationalId,
      required this.phone,
      required this.profileImage});

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      nationalId: json["nationalId"],
      profileImage: json["profileImage"],
    );
  }
}

class UserProfileModelData {
  final UserProfileModel userProfileModel;

  UserProfileModelData({required this.userProfileModel});

  factory UserProfileModelData.fromJson(Map<String, dynamic> json) {
    return UserProfileModelData(
      userProfileModel: UserProfileModel.fromJson(
        json["user"],
      ),
    );
  }
}
