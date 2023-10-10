// ignore_for_file: slash_for_doc_comments

class Info {

  /**
   * {
   *  item : {
   *          "name" : "asdf"
   *          "description" : " afdsfas"
   *          "imgUrl" : "asdfasdf"
   *          "price" : 123
   *          }
   * }
   */
  String name;
  String description;
  String imgUrl;
  int price; 

  Info({
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price,});

  // Map<String, dynamic> toMap() => {
  //   'name' : name,
  //   'description' : description,
  //   'imgUrl' : imgUrl,
  //   'price' : price
  // };

  Info.fromMap(Map<String,dynamic> map) 
    : name = map["name"],
      description = map["description"],
      imgUrl = map["image"],
      price = map["price"];
}
