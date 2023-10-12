class MeowFact {

  List<String> data;

  MeowFact({required this.data});


  factory MeowFact.fromMap(Map<String,dynamic> map) {

    var data = List<String>.from(map["data"]);

    return MeowFact(data: data); 
  }
}

class CatFact {
  String fact;
  int length;

  CatFact({
    required this.fact,
    required this.length});

    CatFact.fromMap(Map<String,dynamic> map) :
    fact = map["fact"],
    length = map["length"];

}


class Advice {

  // Map<String,dynamic> slip;

  // Advice({required this.slip});

  // factory Advice.fromMap(Map<String,dynamic> map) {
    
  //   return Advice(slip: map["slip"]);
 
  // }

  int id;
  String advice;

  Advice({required this.id, required this.advice});

  factory Advice.fromMap(Map<String,dynamic> map) {
    return Advice(
      id: map["id"], 
      advice: map["advice"]
      );
  }
  
}

class Active {
  String activity;
  String type;
  int participants;
  double price;
  String link;
  String key;
  int accessibility;


  Active({

    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility});

    Active.fromMap(Map<String,dynamic> map) :

    activity = map["activity"],
    type = map["type"],
    participants = map["participants"],
    price = map["price"],
    link = map["link"],
    key = map["key"],
    accessibility = map["accessibility"];

}



