import 'package:hive_flutter/hive_flutter.dart';

import 'constants.dart';

abstract class IStorageRepository {
  Future<T> getData<T>(String key);
  Future<void> setData<T>(String key, T value);
  Future<void> clearData();
}

class StorageRepository extends IStorageRepository {
  final _boxName = AppConstants.authBoxName;

  final _hive = Hive;

  @override
  Future<T> getData<T>(String key) async {
    final box = await _hive.openBox(_boxName);
    final data = box.get(key);
    await box.close();
    return data;
  }

  @override
  Future<void> setData<T>(String key, T value) async {
    final box = await _hive.openBox(_boxName);
    await box.put(key, value);
    await box.close();
  }

  @override
  Future<void> clearData() async {
    final box = await _hive.openBox(_boxName);
    await box.clear();
    await box.close();
  }
}
