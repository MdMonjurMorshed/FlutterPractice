import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_post/repository/todo_repo.dart';

import '../../model/todo_model.dart';

class TodoControl extends GetxController {
  RxList<dynamic> dataList = [].obs;

  TodoRepo todoRepo = TodoRepo();

  Future<List<TodoModel>> fetchData() async {
    List<TodoModel> data = await todoRepo.getRequestData();
    dataList.value = data;
    return data;
  }
}
