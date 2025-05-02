import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:hive_ce/hive.dart';

@GenerateAdapters([AdapterSpec<ChurchEventNotificationModel>()])
part 'hive_adapters.g.dart';

/// Hive box name for storing [ChurchEventNotificationModel] objects.
const churchEventNotificationBoxName = 'church_event_notification_box';
