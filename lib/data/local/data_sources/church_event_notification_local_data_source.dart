import 'package:gbikudus_notification/data/local/local_database.dart';
import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:hive_ce/hive.dart';

/// A local data source for managing church event notifications using Hive.
class ChurchEventNotificationLocalDataSource
    extends LocalDatabase<String, ChurchEventNotificationModel> {
  /// Creates a new instance of [ChurchEventNotificationLocalDataSource].
  /// [box] is the Hive box used for storing church event notifications.
  ChurchEventNotificationLocalDataSource(Box<ChurchEventNotificationModel> box)
      : _box = box;

  final Box<ChurchEventNotificationModel> _box;

  @override
  Future<void> delete(String id) {
    return _box.delete(id);
  }

  @override
  Future<List<ChurchEventNotificationModel>> list() {
    return Future.value(_box.values.toList());
  }

  @override
  Future<ChurchEventNotificationModel> read(String id) {
    return Future.value(_box.get(id));
  }

  @override
  Future<void> write(ChurchEventNotificationModel model) {
    return _box.put(model.id, model);
  }
}
