// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_notification_dto.freezed.dart';
part 'create_notification_dto.g.dart';

@freezed
class CreateNotificationDto with _$CreateNotificationDto {
  const factory CreateNotificationDto({
    required String id,
    required String topic,
    required String title,
    required String body,
    required String schedule,
  }) = _CreateNotificationDto;

  factory CreateNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$CreateNotificationDtoFromJson(json);
}
