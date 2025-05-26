class Constants {
  /// Base URL หลักของ API
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';
  static const String baseImageUrl = 'https://dog.ceo/api/breeds/image';

  // ถ้ามี endpoint อื่นๆ ก็เก็บไว้ตรงนี้ได้เลย
  static const String usersPath = '/users';
  static const String userByIdPath = '/users/{id}';

  static const String randomImagePath = '/random';
}

class AppRoutes {
  AppRoutes._();
  static const home = RouteData(name: 'home', path: '/');
  static const buttonComponent = RouteData(name: 'button', path: '/button');
  static const textComponent = RouteData(name: 'text', path: '/text');
  static const layoutComponent = RouteData(name: 'layout', path: '/layout');
  static const displayComponent = RouteData(name: 'display', path: '/display');
  static const interactiveComponent = RouteData(
    name: 'interactive',
    path: '/interactive',
  );
  // List all your routes here
  static const listViewComponent = RouteData(
    name: 'listview',
    path: '/listview',
  );
  static const pageViewComponent = RouteData(
    name: 'pageview',
    path: '/pageview',
  );
  static const gridViewComponent = RouteData(
    name: 'gridview',
    path: '/gridview',
  );
}

class RouteData {
  final String name;
  final String path;
  const RouteData({required this.name, required this.path});
}
