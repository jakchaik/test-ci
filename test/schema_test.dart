import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:realm/realm.dart';
import 'package:test_ci/schema/catalog_schema.dart';
import 'package:test_ci/schema/category_schema.dart';

import 'helper/test_realm_helper.dart';

void main() {
  late Realm realm;

  setUpAll(() {
    realm = TestRealmHelper().getInMemoryRealm();
  });

  tearDownAll(() {
    TestRealmHelper().close();
  });

  test('test name', () {
    final String categoryId = TestRealmHelper().getRandomObjectId().toString();

    Catalog catalog = Catalog(
      categoryId,
      'make',
      'model',
      category: [
        Category(
          'name',
        ),
      ],
    );

    realm.write(() {
      realm.add(catalog);
    });

    final expectedResult = realm.find<Catalog>(categoryId);

    expect(catalog, expectedResult);
  });
}
