import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';
import 'package:secret_cat_sdk/model/secret.dart';

class PostList extends StatefulWidget {
  const PostList({super.key});

  @override
  State<PostList> createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("뒤로가기"),
        backgroundColor: Colors.transparent,
      ),
      body: FutureBuilder(
        future: SecretCatApi.fetchSecrets(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
                 return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: ListTile(
                        leading: (snapshot.data![index].author.toString() == 'null' ) ? Image.asset('assets/images/user.png')
                        : Image.network(snapshot.data![index].author!.avatar.toString()),
                        title: Text(snapshot.data![index].secret,style: TextStyle(fontFamily: "secrete"),),
                        subtitle: Text(snapshot.data![index].author?.username ?? "익명")
                      ),
                    );
                  });
          }
        return CircularProgressIndicator();
      }
    ));
  }
}
// FutureBuilder(
//             future: SecretCatApi.fetchSecrets(),
//             builder: (context,snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return Text(snapshot.data.toString());
//               }
//               return CircularProgressIndicator();
//             })