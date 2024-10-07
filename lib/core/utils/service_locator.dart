import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/Home/data/repos/implement_home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void setup(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(
   HomeRepoImplementation(getIt.get<ApiService>(),), 
  );
}