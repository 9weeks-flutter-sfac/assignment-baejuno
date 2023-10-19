import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Secret {
  int page;
  int perPage;
  int totalPages;
  int totalItems;
  Items items;

  Secret({
    required this.page,
    required this.perPage,
    required this.totalPages,
    required this.totalItems,
    required this.items,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'page': page,
      'perPage': perPage,
      'totalPages': totalPages,
      'totalItems': totalItems,
      'items': items.toMap(),
    };
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      page: map['page'] as int,
      perPage: map['perPage'] as int,
      totalPages: map['totalPages'] as int,
      totalItems: map['totalItems'] as int,
      items: Items.fromMap(map['items'] as Map<String,dynamic>),
    );
  }
}


class Items {
  String id;
  String collectionId;
  String collectionName;
  String created;
  String updated;
  String secret;
  String author;
  String authorName;
  Items({
    required this.id,
    required this.collectionId,
    required this.collectionName,
    required this.created,
    required this.updated,
    required this.secret,
    required this.author,
    required this.authorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'collectionId': collectionId,
      'collectionName': collectionName,
      'created': created,
      'updated': updated,
      'secret': secret,
      'author': author,
      'authorName': authorName,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: map['created'] as String,
      updated: map['updated'] as String,
      secret: map['secret'] as String,
      author: map['author'] as String,
      authorName: map['authorName'] as String,
    );
  }
}
