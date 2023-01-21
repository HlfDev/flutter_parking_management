// Package imports:
import 'package:hive/hive.dart';

// Project imports:
import '../interfaces/interfaces.dart';

class HiveCacheServiceImpl<Type> implements CacheService<Type> {
  final Box<Type> _box;

  HiveCacheServiceImpl(this._box);

  @override
  Future<Type> get(String key) async {
    return (_box.get(key)) as Type;
  }

  @override
  Future<void> set(String key, Type value) async {
    await _box.put(key, value);
  }

  @override
  Future<void> remove(String key) async {
    await _box.delete(key);
  }

  @override
  Future<void> clear() async {
    await _box.clear();
  }
}
