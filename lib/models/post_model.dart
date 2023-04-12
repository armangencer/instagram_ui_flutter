class Post {
  final String authorName;
  final String authorImageUrl;
  final String timeAgo;
  final String imageUrl;

  Post({
    required this.authorName,
    required this.imageUrl,
    required this.timeAgo,
    required this.authorImageUrl,
  });
}

final List<Post> posts = [
  Post(
      authorName: 'Arman Gencer',
      imageUrl: './assets/images/post0.jpg',
      timeAgo: '10 min',
      authorImageUrl: './assets/images/user0.jpg'),
  Post(
      authorName: 'Arman Gencer1',
      imageUrl: './assets/images/post1.jpg',
      timeAgo: '15 min',
      authorImageUrl: './assets/images/user1.jpg'),
];

final List<String> stories = [
  './assets/images/user1.jpg',
  './assets/images/user2.jpg',
  './assets/images/user3.jpg',
  './assets/images/user4.jpg',
  './assets/images/user0.jpg',
];
