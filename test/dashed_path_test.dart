import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dashed_path/dashed_path.dart';

void main() {
  testWidgets('Test correct dash creation', (WidgetTester tester) async {
    await tester.pumpWidget(const _DashedPathExampleApp());
    await expectLater(find.byType(_DashedPathExampleApp),
        matchesGoldenFile('example_dashes.png'));
  });
}

class _DashedPathExampleApp extends StatelessWidget {
  const _DashedPathExampleApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashed Path Example App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 33, 34, 35),
      ),
      home: const _ExampleDashedPathPainter(),
    );
  }
}

class _ExampleDashedPathPainter extends StatelessWidget {
  const _ExampleDashedPathPainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              CustomPaint(
                painter: DashedPathPainter(
                  originalPath: Path()..lineTo(100, 0),
                  pathColor: Colors.red,
                  strokeWidth: 5.0,
                  dashGapLength: 10.0,
                  dashLength: 10.0,
                ),
                size: const Size(100.0, 2.0),
              ),
              const SizedBox(height: 50),
              CustomPaint(
                painter: DashedPathPainter(
                  originalPath: Path()
                    ..addOval(
                      const Rect.fromLTWH(0, 0, 100, 100),
                    ),
                  pathColor: Colors.white,
                ),
                size: const Size(100.0, 100.0),
              ),
              const SizedBox(height: 50),
              CustomPaint(
                painter: DashedPathPainter(
                  originalPath: Path()
                    ..addRect(
                      const Rect.fromLTWH(0, 0, 100, 100),
                    ),
                  pathColor: Colors.grey,
                  strokeWidth: 2.0,
                  dashLength: 25.0,
                ),
                size: const Size(100.0, 100.0),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
