import 'package:hive_flutter/hive_flutter.dart';

abstract class IStorageRepository {
  Future<T> getData<T>(String boxName, String key);
  Future<void> setData(String boxName, String key, dynamic value);
  Future<void> clearData(String boxName);
}

class StorageRepository extends IStorageRepository {
  StorageRepository();

  late final _hive = Hive;

  @override
  Future<T> getData<T>(String boxName, String key) async {
    final box = await _hive.openBox(boxName);
    final data = box.get(key);
    await box.close();
    return data;
  }

  @override
  Future<void> setData(String boxName, String key, dynamic value) async {
    final box = await _hive.openBox(boxName);
    await box.put(key, value);
    await box.close();
  }

  @override
  Future<void> clearData(String boxName) async {
    final box = await _hive.openBox(boxName);
    await box.clear();
    await box.close();
  }
}
