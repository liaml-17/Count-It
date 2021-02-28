import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

@DataClassName('Activity')
class Activities extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get description => text()();
  DateTimeColumn get date => dateTime().nullable()();
  IntColumn get count => integer()();

  @override
  Set<Column> get primaryKey => {id, date};
}

@UseMoor(tables: [Activity])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super((FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true)));

  @override
  int get schemaVersion => 1;

  Future<List<Activity>> getAllActivities() => select(activity).get();
  Future insertAct(Activity act) => into(activity).insert(act);
  Future updatetAct(Activity act) => update(activity).replace(act);
  Future deleteAct(Activity act) => delete(activity).delete(act);
}
