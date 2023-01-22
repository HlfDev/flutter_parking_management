import 'package:hive/hive.dart';

part 'parking_space_entity.g.dart';

@HiveType(typeId: 0)
class ParkingSpaceEntity {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String code;
  @HiveField(2)
  final bool isUse;

  ParkingSpaceEntity({
    required this.id,
    required this.code,
    required this.isUse,
  });
}
