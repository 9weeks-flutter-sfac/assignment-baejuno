//https://jsonplaceholder.typicode.com/users
class User {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company
  });

  factory User.fromMap(Map<String,dynamic> map ) {
    return User(
      id: map["id"], 
      name: map["name"], 
      username: map["username"], 
      email: map["email"],
      address: Address.fromMap(map["address"]), 
      phone: map["phone"], 
      website: map["website"], 
      company: Company.fromMap(map["company"])
    );
  }
}

class Geo {
    String lat;
    String lng;

    Geo({required this.lat, required this.lng});

    factory Geo.fromMap(Map<String,dynamic> map ) {
      return Geo(
        lat: map["lat"], 
        lng: map["lng"]
      );
    }
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

   factory Address.fromMap(Map<String,dynamic> map ) {
    return Address(
      street: map["street"], 
      suite: map["suite"], 
      city: map["city"], 
      zipcode: map["zipcode"], 
      geo: Geo.fromMap(map['geo'])
    );
  }
}

class Company {
  String name;
  String catchPhrase;
  String bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromMap(Map<String,dynamic> map ){
    return Company(
      name: map["name"], 
      catchPhrase: map["catchPhrase"],
      bs: map["bs"]
    );
  }
}