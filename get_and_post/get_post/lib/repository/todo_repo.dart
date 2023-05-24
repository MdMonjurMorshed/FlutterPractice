import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_post/model/todo_model.dart';
import 'package:http/http.dart';

class TodoRepo {
  String uri = 'https://jsonplaceholder.typicode.com/todos';
  Future<List<TodoModel>> getRequestData() async {
    final respose = await get(Uri.parse(uri));
    if (respose.statusCode == 200) {
      final decode = json.decode(respose.body) as List;
      final result = decode.map((e) => TodoModel.fromJson(e)).toList();
      print(result);
      return result;
    }
    throw 'something went wrong';
  }

  Future<dynamic> postRequestData(List<TodoModel> data) async {
    final body = todoToJson(data);
    final response = await post(Uri.parse(uri), body: body);
    print(response);
    if (response.statusCode == 200) {
      print("data is submited successfully");
    }
  }
}
