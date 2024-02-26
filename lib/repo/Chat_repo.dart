import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_ai_app/modele/ChatNassage model.dart';
import 'package:flutter_ai_app/utils/constants.dart';
import 'package:dio/browser.dart';
class  ChatRepo{
  static  chatTextGenerationRepo(List<ChatMassageModel> previousMassages)
      async{
    try{ Dio dio =Dio ();
    final repsonse =dio.post(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.0-pro-vision-latest:generateContent?key=$api_key",
        data : {
          "contents": previousMassages.map((e) => e.toJson()).toList() ,
          "generationConfig": {
            "temperature": 0.9,
            "topK": 1,
            "topP": 1,
            "maxOutputTokens": 2048,
            "stopSequences": []
          },
          "safetySettings": [
            {
              "category": "HARM_CATEGORY_HARASSMENT",
              "threshold": "BLOCK_MEDIUM_AND_ABOVE"
            },
            {
              "category": "HARM_CATEGORY_HATE_SPEECH",
              "threshold": "BLOCK_MEDIUM_AND_ABOVE"
            },
            {
              "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
              "threshold": "BLOCK_MEDIUM_AND_ABOVE"
            },
            {
              "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
              "threshold": "BLOCK_MEDIUM_AND_ABOVE"
            }
          ]
        }
    );
    log(repsonse.toString() as num);
    } catch(e){
      log(e.toString() as num );
    }
  } }