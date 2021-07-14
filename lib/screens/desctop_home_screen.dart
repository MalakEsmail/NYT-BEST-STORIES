import 'package:flutter/material.dart';
import 'package:nytbeststories/cubit/home_cubit.dart/home_articles_cubit.dart';
import 'package:nytbeststories/widgets/home_body.dart';

class DesktopHomeScreen extends StatelessWidget {
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
      body: 
      
      Row(
        children: [
          Expanded(flex: 1,child: Container()),
          Expanded(
            flex: 4,
            child:HomeBody(cubit)),
          Expanded(flex: 1,child: Container()),
         
        ],
      ),
    );
  }
}
