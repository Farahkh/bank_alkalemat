import 'package:flutter_neumorphic/flutter_neumorphic.dart';

NeumorphicRadioStyle kRadioButtonStyle(BuildContext context) {
  return NeumorphicRadioStyle(
    shape: NeumorphicShape.concave,

    selectedColor: NeumorphicTheme.accentColor(context),
    intensity: 0.8,
    border: NeumorphicBorder(color: Color(0xFFBDBEBF), isEnabled: true),
  );
}
