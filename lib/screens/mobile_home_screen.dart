import 'package:flutter/material.dart';
import 'package:nytbeststories/cubit/home_cubit.dart/home_articles_cubit.dart';
import 'package:nytbeststories/widgets/home_body.dart';


class MobileHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cubit = HomeArticlesCubit.get(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'NYT BEST STORIES',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body:HomeBody(cubit)
       );
  }

 
}
