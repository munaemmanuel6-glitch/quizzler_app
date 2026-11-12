import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:quizzler_app/main.dart';

void main() {
  testWidgets('Quizzler app loads first question and buttons', (WidgetTester tester) async {
    // Build our app and trigger a frame using Quizzler instead of MyApp
    await tester.pumpWidget(Quizzler());

    // Verify that the first question is displayed
    expect(find.text('You can lead a cow down stairs but not up stairs.'), findsOneWidget);

    // Verify that True and False buttons exist
    expect(find.text('True'), findsOneWidget);
    expect(find.text('False'), findsOneWidget);
  });
}
