import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbikudus_notification/data/local/data_sources/church_event_notification_local_data_source.dart';
import 'package:gbikudus_notification/data/remote/models/church_event_model.dart';
import 'package:hive_ce/hive.dart';

part 'church_event_notification_model.freezed.dart';
part 'church_event_notification_model.g.dart';

// TODO(dhemas): add isDeleted field to indicate if the event is deleted in
//  the remote data source

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
    required String description,
    required String image,
    DateTime? sentAt,
  }) = _ChurchEventNotificationModel;

  ChurchEventNotificationModel._();

  factory ChurchEventNotificationModel.fromRemote(ChurchEventModel model) {
    return ChurchEventNotificationModel(
      id: model.id,
      startDate: model.startDate,
      endDate: model.endDate,
      title: model.title,
      description: model.description,
      image: model.image,
    );
  }

  factory ChurchEventNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$ChurchEventNotificationModelFromJson(json);
}
