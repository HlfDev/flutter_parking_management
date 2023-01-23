// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import '../interfaces/interfaces.dart';

class HiveCacheServiceImpl implements CacheService {
  HiveCacheServiceImpl();

  @override
  Future<void> register<Type>(String boxName) async {
    if (!Hive.isBoxOpen(boxName)) {
      await Hive.openBox<Type>(boxName);
    }
  }

  @override
  dynamic get<Type>(String boxKey, String key) {
    final box = Hive.box<Type>(boxKey);

    return (box.get(key));
  }

  @override
  Future<List<Type>> getAll<Type>(String boxKey) async {
    final box = Hive.box<Type>(boxKey);

    return box.values.toList();
  }

  @override
  Future<void> set<Type>(String boxKey, String key, dynamic value) async {
    final box = Hive.box<Type>(boxKey);

    await box.put(key, value);
  }

  @override
  Future<void> remove<Type>(String boxKey, String key) async {
    final box = Hive.box<Type>(boxKey);

    await box.delete(key);
  }

  @override
  Future<void> clear<Type>(String boxKey) async {
    final box = Hive.box<Type>(boxKey);
    await box.clear();
  }
}
