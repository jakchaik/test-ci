import 'package:realm/realm.dart';
import 'package:test_ci/schema/category_schema.dart';

part 'catalog_schema.g.dart';

@RealmModel()
class $Catalog {
  @PrimaryKey()
  late String id;

  late String make;

  late String model;

  int? kilometers = 500;

  late List<$Category> category = [];
}
