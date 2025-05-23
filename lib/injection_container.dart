import 'package:gbikudus_notification/core/cloud_messaging.dart';
import 'package:gbikudus_notification/core/network.dart';
import 'package:gbikudus_notification/core/time.dart';
import 'package:gbikudus_notification/data/local/data_sources/church_event_notification_local_data_source.dart';
import 'package:gbikudus_notification/data/local/hive_adapters/hive_adapters.dart';
import 'package:gbikudus_notification/data/local/hive_adapters/hive_registrar.g.dart';
import 'package:gbikudus_notification/data/local/local_database.dart';
import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';
import 'package:gbikudus_notification/data/repositories/church_event_repository_impl.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';
import 'package:gbikudus_notification/domain/use_cases/list_church_events.dart';
import 'package:gbikudus_notification/domain/use_cases/send_church_event_notification.dart';
import 'package:hive_ce/hive.dart';

/// A container for dependency injection.
/// Mainly contains the instances of the data sources and repositories
/// in singletons.
class InjectionContainer {
  /// Returns the singleton instance of [InjectionContainer].
  factory InjectionContainer() {
    return _instance;
  }

  InjectionContainer._internal();
  static final InjectionContainer _instance = InjectionContainer._internal();

  /// Initializes the container, must be called before using the container.
  Future<void> init() async {
    // Initialize Hive and register adapters
    Hive
      ..init('hive.db')
      ..registerAdapters();

    // Open Hive boxes
    await Hive.openBox<ChurchEventNotificationModel>(
      churchEventNotificationBoxName,
    );
  }

  // declarations --------------------------------------------------------------

  // cores
  Network? _network;
  Time? _time;
  CloudMessaging? _cloudMessaging;

  // hive boxes
  Box<ChurchEventNotificationModel>? _churchEventNotificationBox;

  // data sources
  ChurchEventRemoteDataSource? _churchEventRemoteDataSource;
  LocalDatabase<int, ChurchEventNotificationModel>?
      _churchEventNotificationLocalDataSource;

  // repositories
  ChurchEventRepository? _churchEventRepository;

  // use cases
  SendChurchEventNotification? _sendChurchEventNotification;
  ListChurchEvents? _listChurchEvents;

  // instances -----------------------------------------------------------------

  /// [Network] instance, used for network operations.
  Network get network => _network ??= NetworkImpl();

  /// [Time] instance, used for time operations.
  Time get time => _time ??= const TimeImpl();

  /// [CloudMessaging] instance, used for cloud messaging operations.
  CloudMessaging get cloudMessaging =>
      _cloudMessaging ??= FirebaseCloudMessaging();

  /// [ChurchEventRemoteDataSource] instance, interacts with the church
  /// event API.
  ChurchEventRemoteDataSource get churchEventRemoteDataSource =>
      _churchEventRemoteDataSource ??= ChurchEventRemoteDataSourceImpl(
        network: network,
      );

  /// [Hive] instance, used for local storage of church event notifications.
  Box<ChurchEventNotificationModel> get churchEventNotificationBox =>
      _churchEventNotificationBox ??= Hive.box<ChurchEventNotificationModel>(
        churchEventNotificationBoxName,
      );

  /// [LocalDatabase] instance, interacts with the local storage of church
  /// event notifications.
  LocalDatabase<int, ChurchEventNotificationModel>
      get churchEventNotificationLocalDataSource =>
          _churchEventNotificationLocalDataSource ??=
              ChurchEventNotificationLocalDataSource(
            churchEventNotificationBox,
          );

  /// [ChurchEventRepository] instance
  ChurchEventRepository get churchEventRepository =>
      _churchEventRepository ??= ChurchEventRepositoryImpl(
        remoteDataSource: churchEventRemoteDataSource,
        localDataSource: churchEventNotificationLocalDataSource,
        time: time,
        cloudMessaging: cloudMessaging,
      );

  /// [SendChurchEventNotification] use case instance
  SendChurchEventNotification get sendChurchEventNotification =>
      _sendChurchEventNotification ??= SendChurchEventNotification(
        churchEventRepository: churchEventRepository,
      );

  /// [ListChurchEvents] use case instance
  ListChurchEvents get listChurchEvents => _listChurchEvents ??=
      ListChurchEvents(churchEventRepository: churchEventRepository);
}
