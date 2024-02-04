import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'yard_bloc_event.dart';
import 'yard_bloc_state.dart';

@injectable
class YardBloc extends Bloc<YardBlocEvent,YardBlocState>{
  YardBloc():super(YardBlocStateInitial()){
    on<YardBlocEventInit>(init);
  }

  // List<EntityChapter> get chapters => [
  //   EntityChapter(title: "Alphabet",id: 1,imageLink: "assets/icons/ic_alphabet.png",isBought:Random().nextInt(100)<20),
  //   EntityChapter(title: "Words",id: 2,imageLink: "assets/icons/ic_puzzle.png",isBought:Random().nextInt(100)<20),
  //   EntityChapter(title: "Sentences",id: 3,imageLink: "assets/icons/ic_sentence.png",isBought:Random().nextInt(100)<20),
  //   EntityChapter(title: "Grammar",id: 4,imageLink: "assets/icons/ic_grammer.jpg",isBought:Random().nextInt(100)<20)
  // ];


  FutureOr<void> init(YardBlocEventInit event, Emitter<YardBlocState> emit) {
    // emit(YardBlocStateDataLoaded(chapters));
  }
}