// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_space_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParkingSpaceEntityAdapter extends TypeAdapter<ParkingSpaceEntity> {
  @override
  final int typeId = 0;

  @override
  ParkingSpaceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ParkingSpaceEntity(
      id: fields[0] as String,
      code: fields[1] as String,
      inUse: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ParkingSpaceEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.inUse);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParkingSpaceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
