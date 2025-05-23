import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

// I give permission to use this api,since this project not commercial
const apiKey = 'AIzaSyBFId0llJBa6pdcZPOe8FI1DGCfC9hDAWs';
const url =
    'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$apiKey';

// AI with changed behaviour(Imitating character from game,chatBot)
Future<String?> chatBot(String character, String question) async {
  final body = {
    "contents": [
      {
        "role": "user",
        "parts": [
          {"text": question},
        ],
      },
    ],
    "systemInstruction": {
      "role": "system",
      "parts": [
        {"text": "You are $character from Uncharted 4:A Theif's End"},
      ],
    },

    "generationConfig": {"maxOutputTokens": 280, "frequencyPenalty": 1.0},
  };

  final response = await http.post(
    Uri.parse(url),
    headers: {"Content-Type": "application/json"},
    body: jsonEncode(body),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['candidates'][0]['content']['parts'][0]['text'];
  } else {
    log("Error: ${response.statusCode}");
    log(response.body);
    return '';
  }
}

// Request and responce from http(API)
Future<String?> sendMessage(String question) async {
  final body = {
    "contents": [
      {
        "role": "user",
        "parts": [
          {"text": question},
        ],
      },
    ],
    "generationConfig": {"maxOutputTokens": 250},
  };

  final response = await http.post(
    Uri.parse(url),
    headers: {"Content-Type": "application/json"},
    body: jsonEncode(body),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    return data['candidates'][0]['content']['parts'][0]['text'];
  } else {
    log("Error: ${response.statusCode}");
    log(response.body);
    return '';
  }
}
