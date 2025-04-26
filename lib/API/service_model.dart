import 'package:flutter_gemini/flutter_gemini.dart';

String temp = '';
class ApiService{

  static Future<String> sendMessage({required String message}) async{
    try{
     final gemini = Gemini.instance;
      gemini.prompt(parts: [
            Part.text(message),
            ]).then((value) {
             temp += value?.output ?? "NIGER";
            });

      return temp;
    }catch(error)
    {
          print("error: $error");
          return '';
    }
  }
}