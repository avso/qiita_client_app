import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/tag.freezed.dart';
part 'generated/tag.g.dart';

@freezed
abstract class Tag with _$Tag {
  factory Tag({
    String? name,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}
