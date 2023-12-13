import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modul6/app/modules/views/login_view.dart';

void main() {
  testWidgets('Login View UI elements', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginView()));

    expect(find.text('Login'), findsWidgets);

    expect(find.widgetWithText(TextField, 'Email'), findsOneWidget);

    expect(find.widgetWithText(TextField, 'Password'), findsOneWidget);

    expect(find.widgetWithText(ElevatedButton, 'Login'), findsOneWidget);
  });

  testWidgets('Entering credentials and tapping login button',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginView()));

    await tester.enterText(
        find.widgetWithText(TextField, 'Email'), 'test@example.com');

    await tester.enterText(
        find.widgetWithText(TextField, 'Password'), 'password123');

    await tester.tap(find.widgetWithText(ElevatedButton, 'Login'));

    await tester.pump();
  });
}
