// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class ChurchEventNotificationModelAdapter
    extends TypeAdapter<ChurchEventNotificationModel> {
  @override
  final typeId = 0;

  @override
  ChurchEventNotificationModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChurchEventNotificationModel(
      id: (fields[0] as num).toInt(),
      startDate: fields[1] as String,
      endDate: fields[2] as String,
      title: fields[3] as String,
      image: fields[4] as String,
      isNotificationSent: fields[5] == null ? false : fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ChurchEventNotificationModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.startDate)
      ..writeByte(2)
      ..write(obj.endDate)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.isNotificationSent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChurchEventNotificationModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
