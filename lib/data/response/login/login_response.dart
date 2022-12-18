import 'package:json_annotation/json_annotation.dart';




part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  Data? data;

  LoginResponse({this.type, this.message, this.data});
  //from json
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);


  }



@JsonSerializable()
class Data {
  @JsonKey(name: "user")
  User? user;
  @JsonKey(name: "accessToken")
  String? accessToken;
  @JsonKey(name: "refreshToken")
  String? refreshToken;

  Data({this.user, this.accessToken, this.refreshToken});


  //from json
  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$DataToJson(this);


}




@JsonSerializable()
class User {
  @JsonKey(name: "userId")
  String? userId;
  @JsonKey(name: "firstName")
  String? firstName;
  @JsonKey(name: "lastName")
  String? lastName;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "imageUrl")
  String? imageUrl;
  @JsonKey(name: "role")
  String? role;

  User(
      {this.userId,
        this.firstName,
        this.lastName,
        this.email,
        this.imageUrl,
        this.role});

  //from json
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  //to json
  Map<String, dynamic> toJson() => _$UserToJson(this);


}