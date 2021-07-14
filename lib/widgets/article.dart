 import 'package:flutter/material.dart';
import 'package:nytbeststories/models/article_data_model.dart';
import 'package:nytbeststories/screens/atricle_details_screen.dart';

Widget buildArticleItem(context, Article article) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ArticleDetailsScreen(article)));
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(15)),
                    image: DecorationImage(
                        image: NetworkImage(article.multimedia.length==0?'https://image.freepik.com/free-psd/rectangular-cardboard-box-mockup_58466-15677.jpg':article.multimedia[0].url),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: Text(
                            article.createdDate,
                            style: Theme.of(context).textTheme.caption,
                          )),
                      Text(
                        article.title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        article.abstract,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }