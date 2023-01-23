abstract class CacheService {
  Future<void> register<Type>(String boxName);
  dynamic get<Type>(String boxKey, String key);
  Future<List<Type>> getAll<Type>(String boxKey);
  Future<void> set<Type>(String boxKey, String key, dynamic value);
  Future<void> remove<Type>(String boxKey, String key);
  Future<void> clear<Type>(String boxKey);
}
