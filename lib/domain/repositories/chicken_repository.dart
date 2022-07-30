import 'package:flutter/widgets.dart';
import 'package:is_there_eggs/data/repositories/chicken_repository.dart';
import 'package:is_there_eggs/domain/entities/chicken.dart';

abstract class ChickenRepository {
  // Get all chickens
  List<Chicken> getAllChickens();
}

extension ChickenRepositoryExtension on BuildContext {
  ChickenRepository get chickenRepository => ChickenRepositoryImpl.instance;
}
