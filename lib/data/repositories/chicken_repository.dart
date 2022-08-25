import 'package:is_there_eggs/domain/entities/chicken.dart';
import 'package:is_there_eggs/domain/repositories/chicken_repository.dart';

class ChickenRepositoryImpl extends ChickenRepository {
  final List<Chicken> chickens = [
    Chicken(
      name: 'La Bantam',
      description: "C'est une petite boule avec un fort caractère",
      image: 'chicken_1.jpg',
    ),
    Chicken(
      name: 'La Sussex',
      description: "C'est une travailleuse",
      image: 'chicken_2.jpg',
    ),
    Chicken(
      name: 'La Sussex à tâches',
      description: "Comme sa soeur elle ne rechigne pas au travail",
      image: 'chicken_3.jpg',
    ),
    Chicken(
      name: 'La Padou',
      description: "Notre star !",
      image: 'chicken_5.jpg',
    ),
  ];

  ChickenRepositoryImpl._();

  static final instance = ChickenRepositoryImpl._();

  @override
  List<Chicken> getAllChickens() => chickens;
}
