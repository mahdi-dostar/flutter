// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Database _database;
List rows=[];
class LocalDB {
  Future get database async {
    if (_database != null) return _database;
    _database = await _initializeDB('Local.db');
    return _database;
  }

  Future _initializeDB(String filepath) async {
    final dbpath = await getDatabasesPath();
    final path = join(dbpath, filepath);
    return await openDatabase(path, version: 2,);
  }
}
  Future  _createDB(Database db,int version) async{
    await db.execute(
        '''
        CREATE TABLE book(
        id         INTEGER PRIMARY KEY,
        name      TEXT,
        email  TEXT,
        password    TEXT,
        )
      '''
    );
  }
  Future AddTime({name,email,password}) async{
    var database;
    final db= await database;
    await db.insert("football",{"name":name.text,"email":email.text,"password":password.text});
    return "Saved";
  }
  Future ReadTime() async{
    var database;
    final db = await database;
    final readAll= await db.query("football");
    rows=readAll;
    return "Read All Data";
  }
  Future UpdateTime({person,startTime,endTime,price,id}) async{

    var database;
    final db = await database;
    final updateRow=await db.rawUpdate("UPDATE football set person=?, startTime=?, endTime=?, price=? WHERE id=?",[person,startTime,endTime,price,id]);
    return updateRow;
  }
  Future DeleteTime({id}) async{
    var database;
    final db = await database;
    await db.delete("football",where:"id=?",whereArgs:[id]);
  }
