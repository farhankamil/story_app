import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:storyapp_intermediate/data/models/response/response_get_all_stories_model.dart';

import '../detail_page.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key? key,
    required this.data,
  }) : super(key: key);
  // final ListStory data;
  final ListStory data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push('${DetailStoryPage.routeName}/${data.id}'),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // Warna latar belakang card
            borderRadius:
                BorderRadius.circular(10.0), // Sudut card yang dibulatkan
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Warna bayangan
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // Offset bayangan
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: Image.network(
                  data.photoUrl,
                  height: 200, // Atur tinggi gambar sesuai kebutuhan
                  width: double.infinity, // Lebar gambar mengisi seluruh card
                  fit: BoxFit.cover, // Mengatur cara gambar ditampilkan
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  data.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(data.description),
              ),
              Row(
                children: <Widget>[
                  // LikeAnimation(
                  //   isAnimating: widget.snap['likes'].contains(user.uid),
                  //   smallLike: true,
                  //   child: IconButton(
                  //     icon: widget.snap['likes'].contains(user.uid)
                  //         ? const Icon(
                  //          Icons.favorite,
                  //             color: Colors.red,
                  //           )
                  //             color: Colors.red,
                  //           )
                  //         : const Icon(
                  //             Icons.favorite_border,
                  //           ),
                  //     onPressed: () => FireStoreMethods().likePost(
                  //       widget.snap['postId'].toString(),
                  //       user.uid,
                  //       widget.snap['likes'],
                  //     ),
                  //   ),
                  // ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    onPressed: () {},
                  ),

                  IconButton(
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                    onPressed: () {},
                  ),

                  IconButton(
                      icon: const Icon(
                        Icons.send,
                      ),
                      onPressed: () {}),
                  Expanded(
                      child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                        icon: const Icon(Icons.bookmark_border),
                        onPressed: () {}),
                  ))
                ],
              ),

              //DESCRIPTION AND NUMBER OF COMMENTS
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DefaultTextStyle(
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontWeight: FontWeight.w800),
                        child: const Text('farhana kamil like'
                            // '${widget.snap['likes'].length} likes',
                            // style: Theme.of(context).textTheme.bodyMedium,
                            )),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                        top: 8,
                      ),
                      // child: RichText(
                      //   text: TextSpan(
                      //     // style: const TextStyle(color: primaryColor),
                      //     children: [
                      //       TextSpan(
                      //         text: widget.snap['username'].toString(),
                      //         style: const TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //       TextSpan(
                      //         text: ' ${widget.snap['description']}',
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ),
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: const Text(
                          'View all comments',
                          style: TextStyle(
                            fontSize: 16,
                            // color: secondaryColor,
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      // child: Text(
                      //   DateFormat.yMMMd()
                      //       .format(widget.snap['datePublished'].toDate()),
                      //   style: const TextStyle(
                      //     color: secondaryColor,
                      //   ),
                      // ),

                      child: const Text('12 12 12'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
