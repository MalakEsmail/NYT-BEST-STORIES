abstract class HomeArticlesStates {}

class HomeArticlesInitializeState extends HomeArticlesStates {}

class HomeArticlesLoadingState extends HomeArticlesStates {}

class HomeArticlesSuccessState extends HomeArticlesStates {}

class HomeArticlesErrorState extends HomeArticlesStates {
  final String error;
  HomeArticlesErrorState(this.error);
}
