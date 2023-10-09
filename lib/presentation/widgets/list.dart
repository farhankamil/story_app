import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/data/models/response/response_get_all_stories_model.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required this.data,
  }) : super(key: key);
  final ListStory data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => context.push('${DetailRestaurantPage.routeName}/${data.id}'),
      child: Card(
        child: ListTile(
          title: Text(data.name),
          subtitle: Text(data.description),
          leading: CircleAvatar(
            radius: 18,
            child:
                Image.network(data.photoUrl ?? 'https://picsum.photos/200/300'),
          ),
        ),
      ),
    );
  }
}
