import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'parking_space_entity.g.dart';

@HiveType(typeId: 0)
class ParkingSpaceEntity extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String code;
  @HiveField(2)
  final bool isUse;

  const ParkingSpaceEntity({
    required this.id,
    required this.code,
    required this.isUse,
  });

  @override
  List<Object?> get props => [
        id,
        code,
        isUse,
      ];
}
