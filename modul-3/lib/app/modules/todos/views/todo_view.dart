import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul3/app/modules/todos/controllers/todo_controller.dart';

class TodoView extends GetView<TodoController> {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text('Fetch Data Todo'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(
          () {
            if (controller.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            } else if (controller.hasError.value) {
              return Center(
                  child: Text("Error: ${controller.errorMessage.value}"));
            } else if (controller.hasData.value) {
              final todo = controller.todo.value;
              return Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "User ID: ${todo.userId}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "ID: ${todo.id}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "Title: ${todo.title}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 20,
                        left: 20,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        "Completed: ${todo.completed}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Text('');
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