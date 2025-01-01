class Book {
  String title;
  String description;
  String? image;

  Book({required this.title, required this.description, this.image});
}

List<Book> books = [
  Book(
      title: 'Book 1',
      description: 'This is book 1',
      image:
          'https://images.unsplash.com/photo-1652571305415-03416a741883?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
  Book(title: 'Book 2', description: 'This is book 2', image: null),
];
