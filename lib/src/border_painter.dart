import 'package:flutter/material.dart';
import 'dart:math' as math;

///
/// Class to Paint the Animated Loading Border
///
class BorderPainter extends CustomPainter {
  /// Animation of the AnimationController
  final Animation animation;

  /// Corner radius of the border
  final double cornerRadius;

  /// Width of the border
  final double borderWidth;

  /// Color of the border
  final Color borderColor;

  /// Color for the trailing part of the border
  final Color trailingBorderColor;

  /// Used to set starting color of SweepGradient
  final bool isTrailingTransparent;

  /// Starting position used in SweepGradient
  final int startingPosition;

  BorderPainter({
    required this.animation,
    required this.cornerRadius,
    required this.borderWidth,
    required this.borderColor,
    required this.trailingBorderColor,
    required this.isTrailingTransparent,
    required this.startingPosition,
  }) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    /// Painting the border
    final rect = Offset.zero & size;
    final paint = Paint()..color = Colors.transparent;
    final progress = animation.value;

    if (progress > 0.0) {
      paint.color = trailingBorderColor;
      paint.shader = SweepGradient(
        colors: [
          isTrailingTransparent
              ? Colors.transparent
              : borderColor.withOpacity(0.1),
          borderColor,
          Colors.transparent,
        ],
        stops: const [
          0.0,
          1.0,
          1.0,
        ],
        startAngle: math.pi / 8,
        endAngle: math.pi / 2,
        transform: GradientRotation(
          (math.pi * 2 * progress) + startingPosition,
        ),
      ).createShader(rect);
    }

    var rRect = RRect.fromRectAndRadius(
      rect,
      Radius.circular(cornerRadius),
    );

    final path = Path()..addRRect(rRect);

    canvas.drawRRect(
      rRect,
      paint
        ..strokeWidth = borderWidth
        ..style = PaintingStyle.stroke
        ..strokeCap = StrokeCap.round,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => true;
}
