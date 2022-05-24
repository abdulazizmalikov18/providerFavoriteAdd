import 'package:flutter/cupertino.dart';
import 'package:provideraddfavorite/models/favoriteListModel.dart';

class FavoritePageModel extends ChangeNotifier {
  late FavoriteListModel _favoriteList;

  final List<int> _itemIds = [];

  FavoriteListModel get favoritelist => _favoriteList;

  set favoritelist(FavoriteListModel newList) {
    _favoriteList = newList;
    notifyListeners();
  }

  List<Item> get item =>
      _itemIds.map((id) => _favoriteList.getById(id)).toList();

  void add(Item item) {
    _itemIds.add(item.id);
    notifyListeners();
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
    notifyListeners();
  }
}
