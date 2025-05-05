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
      id: (fields[26] as num).toInt(),
      startDate: fields[27] as String,
      endDate: fields[28] as String,
      title: fields[29] as String,
      description: fields[30] as String,
      image: fields[31] as String,
      sentAt: fields[32] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ChurchEventNotificationModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(26)
      ..write(obj.id)
      ..writeByte(27)
      ..write(obj.startDate)
      ..writeByte(28)
      ..write(obj.endDate)
      ..writeByte(29)
      ..write(obj.title)
      ..writeByte(30)
      ..write(obj.description)
      ..writeByte(31)
      ..write(obj.image)
      ..writeByte(32)
      ..write(obj.sentAt);
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
