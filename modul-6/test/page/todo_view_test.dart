import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modul6/app/modules/views/todo_view.dart';

void main() {
  testWidgets('TodoList UI elements', (WidgetTester tester) async {
    // Build the TodoList widget
    await tester.pumpWidget(TodoView());
    // Verify if the app title is displayed
    expect(find.text('Todo List'), findsOneWidget);
    // Verify if the TextField is displayed
    expect(find.byType(TextField), findsOneWidget);
    // Verify if the FloatingActionButton is displayed
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
  testWidgets('Adding and removing todos', (WidgetTester tester) async {
    // Build the TodoList widget
    await tester.pumpWidget(TodoView());
    // Add a todo
    await tester.enterText(find.byType(TextField), 'Test Todo');
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();
    // Verify if the added todo is displayed
    expect(find.text('Test Todo'), findsOneWidget);
    // Swipe to delete the todo
    await tester.drag(find.text('Test Todo'), const Offset(500.0, 0.0));
    await tester.pumpAndSettle();
    // Verify if the todo is removed
    expect(find.text('Test Todo'), findsNothing);
  });
}
