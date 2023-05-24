import 'dart:convert';

import 'package:flutter/material.dart';

List<TodoModel> todoFromJson(String str) => List<TodoModel>.from(
    json.decode(str).map((str) => TodoModel.fromJson(str)));

String todoToJson(List<TodoModel> data) =>
    json.encode(data.map((data) => data.toJson()));

class TodoModel {
  int? userIdIntuitive;
  int? idInherent;
  String? titleInbuilt;
  bool? completedSpontaneous;

  TodoModel(
      {this.userIdIntuitive,
      this.idInherent,
      this.titleInbuilt,
      this.completedSpontaneous});

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(
        userIdIntuitive: json['userId'],
        idInherent: json['id'],
        titleInbuilt: json['title'],
        completedSpontaneous: json['completed']);
  }

  Map<String, dynamic> toJson() {
    return {
      "userId": userIdIntuitive,
      "id": idInherent,
      "title": titleInbuilt,
      "completed": completedSpontaneous
    };
  }
}
