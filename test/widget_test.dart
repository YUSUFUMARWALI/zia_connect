import 'package:flutter_test/flutter_test.dart';
import 'package:zia_connect/main.dart';

void main() {
  testWidgets('ZIA Connect app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const ZiaConnectApp());

    expect(find.text('ZIA Connect'), findsOneWidget);
  });
}
