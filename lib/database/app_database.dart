import 'package:masterbank/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() {
  // Retorna o banco de dados para poder ser usado na aplicação
  return getDatabasesPath().then((dbPath) {
    // Definindo o caminho do arquivo para a Database local.
    // OBS: O caminho é criando automaticamente pelos pacotes, você só precisa definir i nome do arquivo que irá guardar seu banco de dados... Sempre use a extenção ".db"
    final String path = join(dbPath, 'masterbank.db');
    return openDatabase(
      path,
      onCreate: (db, version) => {
        // Criando uma tabela no banco de dados local
        db.execute('CREATE TABLE contacts('
            'id INTEGER PRIMARY KEY, '
            'account_name TEXT, '
            'account_number INTEGER)')
      },
      // Definindo a versão do banco de dados local
      version: 1,
    );
  });
}

Future<int> save(Contact contact) {
  // Retorna o ID
  return createDatabase().then((db) {
    // Mapa para definir os valores que seram guardados no banco de dados local
    final Map<String, dynamic> contactMap = {};
    // O campo "id" foi omitido pois o sqlite irá gerar números inteiros random para ele já que é a chave primária
    contactMap['account_name'] = contact.accountName;
    contactMap['account_number'] = contact.accountNumber;
    // Inserir valores na tabela "contacts"
    return db.insert('contacts', contactMap);
  });
}

Future<List<Contact>> findAll() {
  // Retorna a lista de contatos
  return createDatabase().then((db) {
    // Busca todos os dados da tabela "contacts"
    return db.query('contacts').then((maps) {
      final List<Contact> contacts = [];

      for (Map<String, dynamic> map in maps) {
        final Contact contact = Contact(
          map['id'],
          map['account_name'],
          map['account_number'],
        );
        contacts.add(contact);
      }

      return contacts;
    });
  });
}
