import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qiita_client_app/data/model/tag.dart';
import 'package:qiita_client_app/data/model/user.dart';

part 'generated/item.freezed.dart';
part 'generated/item.g.dart';

@freezed
abstract class Item with _$Item {
  factory Item({
    @JsonKey(name: 'rendered_body') String? renderedBody,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'coediting') bool? coediting,
    @JsonKey(name: 'comments_count') int? commentsCount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'group') Map<String, String>? group,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'likes_count') int? likesCount,
    @JsonKey(name: 'private') bool? private,
    @JsonKey(name: 'reactions_count') int? reactionsCount,
    @JsonKey(name: 'stocks_count') int? stocksCount,
    @JsonKey(name: 'tags') List<Tag>? tags,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'page_views_count') int? pageViewsCount,
    @JsonKey(name: 'team_membership') Map<String, String>? teamMembership,
    @JsonKey(name: 'organization_url_name') String? organizationUrlName,
    @JsonKey(name: 'slide') bool? slide,
  }) = _ItemToken;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
