import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbikudus_notification/data/remote/models/church_event_model.dart';

part 'church_event_notification.freezed.dart';

/// Represents a Church Event that stored in the local database.
///
/// Properties are the same as [ChurchEventModel] with [sentAt]
/// property added to indicate if the notification for the church event has
/// been sent.
@freezed
sealed class ChurchEventNotification with _$ChurchEventNotification {
  const factory ChurchEventNotification({
    required int id,
    required DateTime startDate,
    required DateTime endDate,
    required String title,
    required String image,
    DateTime? sentAt,
  }) = _ChurchEventNotification;
}
