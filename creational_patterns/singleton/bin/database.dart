class Database {
  static late final Database? _instanse;

  Database._();

  static Database getInstance() {
    _instanse ??= Database._();
    return _instanse!;
  }
}
