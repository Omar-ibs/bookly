import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/view/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static Map<String, Widget Function(BuildContext context)> router = {
    kSplashView: (context) => const SplashView(),
    kHomeView: (context) => const HomeView(),
    // kBookDetailsView: (context) => BlocProvider(
    //       create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
    //       child: BookDetailsView(
    //         book:,
    //       ),
    //     ),
    kSearchView: (context) => const SearchView(),
  };
}
