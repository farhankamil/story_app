import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/new_bloc/login/login_bloc.dart';
import 'package:storyapp_intermediate/presentation/my_account_page.dart';
import 'package:storyapp_intermediate/presentation/widgets/error_message.dart';
import 'package:storyapp_intermediate/presentation/widgets/list.dart';

import '../new_bloc/get_all/get_all_bloc.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<GetAllBloc>().add(GetAllListEvent());
    super.initState();
  }

  Future<void> _reloadData() async {
    context.read<GetAllBloc>().add(GetAllListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Story'),
      ),
      body: SafeArea(
        child: BlocBuilder<GetAllBloc, GetAllState>(
          builder: (context, state) {
            if (state is GetAllLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is GetAllLoaded) {
              return ListView.builder(
                itemCount: state.getAllStory.listStory.length,
                itemBuilder: (context, index) {
                  return RestaurantCard(
                    listStory: state.getAllStory.listStory[index],
                  );
                },
              );
            }

            if (state is GetAllError) {
              return ErrorMessage(
                image: 'assets/images/no-internet.png',
                message: 'Cek Koneksi',
                onPressed: _reloadData,
              );
            }
            return const Text('no data');
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (value) {
          if (value == 1) {
            context.pushReplacement(MyRestaurantPage.routeName);
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'My Account',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
