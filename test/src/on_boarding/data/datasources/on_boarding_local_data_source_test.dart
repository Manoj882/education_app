


import 'package:education_app/core/errors/exceptions.dart';
import 'package:education_app/src/on_boarding/data/datasources/on_boarding_local_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}


void main(){
  late SharedPreferences prefs;
  late OnBoardingLocalDataSource localDataSource;

  setUp(() {
    prefs = MockSharedPreferences();
    localDataSource = OnBoardingLocalDataSrcImpl(prefs);
  });

  group('cacheFirstTimer', () { 
    test('should call [SharedPreferences] to cache the data', () async {
      when(() => prefs.setBool(any(), any())).thenAnswer((_)  async=> true);

       await localDataSource.cacheFirstTimer();

       verify(() => prefs.setBool(kFirstTimerKey, false)).called(1);

       verifyNoMoreInteractions(prefs);

    });

    test('should throw a [CacheException] when there is an error caching data', () async {
      when(() => prefs.setBool(any(), any())).thenThrow(Exception());

      final methodCall = localDataSource.cacheFirstTimer;

      expect(methodCall, throwsA(isA<CacheException>()));

      verify(() => prefs.setBool(kFirstTimerKey, false)).called(1);
      verifyNoMoreInteractions(prefs);

    });


  });
}