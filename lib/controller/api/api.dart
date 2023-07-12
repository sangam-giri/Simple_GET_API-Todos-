import 'package:dio/dio.dart';
import '/model/todos_model.dart';

const String baseUrl = "https://jsonplaceholder.typicode.com";
const String todosApi = "/todos";

Future<List<TodoModel>> getTodos() async {
  Dio dio = Dio();
  Response res = await dio.get(baseUrl + todosApi);
  List<dynamic> data = res.data;
  return data.map((e) => TodoModel.fromJson(e)).toList();
}
