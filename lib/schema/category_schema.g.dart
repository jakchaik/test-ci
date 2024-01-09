// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Category extends $Category
    with RealmEntity, RealmObjectBase, RealmObject {
  Category(
    String name,
  ) {
    RealmObjectBase.set(this, 'name', name);
  }

  Category._();

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Category>> get changes =>
      RealmObjectBase.getChanges<Category>(this);

  @override
  Category freeze() => RealmObjectBase.freezeObject<Category>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Category._);
    return const SchemaObject(ObjectType.realmObject, Category, 'Category', [
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }
}
