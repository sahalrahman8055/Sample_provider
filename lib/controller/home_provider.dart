import 'package:flutter/material.dart';
import 'package:multi_color_provider/helper/color.dart';

class homeProvider extends ChangeNotifier {
  dynamic color = kGreyColor;

  void updateColor(dynamic colors) {
    color = colors;
    notifyListeners();
  }
}
