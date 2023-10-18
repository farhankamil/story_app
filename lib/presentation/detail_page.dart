import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/detail/detail_bloc.dart';

class DetailStoryPage extends StatefulWidget {
  static const routeName = '/detail';
  const DetailStoryPage({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;

  @override
  State<DetailStoryPage> createState() => _DetailStoryPageState();
}

class _DetailStoryPageState extends State<DetailStoryPage> {
  @override
  void initState() {
    context.read<DetailBloc>().add(DetailEvent.get(widget.id));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Restaurant')),
      body: BlocBuilder<DetailBloc, DetailState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const Text('No detail'),
            loaded: (model) {
              return ListView(
                children: [
                  Image.network(model.story.photoUrl),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(model.story.name),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(model.story.description),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(model.story.id),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
