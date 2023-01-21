abstract class NavigatorService {
  Future push(String route, {Object arguments});
  Future pushReplacement(String route, {Object arguments});

  void pop() {}
  void popUntil(String route) {}
}
