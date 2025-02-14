import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bajaj_security_app/main.dart';
import 'package:bajaj_security_app/screens/login_screen.dart';
import 'package:bajaj_security_app/screens/dashboard_screen.dart';
import 'package:bajaj_security_app/widgets/custom_button.dart';

void main() {
  testWidgets('Login navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the Login screen is shown initially.
    expect(find.byType(LoginScreen), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);

    // Enter text in the email and password fields.
    await tester.enterText(
        find.byType(TextFormField).at(0), 'user@example.com');
    await tester.enterText(find.byType(TextFormField).at(1), 'password123');

    // Tap the "Login" button.
    await tester.tap(find.byType(CustomButton));
    await tester.pumpAndSettle(); // Wait for navigation to finish.

    // Verify that the Dashboard screen is shown after login.
    expect(find.byType(DashboardScreen), findsOneWidget);
    expect(find.text('Latitude'),
        findsOneWidget); // Assuming the Dashboard shows latitude.
    expect(find.text('Longitude'),
        findsOneWidget); // Assuming the Dashboard shows longitude.
  });

  testWidgets('Login button exists and is clickable',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify the Login button exists.
    expect(find.byType(CustomButton), findsOneWidget);

    // Tap the Login button.
    await tester.tap(find.byType(CustomButton));
    await tester
        .pumpAndSettle(); // Wait for any possible navigation or animation.

    // Verify that the Login screen stays present after tapping.
    expect(find.byType(LoginScreen), findsOneWidget);
  });
}
