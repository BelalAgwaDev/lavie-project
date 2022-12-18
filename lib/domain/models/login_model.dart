class LoginModel {
  String? type;
  String? message;
  DataModel? data;

  LoginModel(this.type, this.message, this.data);


}

class DataModel {
  UserModel? user;
  String? accessToken;
  String? refreshToken;

  DataModel(this.user, this.accessToken, this.refreshToken);


}

class UserModel {
  String? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? imageUrl;

  String? role;

  UserModel(
      this.userId,
        this.firstName,
        this.lastName,
        this.email,
        this.imageUrl,

        this.role);

}