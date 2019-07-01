import 'package:flutter/material.dart';
import 'package:flutter_app/model/post.dart';

class ListViewDemo extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      //外边距，在container的四周添加8.0的边距
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 16.0,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }

}