import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/data/models/todo.dart';
import 'package:modul3/app/modules/todos/controllers/todo_controller.dart';

class TodoView extends GetView<TodoController> {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Todo'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<Todo>(
          future: controller.fetchTodos(),
          builder: (context, snapshot) {
            var state = snapshot.connectionState;
            if (state != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User ID: ${snapshot.data!.userId}",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ID: ${snapshot.data!.id}",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Title: ${snapshot.data!.title}",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Completed: ${snapshot.data!.completed}",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              } else {
                return const Text('');
              }
            }
          },
        ),
      ),
    );
  }
}

// class _TodoViewState extends State<TodoView> {
//   late Future<Todo> _futureTodos;
//   @override
//   void initState() {
//     super.initState();
//     _futureTodos = fetchTodos();
//   }

//   Future<Todo> fetchTodos() async {
//     final response = await http
//         .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
//     if (response.statusCode == 200) {
//       return Todo.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Fetch Data Todo'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: FutureBuilder<Todo>(
//           future: _futureTodos,
//           builder: (context, snapshot) {
//             var state = snapshot.connectionState;
//             if (state != ConnectionState.done) {
//               return const Center(child: CircularProgressIndicator());
//             } else {
//               if (snapshot.hasData) {
//                 return Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "User ID: ${snapshot.data!.userId}",
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "ID: ${snapshot.data!.id}",
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "Title: ${snapshot.data!.title}",
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "Completed: ${snapshot.data!.completed}",
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                     ],
//                   ),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(child: Text("${snapshot.error}"));
//               } else {
//                 return const Text('');
//               }
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
