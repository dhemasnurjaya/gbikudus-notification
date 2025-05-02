import 'package:gbikudus_notification/core/network.dart';
import 'package:gbikudus_notification/data/local/data_sources/church_event_notification_local_data_source.dart';
import 'package:gbikudus_notification/data/local/hive_adapters/hive_adapters.dart';
import 'package:gbikudus_notification/data/local/hive_adapters/hive_registrar.g.dart';
import 'package:gbikudus_notification/data/local/local_database.dart';
import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';
import 'package:gbikudus_notification/data/repositories/church_event_repository_impl.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';
import 'package:gbikudus_notification/domain/use_cases/list_church_events.dart';
import 'package:gbikudus_notification/domain/use_cases/sync_church_events.dart';
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

  // network
  Network? _network;

  // hive boxes
  Box<ChurchEventNotificationModel>? _churchEventNotificationBox;

  // data sources
  ChurchEventRemoteDataSource? _churchEventRemoteDataSource;
  LocalDatabase<String, ChurchEventNotificationModel>?
      _churchEventNotificationLocalDataSource;

  // repositories
  ChurchEventRepository? _churchEventRepository;

  // use cases
  SyncChurchEvents? _syncChurchEvents;
  ListChurchEvents? _listChurchEvents;

  // instances -----------------------------------------------------------------

  /// [Network] instance, used for network operations.
  Network get network => _network ??= NetworkImpl();

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
  LocalDatabase<String, ChurchEventNotificationModel>
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
      );

  /// [SyncChurchEvents] use case instance
  SyncChurchEvents get syncChurchEvents => _syncChurchEvents ??=
      SyncChurchEvents(churchEventRepository: churchEventRepository);

  /// [ListChurchEvents] use case instance
  ListChurchEvents get listChurchEvents => _listChurchEvents ??=
      ListChurchEvents(churchEventRepository: churchEventRepository);
}
