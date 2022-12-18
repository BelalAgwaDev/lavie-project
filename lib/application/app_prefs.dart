import 'package:shared_preferences/shared_preferences.dart';

const String prefsKeyOnBoardingScreenView = "PREFS_KEY_ONBOARD_SCREEN_VIEW";
const String prefsKeyIsUserLoggedIn = "PREFS_KEY_IS_USER_LOGGED_IN";

const String prefsKeyAccessToken = "PREFS_KEY_ACCESS_TOKEN";
const String prefsKeyName = "PREFS_KEY_NAME";
const String prefsKeyImage = "PREFS_KEY_IMAGE";
const String prefsKeyNationalId = "PREFS_KEY_NATIONAL_ID";
const String prefsKeyPhoneNumber = "PREFS_KEY_PHONE_NUMBER";
const String prefsKeyAddress = "PREFS_KEY_Address";

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);




  //login screen data

  Future<void> setLoginScreenView() async {
    _sharedPreferences.setBool(prefsKeyIsUserLoggedIn, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(prefsKeyIsUserLoggedIn) ?? false;
  }


}
