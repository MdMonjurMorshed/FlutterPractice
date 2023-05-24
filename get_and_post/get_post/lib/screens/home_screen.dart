import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_post/controller/controle/controle_for_todo.dart';
import 'package:get_post/model/todo_model.dart';
import 'package:get_post/repository/todo_repo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static final controler = Get.find<TodoControl>();

  static final List<TodoModel> data_list = [];

  @override
  Widget build(BuildContext context) {
    controler.fetchData();
    print(controler.dataList);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
        ],
      ),
      body: ListView.builder(
          itemCount: controler.dataList.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Obx(
                    () => Text("${controler.dataList[index].titleInbuilt}")));
          }),
    );
  }
}
