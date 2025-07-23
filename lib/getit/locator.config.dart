// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:sample_connect_api/dio_retrofit/api_client/api_client.dart'
    as _i642;
import 'package:sample_connect_api/dio_retrofit/dio_module.dart' as _i607;
import 'package:sample_connect_api/getit/api_service.dart' as _i862;
import 'package:sample_connect_api/repositories/user_repository.dart' as _i684;
import 'package:sample_connect_api/repositories/user_repository_impl.dart'
    as _i335;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    gh.factory<_i862.RealApiService>(() => _i862.RealApiService());
    gh.factory<_i862.TwoApiService>(() => _i862.TwoApiService());
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio);
    gh.lazySingleton<_i642.ApiClient>(() => dioModule.apiClient);
    gh.lazySingleton<_i684.IUserRepository>(
      () => _i335.UserRepositoryImpl(gh<_i642.ApiClient>()),
    );
    return this;
  }
}

class _$DioModule extends _i607.DioModule {}
