// ignore_for_file: public_member_api_docs, sort_constructors_first


class User {
  int page;
  int perPage;
  int totalItems;
  int totalPages;
  List items;
  User({
    required this.page,
    required this.perPage,
    required this.totalItems,
    required this.totalPages,
    required this.items,
  });


  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      page: map['page'],
      perPage: map['perPage'],
      totalItems: map['totalItems'],
      totalPages: map['totalPages'],
      items: List.from((map['items']),)
    );
  }

}
