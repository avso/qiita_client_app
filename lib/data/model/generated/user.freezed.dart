// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_id')
  String? get facebookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'followees_count')
  int? get followeesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers_count')
  int? get followersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'github_login_name')
  String? get githubLoginName => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_count')
  int? get itemsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'linkedin_id')
  String? get linkedinId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization')
  String? get organization => throw _privateConstructorUsedError;
  @JsonKey(name: 'permanent_id')
  int? get permanentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_only')
  bool? get teamOnly => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_screen_name')
  String? get twitterScreenName => throw _privateConstructorUsedError;
  @JsonKey(name: 'website_url')
  String? get websiteUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
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
      @JsonKey(name: 'website_url') String? websiteUrl});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? facebookId = freezed,
    Object? followeesCount = freezed,
    Object? followersCount = freezed,
    Object? githubLoginName = freezed,
    Object? id = freezed,
    Object? itemsCount = freezed,
    Object? linkedinId = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? organization = freezed,
    Object? permanentId = freezed,
    Object? profileImageUrl = freezed,
    Object? teamOnly = freezed,
    Object? twitterScreenName = freezed,
    Object? websiteUrl = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: freezed == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      followeesCount: freezed == followeesCount
          ? _value.followeesCount
          : followeesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      githubLoginName: freezed == githubLoginName
          ? _value.githubLoginName
          : githubLoginName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsCount: freezed == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      linkedinId: freezed == linkedinId
          ? _value.linkedinId
          : linkedinId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentId: freezed == permanentId
          ? _value.permanentId
          : permanentId // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      teamOnly: freezed == teamOnly
          ? _value.teamOnly
          : teamOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      twitterScreenName: freezed == twitterScreenName
          ? _value.twitterScreenName
          : twitterScreenName // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'description') String? description,
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
      @JsonKey(name: 'website_url') String? websiteUrl});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? facebookId = freezed,
    Object? followeesCount = freezed,
    Object? followersCount = freezed,
    Object? githubLoginName = freezed,
    Object? id = freezed,
    Object? itemsCount = freezed,
    Object? linkedinId = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? organization = freezed,
    Object? permanentId = freezed,
    Object? profileImageUrl = freezed,
    Object? teamOnly = freezed,
    Object? twitterScreenName = freezed,
    Object? websiteUrl = freezed,
  }) {
    return _then(_$UserImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: freezed == facebookId
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      followeesCount: freezed == followeesCount
          ? _value.followeesCount
          : followeesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      githubLoginName: freezed == githubLoginName
          ? _value.githubLoginName
          : githubLoginName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      itemsCount: freezed == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      linkedinId: freezed == linkedinId
          ? _value.linkedinId
          : linkedinId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      permanentId: freezed == permanentId
          ? _value.permanentId
          : permanentId // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      teamOnly: freezed == teamOnly
          ? _value.teamOnly
          : teamOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      twitterScreenName: freezed == twitterScreenName
          ? _value.twitterScreenName
          : twitterScreenName // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {@JsonKey(name: 'description') this.description,
      @JsonKey(name: 'facebook_id') this.facebookId,
      @JsonKey(name: 'followees_count') this.followeesCount,
      @JsonKey(name: 'followers_count') this.followersCount,
      @JsonKey(name: 'github_login_name') this.githubLoginName,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'items_count') this.itemsCount,
      @JsonKey(name: 'linkedin_id') this.linkedinId,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'organization') this.organization,
      @JsonKey(name: 'permanent_id') this.permanentId,
      @JsonKey(name: 'profile_image_url') this.profileImageUrl,
      @JsonKey(name: 'team_only') this.teamOnly,
      @JsonKey(name: 'twitter_screen_name') this.twitterScreenName,
      @JsonKey(name: 'website_url') this.websiteUrl});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'facebook_id')
  final String? facebookId;
  @override
  @JsonKey(name: 'followees_count')
  final int? followeesCount;
  @override
  @JsonKey(name: 'followers_count')
  final int? followersCount;
  @override
  @JsonKey(name: 'github_login_name')
  final String? githubLoginName;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'items_count')
  final int? itemsCount;
  @override
  @JsonKey(name: 'linkedin_id')
  final String? linkedinId;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'organization')
  final String? organization;
  @override
  @JsonKey(name: 'permanent_id')
  final int? permanentId;
  @override
  @JsonKey(name: 'profile_image_url')
  final String? profileImageUrl;
  @override
  @JsonKey(name: 'team_only')
  final bool? teamOnly;
  @override
  @JsonKey(name: 'twitter_screen_name')
  final String? twitterScreenName;
  @override
  @JsonKey(name: 'website_url')
  final String? websiteUrl;

  @override
  String toString() {
    return 'User(description: $description, facebookId: $facebookId, followeesCount: $followeesCount, followersCount: $followersCount, githubLoginName: $githubLoginName, id: $id, itemsCount: $itemsCount, linkedinId: $linkedinId, location: $location, name: $name, organization: $organization, permanentId: $permanentId, profileImageUrl: $profileImageUrl, teamOnly: $teamOnly, twitterScreenName: $twitterScreenName, websiteUrl: $websiteUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.facebookId, facebookId) ||
                other.facebookId == facebookId) &&
            (identical(other.followeesCount, followeesCount) ||
                other.followeesCount == followeesCount) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.githubLoginName, githubLoginName) ||
                other.githubLoginName == githubLoginName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.linkedinId, linkedinId) ||
                other.linkedinId == linkedinId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.permanentId, permanentId) ||
                other.permanentId == permanentId) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.teamOnly, teamOnly) ||
                other.teamOnly == teamOnly) &&
            (identical(other.twitterScreenName, twitterScreenName) ||
                other.twitterScreenName == twitterScreenName) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      description,
      facebookId,
      followeesCount,
      followersCount,
      githubLoginName,
      id,
      itemsCount,
      linkedinId,
      location,
      name,
      organization,
      permanentId,
      profileImageUrl,
      teamOnly,
      twitterScreenName,
      websiteUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'facebook_id') final String? facebookId,
      @JsonKey(name: 'followees_count') final int? followeesCount,
      @JsonKey(name: 'followers_count') final int? followersCount,
      @JsonKey(name: 'github_login_name') final String? githubLoginName,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'items_count') final int? itemsCount,
      @JsonKey(name: 'linkedin_id') final String? linkedinId,
      @JsonKey(name: 'location') final String? location,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'organization') final String? organization,
      @JsonKey(name: 'permanent_id') final int? permanentId,
      @JsonKey(name: 'profile_image_url') final String? profileImageUrl,
      @JsonKey(name: 'team_only') final bool? teamOnly,
      @JsonKey(name: 'twitter_screen_name') final String? twitterScreenName,
      @JsonKey(name: 'website_url') final String? websiteUrl}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'facebook_id')
  String? get facebookId;
  @override
  @JsonKey(name: 'followees_count')
  int? get followeesCount;
  @override
  @JsonKey(name: 'followers_count')
  int? get followersCount;
  @override
  @JsonKey(name: 'github_login_name')
  String? get githubLoginName;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'items_count')
  int? get itemsCount;
  @override
  @JsonKey(name: 'linkedin_id')
  String? get linkedinId;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'organization')
  String? get organization;
  @override
  @JsonKey(name: 'permanent_id')
  int? get permanentId;
  @override
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl;
  @override
  @JsonKey(name: 'team_only')
  bool? get teamOnly;
  @override
  @JsonKey(name: 'twitter_screen_name')
  String? get twitterScreenName;
  @override
  @JsonKey(name: 'website_url')
  String? get websiteUrl;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
