class License {

  String name;
  String url;

  License({required this.name, required this.url});


  factory License.fromMap(Map<String,dynamic> map) {
    return License(
      name: map["name"], 
      url: map["url"]
    );
  }
}

class Dictionary {
  String word;
  String? phonetic;
  List<Phonetic> phonetics;
  List<Meaning> meanings;
  License license;
  List<String> sourceUrls;

  Dictionary({
    required this.word,
    required this.phonetic,
    required this.phonetics,
    required this.meanings,
    required this.license,
    required this.sourceUrls,});


  factory Dictionary.fromMap(Map<String,dynamic> map ){
    return Dictionary(
      word: map["word"], 
      phonetic: map["phonetic"], 
      phonetics: List<Phonetic>.from(map["phonetics"].map((e) => Phonetic.fromMap(e))), 
      meanings: List<Meaning>.from(map["meanings"].map((e) => Meaning.fromMap(e))),
      license: License.fromMap(map["license"]), 
      sourceUrls: List<String>.from(map["sourceUrls"])
      );
  }
}

class Phonetic {

  String? text;
  String audio;
  String? sourceUrl;
  License? license;

  Phonetic({
    required this.text,
    required this.audio,
    required this.sourceUrl,
    required this.license
  });

  factory Phonetic.fromMap(Map<String,dynamic> map ){
    return Phonetic(
      text: map["text"], 
      audio: map["audio"], 
      sourceUrl: map["sourceUrl"], 
      license: map["licence"] != null ? License.fromMap(map["license"]) : null,
      );
  }


}

class Meaning {
  String partOfSpeech;
  List<Definition> definitions;

  Meaning({
    required this.partOfSpeech,
    required this.definitions,

  });

  factory Meaning.fromMap(Map<String,dynamic> map ){
    return Meaning(
      partOfSpeech: map["partOfSpeech"], 
      definitions: List<Definition>.from(map["definitions"].map((e)=> Definition.fromMap(e))), 
      );
  }
}

class Definition {
  String definition;
  List<String> synonyms;
  List<String> antonyms;
  String? example;


  Definition({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    required this.example
  });

  factory Definition.fromMap(Map<String,dynamic> map ) {
    return Definition(
      definition: map["definition"], 
      synonyms: List<String>.from(map["synonyms"]), 
      antonyms: List<String>.from(map["antonyms"]), 
      example: map["example"]
      );
  }
}

class Post {
  String title;
  String body;
  int id;
  int userId;

  Post({
    required this.title,
    required this.body,
    required this.id,
    required this.userId,
    });

    factory Post.fromMap(Map<String, dynamic> map) {
      return Post(
        title: map["title"], 
        body: map["body"], 
        id: map["id"], 
        userId: map["userId"]
        );
    }

}