import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_post/controller/controle/controle_for_todo.dart';
import 'package:get_post/repository/todo_repo.dart';

class TodoBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<TodoControl>(() => TodoControl());
  }
}
