import 'package:bookly/core/utils/errors/failure.dart';

class ServerFailure extends Failure {
  String? status;
  String? errorName;
}
