// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Activity extends DataClass implements Insertable<Activity> {
  final int id;
  final String name;
  final String description;
  final DateTime date;
  final int count;
  Activity(
      {@required this.id,
      @required this.name,
      @required this.description,
      this.date,
      @required this.count});
  factory Activity.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Activity(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      date:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      count: intType.mapFromDatabaseResponse(data['${effectivePrefix}count']),
    );
  }
  factory Activity.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Activity(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      date: serializer.fromJson<DateTime>(json['date']),
      count: serializer.fromJson<int>(json['count']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'date': serializer.toJson<DateTime>(date),
      'count': serializer.toJson<int>(count),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Activity>>(bool nullToAbsent) {
    return ActivityCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      count:
          count == null && nullToAbsent ? const Value.absent() : Value(count),
    ) as T;
  }

  Activity copyWith(
          {int id,
          String name,
          String description,
          DateTime date,
          int count}) =>
      Activity(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        date: date ?? this.date,
        count: count ?? this.count,
      );
  @override
  String toString() {
    return (StringBuffer('Activity(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('date: $date, ')
          ..write('count: $count')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(name.hashCode,
          $mrjc(description.hashCode, $mrjc(date.hashCode, count.hashCode)))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Activity &&
          other.id == id &&
          other.name == name &&
          other.description == description &&
          other.date == date &&
          other.count == count);
}

class ActivityCompanion extends UpdateCompanion<Activity> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> date;
  final Value<int> count;
  const ActivityCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.date = const Value.absent(),
    this.count = const Value.absent(),
  });
  ActivityCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> description,
      Value<DateTime> date,
      Value<int> count}) {
    return ActivityCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      date: date ?? this.date,
      count: count ?? this.count,
    );
  }
}

class $ActivitiesTable extends Activities
    with TableInfo<$ActivitiesTable, Activity> {
  final GeneratedDatabase _db;
  final String _alias;
  $ActivitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 100);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedDateTimeColumn _date;
  @override
  GeneratedDateTimeColumn get date => _date ??= _constructDate();
  GeneratedDateTimeColumn _constructDate() {
    return GeneratedDateTimeColumn(
      'date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _countMeta = const VerificationMeta('count');
  GeneratedIntColumn _count;
  @override
  GeneratedIntColumn get count => _count ??= _constructCount();
  GeneratedIntColumn _constructCount() {
    return GeneratedIntColumn(
      'count',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, description, date, count];
  @override
  $ActivitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'activity';
  @override
  final String actualTableName = 'activity';
  @override
  VerificationContext validateIntegrity(ActivityCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (description.isRequired && isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.date.present) {
      context.handle(
          _dateMeta, date.isAcceptableValue(d.date.value, _dateMeta));
    } else if (date.isRequired && isInserting) {
      context.missing(_dateMeta);
    }
    if (d.count.present) {
      context.handle(
          _countMeta, count.isAcceptableValue(d.count.value, _countMeta));
    } else if (count.isRequired && isInserting) {
      context.missing(_countMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, date};
  @override
  Activity map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Activity.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ActivityCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.date.present) {
      map['date'] = Variable<DateTime, DateTimeType>(d.date.value);
    }
    if (d.count.present) {
      map['count'] = Variable<int, IntType>(d.count.value);
    }
    return map;
  }

  @override
  $ActivitiesTable createAlias(String alias) {
    return $ActivitiesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $ActivitiesTable _activity;
  $ActivitiesTable get activity => _activity ??= $ActivitiesTable(this);
  @override
  List<TableInfo> get allTables => [activity];
}
