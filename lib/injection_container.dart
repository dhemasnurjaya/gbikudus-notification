import 'package:gbikudus_notification/core/network.dart';
import 'package:gbikudus_notification/data/local/data_sources/church_event_notification_local_data_source.dart';
import 'package:gbikudus_notification/data/local/local_database.dart';
import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';
import 'package:gbikudus_notification/data/repositories/church_event_repository_impl.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repositories.dart';
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
        'church_event_notification',
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
}
