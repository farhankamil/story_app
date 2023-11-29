import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/presentation/add_story_page.dart';
import 'package:storyapp_intermediate/presentation/home_page.dart';
import 'package:storyapp_intermediate/presentation/login_page.dart';

import '../data/local_datasources/auth_localstorage.dart';

class MyRestaurantPage extends StatefulWidget {
  static const routeName = '/my-restaurant';
  const MyRestaurantPage({super.key});

  @override
  State<MyRestaurantPage> createState() => _MyRestaurantPageState();
}

class _MyRestaurantPageState extends State<MyRestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Account'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Log Out'),
              IconButton(
                onPressed: () async {
                  await AuthLocalDatasource().removeAuthData();
                  if (mounted) {
                    context.go(LoginPage.routeName);
                  }
                },
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddStoryPage();
          }));
        },
        // icon: const Icon(Icons.format_size_sharp, color: Colors.white),
        label: const Text("Add New Story"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (value) {
          if (value == 0) {
            context.pushReplacement(HomePage.routeName);
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'My Account'),
        ],
      ),
    );
  }
}
