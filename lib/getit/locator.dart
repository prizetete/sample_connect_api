import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'locator.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();


/*
  **add dependencies to pubspec.yaml
  
  build_runner:
  injectable_generator: 

  **run every time you add a new injectable class, this command will generate the locator.config.dart file
  ** file api_service.dart just for create a class to test the injectable

  flutter pub run build_runner build --delete-conflicting-outputs

  ** Injectable **
  @injectable → สร้างใหม่ทุกครั้ง
  @lazySingleton → สร้างครั้งเดียวพอ (เหมาะกับ stateless)
  @singleton → สร้างตอน configureDependencies() (ถ้ายังจำเป็นต้องใช้ทันที)
  
*/