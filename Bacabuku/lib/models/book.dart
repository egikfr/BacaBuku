class BookList {
  String imageUrl;
  String writers;
  String title;
  String sinopsishome;

  BookList(
      {required this.imageUrl,
      required this.writers,
      required this.title,
      required this.sinopsishome});
}

List<BookList> bookLists = [
  BookList(
    imageUrl: 'assets/images/trending_book_1.png',
    writers: 'Guy Kawasakis',
    title: 'Enchantment',
    sinopsishome:
        'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
  ),
  BookList(
    imageUrl: 'assets/images/trending_book_2.png',
    writers: 'Aaron Mahnke',
    title: 'Lore',
    sinopsishome:
        'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
  ),
  BookList(
    imageUrl: 'assets/images/trending_book_3.png',
    writers: 'Spencer Johnson, M.D',
    title: 'Who Moved My Cheese',
    sinopsishome:
        'Enchantment, as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transforms situations and relationships.',
  ),
];
