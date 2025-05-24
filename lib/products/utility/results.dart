import 'package:architecture_template/core/error/failures.dart';
import 'package:equatable/equatable.dart';

abstract class Result<T> extends Equatable {
  const Result();
  
  @override
  List<Object?> get props => [];
}

class Success<T> extends Result<T> {
  final T data;
  
  const Success(this.data);
  
  @override
  List<Object?> get props => [data];
}

class Error<T> extends Result<T> {
  final Failure failure;
  
  const Error(this.failure);
  
  @override
  List<Object?> get props => [failure];
}