import 'dart:math';

import 'package:realm/realm.dart';
import 'package:test_ci/schema/catalog_schema.dart';
import 'package:test_ci/schema/category_schema.dart';

class TestRealmHelper {
  final String _chars = 'ABCDEF1234567890';
  final Random _rnd = Random();
  final String _realmPath = 'inMemoryRealmTest.realm';
  Realm? _realmInstance;
  Realm get realmInstance => _realmInstance ?? getInMemoryRealm();

  static final TestRealmHelper _instance = TestRealmHelper._();

  factory TestRealmHelper() {
    return _instance;
  }

  TestRealmHelper._();

  ObjectId getRandomObjectId() =>
      ObjectId.fromHexString(String.fromCharCodes(Iterable.generate(
          ObjectId.hexStringLength,
          (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length)))));

  Realm getInMemoryRealm() {
    return _realmInstance ??= Realm(Configuration.inMemory(
      [Catalog.schema, Category.schema],
      path: _realmPath,
    ));
  }

  void close() {
    if (_realmInstance != null && !(_realmInstance?.isClosed ?? false)) {
      _realmInstance?.close();
    }

    if (_realmInstance != null) {
      Realm.exists(_realmPath).then((value) {
        Realm.deleteRealm(_realmPath);
      });
    }

    _realmInstance = null;
  }
}
