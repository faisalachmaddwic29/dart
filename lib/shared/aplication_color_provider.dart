import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AplicationColor with ChangeNotifier {
  bool _isLightBlue = true;

  bool get isLightBlue {
    return _isLightBlue;
  }

  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners();
    // perintah ini berfungsi untuk memberitahukan pada widget widget yang lagi nunggu
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
