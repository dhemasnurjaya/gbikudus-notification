import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbikudus_notification/data/local/data_sources/church_event_notification_local_data_source.dart';

part 'church_event_notification_model.freezed.dart';
part 'church_event_notification_model.g.dart';

/// Represents a church event notification model that stored in the
/// [ChurchEventNotificationLocalDataSource] local database.
@freezed
sealed class ChurchEventNotificationModel with _$ChurchEventNotificationModel {
  const factory ChurchEventNotificationModel({
    required int id,
    required String startDate,
    required String endDate,
    required String title,
    required String image,
    @Default(false) bool isNotificationSent,
  }) = _ChurchEventNotificationModel;

  factory ChurchEventNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$ChurchEventNotificationModelFromJson(json);
}
