// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_training/core/di/injection_config.dart' as _i6;
import 'package:flutter_training/data/repository.dart' as _i4;
import 'package:flutter_training/domain/blocs/yard/yard_bloc.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    gh.lazySingleton<_i3.Dio>(() => dataModule.dio());
    gh.lazySingleton<_i4.Repository>(() => _i4.Repository());
    gh.factory<_i5.YardBloc>(() => _i5.YardBloc());
    return this;
  }
}

class _$DataModule extends _i6.DataModule {}
