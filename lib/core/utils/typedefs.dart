

import 'dart:async';

import 'package:dartz/dartz.dart';

import '../errors/failures.dart';


typedef ResultFuture<T> = FutureOr<Either<Failure, T>>;

typedef DataMap = Map<String, dynamic>;