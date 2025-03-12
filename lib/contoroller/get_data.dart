import 'package:shared_preferences/shared_preferences.dart';

class GetData{

  String status = '';
  String email = '';

  Future<void> getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    print(email);
      email = pref.getString('email') ?? ''; // Handle null values safely
      status = pref.getString('status') ?? '';
  }

}