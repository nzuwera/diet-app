import 'package:diet_app/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FloatingActionButton should be present', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    // Check if the FloatingActionButton exists
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Clicking the Add button shows an AlertDialog', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    // Tap the FloatingActionButton
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    // Check if AlertDialog appears
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text("Feature coming soon..."), findsOneWidget);
  });
}
