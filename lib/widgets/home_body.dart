import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:nytbeststories/cubit/home_cubit.dart/home_articles_cubit.dart';
import 'package:nytbeststories/cubit/home_cubit.dart/home_articles_states.dart';
import 'package:nytbeststories/widgets/article.dart';

Widget HomeBody(HomeArticlesCubit cubit) {
  return BlocConsumer<HomeArticlesCubit, HomeArticlesStates>(
      builder: (context, state) {
        return Conditional.single(
            context: context,
            conditionBuilder: (BuildContext context) =>
                state is HomeArticlesSuccessState,
            widgetBuilder: (BuildContext context) {
              return SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: cubit.articleDataModel.results.length,
                      itemBuilder: (context, index) {
                        return buildArticleItem(
                            context, cubit.articleDataModel.results[index]);
                      },
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    )
                  ],
                ),
              );
            },
            fallbackBuilder: (BuildContext context) => Center(
                  child: CircularProgressIndicator(),
                ));
      },
      listener: (context, state) {});
}
