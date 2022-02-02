import 'dart:io';

import 'package:path/path.dart';
import 'package:qr_aft/models/Activo.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DBProvider {

  static Database? _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database?> get database async {

    if ( _database != null ) return _database;

    _database = await initDB();

    return _database;
  }

  initDB() async {

    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join( documentsDirectory.path, "ActivosDB.db" );
    //sawait deleteDatabase(path);
    return await openDatabase(
        path,
        version: 1,
        onOpen: (db) {},
        onCreate: (Database db, int version) async{
          await db.execute(
              'CREATE TABLE local  (id INTEGER , codigo TEXT PRIMARY KEY, nombre Text);'
          );
          await db.execute(
              'CREATE TABLE activo (id INTEGER PRIMARY KEY  , area_local references local(codigo),'
              'codigo TEXT,descripcion TEXT,valor REAL, valorReposicion REAL);'
          );
        }
    );
  }

  //Insert
  nuevoActivo ( Activo nuevoActivo ) async {

    final db = await database;
    print(db.toString());
    final res = await db!.insert('activo', nuevoActivo.toJson());
    return res;

  }

  //Select
  Future<List<Activo>> getTodosAtivos () async{

    final db = await database;
    final res = await db!.query('activo');

    List<Activo> list =  res.isNotEmpty
                            ? res.map((e) => Activo.fromJson(e)).toList()
                            : [];
    print(list.length);
    return list;
  }


}