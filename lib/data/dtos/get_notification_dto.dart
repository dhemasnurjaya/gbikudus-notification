// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notification_dto.freezed.dart';
part 'get_notification_dto.g.dart';

@freezed
class GetNotificationDto with _$GetNotificationDto {
  const factory GetNotificationDto({
    required String id,
    required String title,
    required DateTime sendDate,
  }) = _GetNotificationDto;

  factory GetNotificationDto.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationDtoFromJson(json);
}
