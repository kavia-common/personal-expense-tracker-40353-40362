import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_flutter/main.dart';

void main() {
  testWidgets('App renders SmartSpender root with tabs', (WidgetTester tester) async {
    await tester.pumpWidget(const SmartSpenderApp());

    // Verify bottom navigation exists
    expect(find.byIcon(Icons.home_outlined), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Add'), findsOneWidget);
    expect(find.text('Transactions'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });

  testWidgets('Home screen shows key KPI labels', (WidgetTester tester) async {
    await tester.pumpWidget(const SmartSpenderApp());
    await tester.pumpAndSettle();

    expect(find.text('SmartSpender'), findsOneWidget);
    expect(find.text('Total Balance'), findsOneWidget);
    expect(find.text('Income'), findsOneWidget);
    expect(find.text('Expenses'), findsOneWidget);
  });
}
