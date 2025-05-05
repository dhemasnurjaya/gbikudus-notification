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
      id: (fields[18] as num).toInt(),
      startDate: fields[19] as String,
      endDate: fields[20] as String,
      title: fields[21] as String,
      image: fields[22] as String,
      sentAt: fields[23] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, ChurchEventNotificationModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(18)
      ..write(obj.id)
      ..writeByte(19)
      ..write(obj.startDate)
      ..writeByte(20)
      ..write(obj.endDate)
      ..writeByte(21)
      ..write(obj.title)
      ..writeByte(22)
      ..write(obj.image)
      ..writeByte(23)
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
