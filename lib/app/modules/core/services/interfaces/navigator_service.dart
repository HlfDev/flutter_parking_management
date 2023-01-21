abstract class NavigatorService {
  Future<void> push(String route, {Object arguments});
  Future<void> pushReplacement(String route, {Object arguments});
  void navigate(String route) {}
  void pop() {}
  void popUntil(String route) {}
}
