// Package imports:
import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final dynamic exception;

  const Failure({required this.exception});

  @override
  List<Object?> get props => [exception];
}
