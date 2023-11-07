import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:modul6/app/modules/views/todo_list_view.dart';

import 'package:modul6/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding
      .ensureInitialized(); // Ensure initialization

  // main(); // Start the app
  testWidgets('TodoList displays UI elements', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TodoList()));

    // Verify if the correct UI elements are displayed
    expect(find.text('Todo List'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
    expect(find.byType(ListTile), findsNothing); // No items initially
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
  testWidgets('TodoList adds and removes items', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: TodoList()));

    // Verify if the correct UI elements are displayed
    expect(find.byType(Dismissible), findsNothing); // No items initially

    // Add an item
    await tester.enterText(find.byType(TextField), 'Task 1');
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify if the item is added
    expect(find.byType(ListTile), findsOneWidget);
    expect(find.text('Task 1'), findsOneWidget);

    // Dismiss the item
    await tester.drag(find.byType(Dismissible), Offset(500.0, 0.0));
    await tester.pumpAndSettle();

    // Verify if the item is removed
    expect(find.byType(ListTile), findsNothing);
  });
}
