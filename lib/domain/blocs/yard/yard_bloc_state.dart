
sealed class YardBlocState{
  // List<EntityChapter> chapters;
  YardBlocState();
}

class YardBlocStateInitial extends YardBlocState{
  YardBlocStateInitial():super();
}

class YardBlocStateDataLoaded extends YardBlocState{
  YardBlocStateDataLoaded();
}