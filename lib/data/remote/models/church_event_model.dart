import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';

part 'church_event_model.freezed.dart';
part 'church_event_model.g.dart';

/// Represents a church event response from the API.
/// Used in the [ChurchEventRemoteDataSource] remote data source.
@freezed
sealed class ChurchEventModel with _$ChurchEventModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChurchEventModel({
    required int id,
    required String startDate,
    required String endDate,
    required String title,
    required String description,
    required String image,
  }) = _ChurchEventModel;

  factory ChurchEventModel.fromJson(Map<String, dynamic> json) =>
      _$ChurchEventModelFromJson(json);
}
