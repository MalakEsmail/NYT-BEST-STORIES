import 'package:flutter/material.dart';
import 'package:nytbeststories/enum/device_type.dart';
import 'package:nytbeststories/models/article_data_model.dart';
import 'package:nytbeststories/widgets/article.dart';
import 'package:nytbeststories/widgets/info_widget.dart';

class ArticleDetailsScreen extends StatelessWidget {
  final Article article;

  ArticleDetailsScreen(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: InfoWidget(key, (context, deviceInfo) {
          if (deviceInfo.deviceType == TheDeviceType.Mobile) {
            return SingleChildScrollView(
              child: buildArticleItem(context, article),
            );
          } else {
            return Row(
              children: [
                Expanded(flex: 1, child: Container()),
                Expanded(flex: 4, child: buildArticleItem(context, article)),
                Expanded(flex: 1, child: Container()),
              ],
            );
          }
        }));
  }
}
