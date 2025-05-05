import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbikudus_notification/data/local/data_sources/church_event_notification_local_data_source.dart';
import 'package:hive_ce/hive.dart';

part 'church_event_notification_model.freezed.dart';
part 'church_event_notification_model.g.dart';

/// Represents a church event notification model that stored in the
/// [ChurchEventNotificationLocalDataSource] local database.
@freezed
sealed class ChurchEventNotificationModel extends HiveObject
    with _$ChurchEventNotificationModel {
  factory ChurchEventNotificationModel({
    required int id,
    required String startDate,
    required String endDate,
    required String title,
    required String image,
    DateTime? sentAt,
  }) = _ChurchEventNotificationModel;

  ChurchEventNotificationModel._();

  factory ChurchEventNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$ChurchEventNotificationModelFromJson(json);
}
