import 'package:flutter/foundation.dart';

class FavouriteItemProvider with ChangeNotifier {
  List<int> _selecteditem = [];
  List<int> get selecteditem => _selecteditem;
  void additem(int index) {
    _selecteditem.add(index);
    notifyListeners();
  }

  void removeitem(int index) {
    _selecteditem.remove(index);
    notifyListeners();
  }
}
