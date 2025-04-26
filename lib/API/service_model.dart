import 'package:flutter_gemini/flutter_gemini.dart';

class ApiService{
  static Future<String> sendMessage({required String message}) async{
    try{
      String temp = '';
     final gemini = Gemini.instance;
      gemini.prompt(parts: [
      Part.text(message),
      ]).then((value)
        {
         temp = value?.output ?? " ";
        });

      return temp;
    }catch(error)
    {
          print("error: $error");
          rethrow;
    }
  }
}