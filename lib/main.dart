import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/approuter.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/data/repos/implement_home_repo.dart';
import 'package:bookly/features/Home/presentation/view_models/Newest_books_cubit/newest_book_cubit.dart';
import 'package:bookly/features/Home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const BookLy());
}

class BookLy extends StatelessWidget {
  const BookLy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplementation>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(
            getIt.get<HomeRepoImplementation>(),
          )..fetchNewestBooks(),
        ),
      ],
      child:MaterialApp(
          routes: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
          ),
          initialRoute: AppRouter.kSplashView,
        ),
    );
  }
}
