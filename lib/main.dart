import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/bloc/get_all_story/get_all_story_bloc.dart';
import 'package:storyapp_intermediate/bloc/login/login_bloc.dart';
import 'package:storyapp_intermediate/bloc/register/register_bloc.dart';
import 'package:storyapp_intermediate/data/local_datasources/auth_localstorage.dart';
import 'package:storyapp_intermediate/data/remote_datasources/api_datasources.dart';
import 'package:storyapp_intermediate/data/remote_datasources/auth_datasource.dart';
import 'package:storyapp_intermediate/data/remote_datasources/story_datasources.dart';
import 'package:storyapp_intermediate/presentation/detail_page.dart';
import 'package:storyapp_intermediate/presentation/home_page.dart';
import 'package:storyapp_intermediate/presentation/login_page.dart';
import 'package:storyapp_intermediate/presentation/register_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RegisterBloc(AuthDatasource()),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthDatasource()),
        ),
        BlocProvider(
          create: (context) => GetAllStoryBloc(StoryDatasource()),
        ),
        // BlocProvider(
        //   create: (context) => ProductUpdateCubit(ApiDatasource()),
        // ),
      ],
      child: MaterialApp.router(
        routerConfig: GoRouter(
          initialLocation: LoginPage.routeName,
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
            // GoRoute(
            //   path: '${StoryDetailPage.routeName}/:restaurantId',
            //   builder: (context, state) => StoryDetailPage(
            //       id: int.parse(state.pathParameters['restaurantId']!)),
            // ),
          ],
        ),
      ),
    );
  }
}
