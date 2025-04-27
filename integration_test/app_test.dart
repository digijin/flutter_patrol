import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:pebl_patrol/main.dart'; // Import the main app

void main() {
  patrolTest(
    'counter increments smoke test',
    (PatrolIntegrationTester $) async {
      // Use the existing main.dart which includes the counter app
      await $.pumpWidgetAndSettle(const MyApp());

      // Verify that the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Tap the '+' icon and trigger a frame.
      await $.tap(find.byIcon(Icons.add));
      await $.pumpAndSettle();

      // Verify that the counter has incremented.
      expect(find.text('1'), findsOneWidget);
    },
  );
}
