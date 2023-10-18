import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/bloc/get_all_story/get_all_story_bloc.dart';
import 'package:storyapp_intermediate/presentation/add_story_page.dart';
import 'package:storyapp_intermediate/presentation/my_restaurant_page.dart';
import 'package:storyapp_intermediate/presentation/widgets/list.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<GetAllStoryBloc>().add(const GetAllStoryEvent.get());
    // context.read<GetAllStoryBloc>().add(DoGetAllStoryGetEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home - Profile'),
        actions: [
          IconButton(
            onPressed: () async {},
            icon: const Icon(Icons.logout_outlined),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: BlocBuilder<GetAllStoryBloc, GetAllStoryState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: () => const Text('error'),
                loaded: (data) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return RestaurantCard(data: data.listStory[index]);
                    },
                    itemCount: data.listStory.length,
                  );
                },
              );
            },
          ),
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
        currentIndex: 0,
        onTap: (value) {
          if (value == 1) {
            context.push(MyRestaurantPage.routeName);
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
