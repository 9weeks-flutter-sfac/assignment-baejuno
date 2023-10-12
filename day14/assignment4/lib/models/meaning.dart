import 'package:assignment4/models/definition.dart';

class Meaning {
  String partOfSpeech;
  List<Definition> definitions;


  Meaning({
    required this.partOfSpeech,
    required this.definitions,
  });

  factory Meaning.fromMap(Map<String,dynamic> map){
    return Meaning(
      partOfSpeech: map["partOfSpeech"], 
      definitions: List<Definition>.from(map["definitions"].map((e)=>Definition.fromMap(e))));
  }


}