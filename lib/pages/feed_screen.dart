import 'package:flutter/material.dart';
import 'package:instagram_ui_flutter/pages/view_post_screen.dart';

import '../models/post_model.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Widget _buildPost(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 560,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            image: AssetImage(posts[index].authorImageUrl),
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[0].authorName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(posts[0].timeAgo),
                    trailing: IconButton(
                        onPressed: () {
                          print('More');
                        },
                        icon: const Icon(
                          Icons.more_horiz,
                          color: Colors.black,
                        )),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like Ppost'),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(posts[index].imageUrl),
                            fit: BoxFit.fitWidth),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0, 5),
                              blurRadius: 8),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    print('LikePost');
                                  },
                                  icon: const Icon(
                                    Icons.favorite_border,
                                  ),
                                  iconSize: 25,
                                ),
                                const Text(
                                  '1.311',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ViewPostScreen(),
                                          ),
                                        );
                                      },
                                      icon: const Icon(
                                        Icons.chat,
                                      ),
                                      iconSize: 25,
                                    ),
                                    const SizedBox(width: 15),
                                    const Text(
                                      '200',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            print('Save Post');
                          },
                          icon: const Icon(Icons.bookmark_border),
                          iconSize: 25,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDF0F6),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  'Insgtagram',
                  style: TextStyle(fontFamily: 'Billabong', fontSize: 32),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () => print('IGTV'),
                    icon: const Icon(
                      Icons.live_tv,
                      size: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 45,
                    child: IconButton(
                      onPressed: () => print('Direct Messages'),
                      icon: const Icon(
                        Icons.send,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: ListView.builder(
                itemBuilder: (context, int index) {
                  if (index == 0) {
                    return const SizedBox(
                      width: 10,
                    );
                  }
                  return Container(
                    margin: const EdgeInsets.all(10),
                    width: 60,
                    height: 70,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(stories[index - 1]),
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: stories.length + 1,
                scrollDirection: Axis.horizontal),
          ),
          _buildPost(0),
          _buildPost(1),
        ],
      ),
    );
  }
}
