import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sidata/main.dart';
import 'package:sidata/screens/survey_page.dart';
import 'package:sidata/screens/create_survey_page.dart';

void main() {
  testWidgets('SurveyPage contains text and button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that SurveyPage contains specific text.
    expect(find.text('Batas pengajuan survei yang kamu miliki:'), findsOneWidget);
    expect(find.text('1/1 kesempatan'), findsOneWidget);

    // Verify that SurveyPage contains the 'Buat Survei' button.
    expect(find.text('Buat Survei'), findsOneWidget);

    // Tap the 'Buat Survei' button and trigger a frame.
    await tester.tap(find.text('Buat Survei'));
    await tester.pumpAndSettle();

    // Verify that CreateSurveyPage is displayed.
    expect(find.text('Judul Survei'), findsOneWidget);
  });
}
