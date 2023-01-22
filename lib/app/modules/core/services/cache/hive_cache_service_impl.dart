// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import '../interfaces/interfaces.dart';

class HiveCacheServiceImpl<Type> implements CacheService<Type> {
  HiveCacheServiceImpl();

  @override
  Future<void> register(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox(boxName);
    }
  }

  @override
  Future<Type> get(String boxKey, String key) {
    final box = Hive.box(boxKey);

    return (box.get(key));
  }

  @override
  Future<void> set(String boxKey, String key, Type value) async {
    final box = Hive.box(boxKey);
    await box.put(key, value);
  }

  @override
  Future<void> remove(String boxKey, String key) async {
    final box = Hive.box(boxKey);
    await box.delete(key);
  }

  @override
  Future<void> clear(String boxKey) async {
    final box = Hive.box(boxKey);
    await box.clear();
  }
}
