abstract class CacheService<Type> {
  Future<Type> get(String key);
  Future<void> set(String key, Type value);
  Future<void> remove(String key);
  Future<void> clear();
}
