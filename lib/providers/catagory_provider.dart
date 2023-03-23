import 'package:flutter/foundation.dart';

class CategoryProvider with ChangeNotifier {
  final String id;
  final String title;
  final String imagUrl;

  CategoryProvider({
    required this.id,
    required this.title,
    required this.imagUrl,
  });
}

class CatagoryItem with ChangeNotifier {
  List<CategoryProvider> _items = [
    CategoryProvider(
      id: '101',
      title: 'Heart',
      imagUrl: 'https://cdn-icons-png.flaticon.com/512/1818/1818134.png',
    ),
    CategoryProvider(
      id: '102',
      title: 'Dental',
      imagUrl: 'https://cdn-icons-png.flaticon.com/512/1688/1688278.png',
    ),
    CategoryProvider(
      id: '103',
      title: 'Brain',
      imagUrl: 'https://cdn-icons-png.flaticon.com/512/1713/1713676.png',
    ),
    CategoryProvider(
      id: '104',
      title: 'See All',
      imagUrl: 'https://cdn-icons-png.flaticon.com/512/5996/5996522.png',
    ),
  ];

  List<CategoryProvider> get items {
    return [..._items];
  }
}
