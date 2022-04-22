import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void createDatabase() {
  getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'masterbank.db');
    openDatabase(
      path,
      onCreate: (db, version) => {
        db.execute('CREATE TABLE contacts('
            'id INTEGER PRIMARY KEY, '
            'account_name TEXT, '
            'account_number INTEGER)')
      },
      version: 1,
    );
  });
}
