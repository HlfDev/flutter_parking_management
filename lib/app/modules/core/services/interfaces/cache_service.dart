abstract class CacheService<Type> {
  Future<void> register(String boxName);
  Future<Type> get(String boxKey, String key);
  Future<void> set(String boxKey, String key, Type value);
  Future<void> remove(String boxKey, String key);
  Future<void> clear(String boxKey);
}
