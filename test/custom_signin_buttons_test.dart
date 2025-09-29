import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:custom_signin_buttons/custom_signin_buttons.dart';

void main() {
  group('CustomSignInButton Border Tests', () {
    testWidgets('should render button without border by default', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomSignInButton(
              text: 'Test Button',
            ),
          ),
        ),
      );

      final containerFinder = find.byType(Container);
      expect(containerFinder, findsWidgets);
      
      final Container container = tester.widget(containerFinder.first);
      final BoxDecoration decoration = container.decoration as BoxDecoration;
      expect(decoration.border, isNull);
    });

    testWidgets('should render button with border when showBorder is true', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomSignInButton(
              text: 'Test Button',
              borderColor: Colors.red,
              borderWidth: 2.0,
            ),
          ),
        ),
      );

      final containerFinder = find.byType(Container);
      expect(containerFinder, findsWidgets);
      
      final Container container = tester.widget(containerFinder.first);
      final BoxDecoration decoration = container.decoration as BoxDecoration;
      expect(decoration.border, isNotNull);
      expect(decoration.border, isA<Border>());
      
      final Border border = decoration.border as Border;
      expect(border.top.color, Colors.red);
      expect(border.top.width, 2.0);
    });

    testWidgets('should render button with gradient and border', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomSignInButton(
              text: 'Test Button',
              useGradient: true,
              setGradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
              borderColor: Colors.green,
              borderWidth: 3.0,
            ),
          ),
        ),
      );

      final containerFinder = find.byType(Container);
      expect(containerFinder, findsWidgets);
      
      final Container container = tester.widget(containerFinder.first);
      final BoxDecoration decoration = container.decoration as BoxDecoration;
      
      expect(decoration.gradient, isNotNull);
      expect(decoration.border, isNotNull);
      
      final Border border = decoration.border as Border;
      expect(border.top.color, Colors.green);
      expect(border.top.width, 3.0);
    });
  });
}
