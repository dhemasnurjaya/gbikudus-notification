// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_notification_dto.freezed.dart';
part 'create_notification_dto.g.dart';

@freezed
class CreateNotificationDto with _$CreateNotificationDto {
  const factory CreateNotificationDto({
    required String id,
    required String title,
    required DateTime sendDate,
  }) = _CreateNotificationDto;

  factory CreateNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$CreateNotificationDtoFromJson(json);
}
