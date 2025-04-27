import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:pebl_patrol/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('trivial test', (WidgetTester tester) async {
    app.main(); // Run the app defined in main.dart
    await tester.pumpAndSettle();
    expect(find.text('Minimal App for Testing'),
        findsOneWidget); // Find the text from our minimal main.dart
  });
}
