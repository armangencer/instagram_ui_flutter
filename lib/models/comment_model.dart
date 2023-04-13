class Comment {
  String authorName;
  String authorImageUrl;
  String text;

  Comment({
    required this.authorName,
    required this.authorImageUrl,
    required this.text,
  });
}

final List<Comment> comment = [
  Comment(
      authorName: 'Arman',
      authorImageUrl: './assets/images/user2.jpg',
      text: 'Superr<3'),
  Comment(
      authorName: 'Tuana',
      authorImageUrl: './assets/images/user3.jpg',
      text: 'The Besttt'),
  Comment(
      authorName: 'Nurcan',
      authorImageUrl: './assets/images/user4.jpg',
      text: 'Boom'),
  Comment(
      authorName: 'Esen',
      authorImageUrl: './assets/images/user1.jpg',
      text: 'Beautiful'),
  Comment(
      authorName: 'Kaju',
      authorImageUrl: './assets/images/user0.jpg',
      text: 'Voavv'),
];
