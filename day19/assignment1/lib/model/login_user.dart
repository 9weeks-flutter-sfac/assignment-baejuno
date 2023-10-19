import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginUser {
  String token;
  Record record;
  LoginUser({
    required this.token,
    required this.record,
  });

 

  

  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'record': record.toMap(),
    };
  }

  factory LoginUser.fromMap(Map<String, dynamic> map) {
    return LoginUser(
      token: map['token'] as String,
      record: Record.fromMap(map['record'] as Map<String,dynamic>),
    );
  }

}




class Record {
  String id;
  String collectionId;
  String collectionName;
  String created;
  String updated;
  String username;
  bool verified;
  bool emailVisibility;
  String email;
  String? name;
  String? avatar;
  
  Record({
    required this.id,
    required this.collectionId,
    required this.collectionName,
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
      'collectionName': collectionName,
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

  factory Record.fromMap(Map<String, dynamic> map) {
    return Record(
      id: map['id'] as String,
      collectionId: map['collectionId'] as String,
      collectionName: map['collectionName'] as String,
      created: map['created'] as String,
      updated: map['updated'] as String,
      username: map['username'] as String,
      verified: map['verified'] as bool,
      emailVisibility: map['emailVisibility'] as bool,
      email: map['email'] as String,
      name: map['name'] != null ? map['name'] as String : null,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
    );
  }

}
