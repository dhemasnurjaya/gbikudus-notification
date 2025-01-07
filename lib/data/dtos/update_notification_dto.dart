// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_notification_dto.freezed.dart';
part 'update_notification_dto.g.dart';

@freezed
class UpdateNotificationDto with _$UpdateNotificationDto {
  const factory UpdateNotificationDto({
    String? topic,
    String? title,
    String? body,
    String? schedule,
  }) = _UpdateNotificationDto;

  factory UpdateNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateNotificationDtoFromJson(json);
}
