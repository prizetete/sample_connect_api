import 'package:injectable/injectable.dart';

abstract class ApiService {
  Future<String> fetchData();
}

@injectable
class RealApiService implements ApiService {
  @override
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 1));
    return 'Data from REAL API';
  }
}

@injectable
class TwoApiService implements ApiService {
  @override
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 1));
    return 'Data from REAL API';
  }
}
