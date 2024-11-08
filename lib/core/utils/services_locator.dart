import 'package:book/core/utils/api_manger.dart';
import 'package:book/feature/presetation/screens/home_screen/data/repos/home_repo_impl.dart';
import 'package:book/feature/presetation/screens/search_screen/data/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiManger>(ApiManger(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiManger>(),
    ),
  );
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
      getIt.get<ApiManger>(),
    ),
  );
}
