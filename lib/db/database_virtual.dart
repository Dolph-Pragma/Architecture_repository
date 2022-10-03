class DataBaseVirtual {
  int _counter = 0;

  static final DataBaseVirtual _db = DataBaseVirtual._privateConstructor();

  DataBaseVirtual._privateConstructor();

  factory DataBaseVirtual() {
    return _db;
  }

  Future<void> add() async {
    _counter++;
  }

  Future<void> clear() async {
    _counter = 0;
  }

  Future<int> getNumb() async {
    return _counter;
  }
}
