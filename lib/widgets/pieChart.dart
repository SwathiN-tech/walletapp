import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_wallet_app/widgets/data.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: customShadow,
            color: primaryColor),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
              child: Container(
                height: 70,
                width: 70,
                child: Center(
                    child: Text(
                  "\$1234",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: customShadow,
                    color: primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // ignore: unused_local_variable
    Offset center = Offset(size.width / 2, size.height / 2);
    // ignore: unused_local_variable
    double radius = min(size.width / 2, size.height / 2);
    // ignore: unused_local_variable
    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    // ignore: unused_local_variable
    double total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });
    // ignore: unused_local_variable
    var startRadian = -pi / 2;
    for (int i = 0; i < expenses.length; i++) {
      // ignore: unused_local_variable
      var currentExpense = expenses[i];
      // ignore: unused_local_variable
      var sweepRadian = (currentExpense['amount'] / total * 2 * pi);
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
