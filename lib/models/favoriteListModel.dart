class FavoriteListModel {
  static List<String> itemNames = [
    'Flutter nima?',
    'Foundation nima?',
    'Backend nima?',
    'Frontend nima?',
    'Bootsrap nima?',
    'Python nimalarga qodir?',
    'Java nimalarga qodir?',
    'JavaScript bu Javami?'
  ];

  static List<String> itemSubtitle = [
    'Abdulaziz Malikoff',
    'Abdulaziz Malikoff',
    'Yusuf Mahmudov',
    'Ibrohim Turaboyev',
    'Ibrohim Turaboyev',
    'Akbar Anvarov',
    'Yusuf Mahmudov',
    'Akbar Anvarov'
  ];
  static List<String> itemdate = [
    '42 dars/ 4 oy',
    '42 dars/ 4 oy',
    '42 dars/ 4 oy',
    '42 dars/ 4 oy',
    '42 dars/ 4 oy',
    '42 dars/ 4 oy',
    '42 dars/ 4 oy',
    '42 dars/ 4 oy'
  ];

  static List<String> itemImage = [
    ('assets/rasm1.jpg'),
    ('assets/rasm1.jpg'),
    ('assets/rasm1.jpg'),
    ('assets/rasm1.jpg'),
    ('assets/rasm1.jpg'),
    ('assets/rasm1.jpg'),
    ('assets/rasm1.jpg'),
    ('assets/rasm1.jpg'),
  ];

  Item getById(int id) => Item(
        id,
        itemNames[id % itemNames.length],
        itemSubtitle[id % itemSubtitle.length],
        itemdate[id % itemdate.length],
        itemImage[id % itemImage.length],
      );
  Item getByPosition(int position) {
    return getById(position);
  }
}

class Item {
  final int id;
  final String name;
  final String subtitle;
  final String date;
  final String image;

  const Item(this.id, this.name, this.subtitle, this.date, this.image);

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;
}
