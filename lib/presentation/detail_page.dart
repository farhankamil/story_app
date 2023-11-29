import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storyapp_intermediate/presentation/widgets/error_message.dart';

import '../common/assets_path.dart';
import '../new_bloc/detail/detail_bloc.dart';

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
    context.read<DetailBloc>().add(GetDetailEvent(id: widget.id));

    super.initState();
  }

  Future<void> _reloadData() async {
    context.read<DetailBloc>().add(GetDetailEvent(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail ')),
      body: BlocBuilder<DetailBloc, DetailState>(
        builder: (context, state) {
          if (state is DetailLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is DetailLoaded) {
            return detailContent(state);
          }

          if (state is DetailError) {
            return ErrorMessage(
              image: 'assets/images/no-internet.png',
              message: 'Cek Koneksi',
              onPressed: _reloadData,
            );
          }
          return const Text('no data');
        },
      ),
    );
  }

  Widget detailContent(DetailLoaded state) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          FadeInImage.assetNetwork(
            image: state.detailStory.story.photoUrl,
            placeholder: AssetsPath.placeHolder,
            fit: BoxFit.cover,
            placeholderFit: BoxFit.cover,
            fadeInCurve: Curves.linear,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  state.detailStory.story.name,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  state.detailStory.story.description,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
