import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/user.freezed.dart';
part 'generated/user.g.dart';

@freezed
abstract class User with _$User {
  factory User({
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'facebook_id') String? facebookId,
    @JsonKey(name: 'followees_count') int? followeesCount,
    @JsonKey(name: 'followers_count') int? followersCount,
    @JsonKey(name: 'github_login_name') String? githubLoginName,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'items_count') int? itemsCount,
    @JsonKey(name: 'linkedin_id') String? linkedinId,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'organization') String? organization,
    @JsonKey(name: 'permanent_id') int? permanentId,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'team_only') bool? teamOnly,
    @JsonKey(name: 'twitter_screen_name') String? twitterScreenName,
    @JsonKey(name: 'website_url') String? websiteUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
