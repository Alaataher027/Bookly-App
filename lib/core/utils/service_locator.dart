import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImplementaion>(
    HomeRepoImplementaion(
      getIt.get<ApiService>(), // << dependes on api service singleton
    ),
  ); //create singleton
}
