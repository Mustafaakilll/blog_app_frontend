import 'package:hive_flutter/hive_flutter.dart';

abstract class IStorageRepository {
  void init();
  Future<dynamic> getData(String boxName, String key);
  Future<void> setData(String boxName, String key, String value);
}

class StorageRepository extends IStorageRepository {
  StorageRepository() {
    init();
  }

  late final _hive = Hive;

  @override
  void init() {
    _hive.initFlutter();
  }

  @override
  Future<dynamic> getData(String boxName, String key) async {
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
}
