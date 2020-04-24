import 'package:flutter_neumorphic/flutter_neumorphic.dart';

final kRadioButtonStyle = NeumorphicRadioStyle(
  shape: NeumorphicShape.concave,
  intensity: 0.5,
  unselectedDepth: 5.0,
  selectedDepth: -5.0,
);
final kButtonStyle = NeumorphicStyle(
  intensity: 0.5,
  shape: NeumorphicShape.concave,
  color: Color(0xFFbdbdbd),
  depth: 8.0,
  lightSource: LightSource.topLeft,
  surfaceIntensity: 0.5,
);
