import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CountProvider with ChangeNotifier {
  int _count = 50;
  int get count => _count;
  void setcount() {
    _count++;
    notifyListeners();
  }
}
