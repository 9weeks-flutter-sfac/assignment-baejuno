import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  int page;
  int perPage;
  int totalPages;
  int totalItems;
  Items items;

  User({
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

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
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
  String created;
  String updated;
  String username;
  bool verified;
  bool emailVisibility;
  String email;
  String? name;
  String? avatar;
  
  Items({
    required this.id,
    required this.collectionId,
    required this.created,
    required this.updated,
    required this.username,
    required this.verified,
    required this.emailVisibility,
    required this.email,
    this.name,
    this.avatar,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'collectionId': collectionId,
      'created': created,
      'updated': updated,
      'username': username,
      'verified': verified,
      'emailVisibility': emailVisibility,
      'email': email,
      'name': name,
      'avatar': avatar,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'] as String,
      collectionId: map['collectionId'] as String,
      created: map['created'] as String,
      updated: map['updated'] as String,
      username: map['username'] as String,
      verified: map['verified'] as bool,
      emailVisibility: map['emailVisibility'] as bool,
      email: map['email'] as String,
      name: map['name'] as String,
      avatar: map['avatar'] as String,
    );
  }
}
