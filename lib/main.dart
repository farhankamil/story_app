import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/data/local_datasources/auth_localstorage.dart';
import 'package:storyapp_intermediate/data/remote_datasources/auth_datasource.dart';
import 'package:storyapp_intermediate/data/remote_datasources/story_datasources.dart';
import 'package:storyapp_intermediate/new_bloc/addnew_story/addnew_story_bloc.dart';
import 'package:storyapp_intermediate/new_bloc/detail/detail_bloc.dart';
import 'package:storyapp_intermediate/new_bloc/get_all/get_all_bloc.dart';
import 'package:storyapp_intermediate/new_bloc/login/login_bloc.dart';
import 'package:storyapp_intermediate/new_bloc/sign_up/sign_up_bloc.dart';
import 'package:storyapp_intermediate/presentation/add_story_page.dart';
import 'package:storyapp_intermediate/presentation/detail_page.dart';
import 'package:storyapp_intermediate/presentation/home_page.dart';
import 'package:storyapp_intermediate/presentation/login_page.dart';
import 'package:storyapp_intermediate/presentation/my_account_page.dart';
import 'package:storyapp_intermediate/presentation/register_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SignUpBloc(AuthDatasource()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthDatasource()),
        ),
        BlocProvider(
          create: (context) => GetAllBloc(StoryDatasource()),
        ),
        BlocProvider(
          create: (context) => DetailBloc(StoryDatasource()),
        ),
        BlocProvider(
          create: (context) => AddnewStoryBloc(StoryDatasource()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: GoRouter(
          initialLocation: HomePage.routeName,
          routes: [
            GoRoute(
              path: LoginPage.routeName,
              builder: (context, state) => const LoginPage(),
            ),
            GoRoute(
              path: RegisterPage.routeName,
              builder: (context, state) => const RegisterPage(),
            ),
            GoRoute(
              path: HomePage.routeName,
              builder: (context, state) {
                return const HomePage();
              },
              redirect: (context, state) async {
                final isLogin = await AuthLocalDatasource().isLogin();
                if (isLogin) {
                  return null;
                } else {
                  return LoginPage.routeName;
                }
              },
            ),
            GoRoute(
              path: '${DetailStoryPage.routeName}/:id',
              builder: (context, state) => DetailStoryPage(
                id: state.pathParameters['id'] ?? '',
              ),
            ),
            GoRoute(
              path: MyRestaurantPage.routeName,
              builder: (context, state) => const MyRestaurantPage(),
            ),
            GoRoute(
              path: AddStoryPage.routeName,
              builder: (context, state) => const AddStoryPage(),
            ),
          ],
        ),
      ),
    );
  }
}
