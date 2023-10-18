import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/presentation/add_story_page.dart';
import 'package:storyapp_intermediate/presentation/home_page.dart';

class MyRestaurantPage extends StatefulWidget {
  static const routeName = '/my-restaurant';
  const MyRestaurantPage({super.key});

  @override
  State<MyRestaurantPage> createState() => _MyRestaurantPageState();
}

class _MyRestaurantPageState extends State<MyRestaurantPage> {
  final controller = ScrollController();

  // @override
  // void initState() {
  //   context
  //       .read<GetAllProductBloc>()
  //       .add(const GetAllProductEvent.getByUserId());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Restaurant'),
        actions: [
          IconButton(
              onPressed: () async {
                // await AuthLocalDatasource().removeAuthData();
                // context.go(LoginPage.routeName);
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 50,
            width: 50,
            color: Colors.amber,
          ),
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          // child: BlocBuilder<GetAllProductBloc, GetAllProductState>(
          //   builder: (context, state) {
          //     return state.when(
          //       initial: () => const Center(
          //         child: CircularProgressIndicator(),
          //       ),
          //       loading: () =>
          //           const Center(child: CircularProgressIndicator()),
          //       error: () => const Text('error'),
          //       loaded: (data) {
          //         return ListView.builder(
          //           itemBuilder: (context, index) {
          //             return RestaurantCard(data: data.data[index]);
          //           },
          //           itemCount: data.data.length,
          //         );
          //       },
          //     );
          //   },
          // ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddStoryPage();
          }));
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: (value) {
          if (value == 0) {
            context.push(HomePage.routeName);
          }
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant), label: 'All Restaurant'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'My Account'),
        ],
      ),
    );
  }
}
