class KatigoriyaModel {
  final int id;
  final String name;
  final List top;

  KatigoriyaModel(this.id, this.name, this.top);
}

class KategoriyList {
  final String coursName;
  final String coursTicher;
  final String darsSoni;
  final String darsmuddati;

  KategoriyList(
    this.coursName,
    this.coursTicher,
    this.darsSoni,
    this.darsmuddati,
  );
}

List<KatigoriyaModel> kategoriyModelList = [
  KatigoriyaModel(
    0,
    "All",
    [
      KategoriyList("Flutter Botcamp", "Saud AbdulWahid", "64", "4"),
      KategoriyList("Beckend", "Saud AbdulWahid", "34", "2"),
      KategoriyList("Web Dizayn", "Mahmudjon", "45", "3"),
      KategoriyList("FrontEnd", "Saud AbdulWahid", "64", "4"),
    ],
  ),
  KatigoriyaModel(
    1,
    "Flutter",
    [
      KategoriyList("Flutter Botcamp", "Saud AbdulWahid", "64", "4"),
    ],
  ),
  KatigoriyaModel(
    2,
    "Web Dizayn",
    [
      KategoriyList("Web Dizayn", "Mahmudjon", "45", "3"),
    ],
  ),
  KatigoriyaModel(
    3,
    "Beckend",
    [
      KategoriyList("Beckend", "Saud AbdulWahid", "34", "2"),
    ],
  ),
  KatigoriyaModel(
    4,
    "FrontEnd",
    [
      KategoriyList("FrontEnd", "Saud AbdulWahid", "64", "4"),
    ],
  ),
];
