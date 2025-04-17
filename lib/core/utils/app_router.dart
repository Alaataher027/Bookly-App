import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implementaion.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_implementation.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView = "/homeView";
  static const KBookDetailsView = "/bookDetailsView";
  static const KSearchView = "/searchView";

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // initial view (start)
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImplementaion>(),
          ),
          child: BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(
            getIt.get<SearchRepoImplementation>(),
          ),
          child: SearchView(),
        ),
      ),
    ],
  );
}
