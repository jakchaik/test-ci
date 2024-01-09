// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Catalog extends $Catalog with RealmEntity, RealmObjectBase, RealmObject {
  static var _defaultsSet = false;

  Catalog(
    String id,
    String make,
    String model, {
    int? kilometers = 500,
    Iterable<Category> category = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObjectBase.setDefaults<Catalog>({
        'kilometers': 500,
      });
    }
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'make', make);
    RealmObjectBase.set(this, 'model', model);
    RealmObjectBase.set(this, 'kilometers', kilometers);
    RealmObjectBase.set<RealmList<Category>>(
        this, 'category', RealmList<Category>(category));
  }

  Catalog._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get make => RealmObjectBase.get<String>(this, 'make') as String;
  @override
  set make(String value) => RealmObjectBase.set(this, 'make', value);

  @override
  String get model => RealmObjectBase.get<String>(this, 'model') as String;
  @override
  set model(String value) => RealmObjectBase.set(this, 'model', value);

  @override
  int? get kilometers => RealmObjectBase.get<int>(this, 'kilometers') as int?;
  @override
  set kilometers(int? value) => RealmObjectBase.set(this, 'kilometers', value);

  @override
  RealmList<Category> get category =>
      RealmObjectBase.get<Category>(this, 'category') as RealmList<Category>;
  @override
  set category(covariant RealmList<Category> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Catalog>> get changes =>
      RealmObjectBase.getChanges<Catalog>(this);

  @override
  Catalog freeze() => RealmObjectBase.freezeObject<Catalog>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Catalog._);
    return const SchemaObject(ObjectType.realmObject, Catalog, 'Catalog', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('make', RealmPropertyType.string),
      SchemaProperty('model', RealmPropertyType.string),
      SchemaProperty('kilometers', RealmPropertyType.int, optional: true),
      SchemaProperty('category', RealmPropertyType.object,
          linkTarget: 'Category', collectionType: RealmCollectionType.list),
    ]);
  }
}
