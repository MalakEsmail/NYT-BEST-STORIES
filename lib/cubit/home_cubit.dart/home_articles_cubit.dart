import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nytbeststories/cubit/home_cubit.dart/home_articles_states.dart';
import 'package:nytbeststories/models/article_data_model.dart';
import 'package:nytbeststories/network/endpoints.dart';
import 'package:nytbeststories/network/remote/dio_helper.dart';

class HomeArticlesCubit extends Cubit<HomeArticlesStates> {
  HomeArticlesCubit() : super(HomeArticlesInitializeState());
  static HomeArticlesCubit get(context) => BlocProvider.of(context);
  ArticleDataModel articleDataModel = new ArticleDataModel();
  void getHomeArticlesData() {
    emit(HomeArticlesLoadingState());
    DioHelper.getData(HOMEARTICLES).then((value) {
      articleDataModel = ArticleDataModel.fromJson(value.data);
      print(articleDataModel.numResults.toString());
      emit(HomeArticlesSuccessState());
    }).catchError((error) {
      print('error is $error');
      emit(HomeArticlesErrorState(error.message.toString()));
    });
  }
}
