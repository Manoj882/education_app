import 'package:education_app/core/errors/exceptions.dart';
import 'package:education_app/core/errors/failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class OnBoardingLocalDataSource {
  const OnBoardingLocalDataSource();
  Future<void> cacheFirstTimer();

  Future<bool> checkIfUserIsFirstTimer();
}

const kFirstTimerKey = 'first_timer';

class OnBoardingLocalDataSrcImpl extends OnBoardingLocalDataSource {
  const OnBoardingLocalDataSrcImpl(this._prefs);

  final SharedPreferences _prefs;
  
  @override
  Future<void> cacheFirstTimer() async{
    try{
      await _prefs.setBool(kFirstTimerKey, false);
    } catch(e){
      throw CacheException(message: e.toString());
    }
  }
  
  @override
  Future<bool> checkIfUserIsFirstTimer() {
    // TODO: implement checkIfUserIsFirstTimer
    throw UnimplementedError();
  }
}