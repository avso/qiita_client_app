// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _ItemToken.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: 'rendered_body')
  String? get renderedBody => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'coediting')
  bool? get coediting => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments_count')
  int? get commentsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'group')
  Map<String, String>? get group => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes_count')
  int? get likesCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'private')
  bool? get private => throw _privateConstructorUsedError;
  @JsonKey(name: 'reactions_count')
  int? get reactionsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'stocks_count')
  int? get stocksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<Tag>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_views_count')
  int? get pageViewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'team_membership')
  Map<String, String>? get teamMembership => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_url_name')
  String? get organizationUrlName => throw _privateConstructorUsedError;
  @JsonKey(name: 'slide')
  bool? get slide => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@JsonKey(name: 'rendered_body') String? renderedBody,
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
      @JsonKey(name: 'slide') bool? slide});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renderedBody = freezed,
    Object? body = freezed,
    Object? coediting = freezed,
    Object? commentsCount = freezed,
    Object? createdAt = freezed,
    Object? group = freezed,
    Object? id = freezed,
    Object? likesCount = freezed,
    Object? private = freezed,
    Object? reactionsCount = freezed,
    Object? stocksCount = freezed,
    Object? tags = freezed,
    Object? title = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
    Object? user = freezed,
    Object? pageViewsCount = freezed,
    Object? teamMembership = freezed,
    Object? organizationUrlName = freezed,
    Object? slide = freezed,
  }) {
    return _then(_value.copyWith(
      renderedBody: freezed == renderedBody
          ? _value.renderedBody
          : renderedBody // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      coediting: freezed == coediting
          ? _value.coediting
          : coediting // ignore: cast_nullable_to_non_nullable
              as bool?,
      commentsCount: freezed == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      private: freezed == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      reactionsCount: freezed == reactionsCount
          ? _value.reactionsCount
          : reactionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stocksCount: freezed == stocksCount
          ? _value.stocksCount
          : stocksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      pageViewsCount: freezed == pageViewsCount
          ? _value.pageViewsCount
          : pageViewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      teamMembership: freezed == teamMembership
          ? _value.teamMembership
          : teamMembership // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      organizationUrlName: freezed == organizationUrlName
          ? _value.organizationUrlName
          : organizationUrlName // ignore: cast_nullable_to_non_nullable
              as String?,
      slide: freezed == slide
          ? _value.slide
          : slide // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemTokenImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemTokenImplCopyWith(
          _$ItemTokenImpl value, $Res Function(_$ItemTokenImpl) then) =
      __$$ItemTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rendered_body') String? renderedBody,
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
      @JsonKey(name: 'slide') bool? slide});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ItemTokenImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemTokenImpl>
    implements _$$ItemTokenImplCopyWith<$Res> {
  __$$ItemTokenImplCopyWithImpl(
      _$ItemTokenImpl _value, $Res Function(_$ItemTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renderedBody = freezed,
    Object? body = freezed,
    Object? coediting = freezed,
    Object? commentsCount = freezed,
    Object? createdAt = freezed,
    Object? group = freezed,
    Object? id = freezed,
    Object? likesCount = freezed,
    Object? private = freezed,
    Object? reactionsCount = freezed,
    Object? stocksCount = freezed,
    Object? tags = freezed,
    Object? title = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
    Object? user = freezed,
    Object? pageViewsCount = freezed,
    Object? teamMembership = freezed,
    Object? organizationUrlName = freezed,
    Object? slide = freezed,
  }) {
    return _then(_$ItemTokenImpl(
      renderedBody: freezed == renderedBody
          ? _value.renderedBody
          : renderedBody // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      coediting: freezed == coediting
          ? _value.coediting
          : coediting // ignore: cast_nullable_to_non_nullable
              as bool?,
      commentsCount: freezed == commentsCount
          ? _value.commentsCount
          : commentsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      group: freezed == group
          ? _value._group
          : group // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      likesCount: freezed == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      private: freezed == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool?,
      reactionsCount: freezed == reactionsCount
          ? _value.reactionsCount
          : reactionsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      stocksCount: freezed == stocksCount
          ? _value.stocksCount
          : stocksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      pageViewsCount: freezed == pageViewsCount
          ? _value.pageViewsCount
          : pageViewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      teamMembership: freezed == teamMembership
          ? _value._teamMembership
          : teamMembership // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      organizationUrlName: freezed == organizationUrlName
          ? _value.organizationUrlName
          : organizationUrlName // ignore: cast_nullable_to_non_nullable
              as String?,
      slide: freezed == slide
          ? _value.slide
          : slide // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemTokenImpl implements _ItemToken {
  _$ItemTokenImpl(
      {@JsonKey(name: 'rendered_body') this.renderedBody,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'coediting') this.coediting,
      @JsonKey(name: 'comments_count') this.commentsCount,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'group') final Map<String, String>? group,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'likes_count') this.likesCount,
      @JsonKey(name: 'private') this.private,
      @JsonKey(name: 'reactions_count') this.reactionsCount,
      @JsonKey(name: 'stocks_count') this.stocksCount,
      @JsonKey(name: 'tags') final List<Tag>? tags,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'page_views_count') this.pageViewsCount,
      @JsonKey(name: 'team_membership')
      final Map<String, String>? teamMembership,
      @JsonKey(name: 'organization_url_name') this.organizationUrlName,
      @JsonKey(name: 'slide') this.slide})
      : _group = group,
        _tags = tags,
        _teamMembership = teamMembership;

  factory _$ItemTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemTokenImplFromJson(json);

  @override
  @JsonKey(name: 'rendered_body')
  final String? renderedBody;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'coediting')
  final bool? coediting;
  @override
  @JsonKey(name: 'comments_count')
  final int? commentsCount;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  final Map<String, String>? _group;
  @override
  @JsonKey(name: 'group')
  Map<String, String>? get group {
    final value = _group;
    if (value == null) return null;
    if (_group is EqualUnmodifiableMapView) return _group;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'likes_count')
  final int? likesCount;
  @override
  @JsonKey(name: 'private')
  final bool? private;
  @override
  @JsonKey(name: 'reactions_count')
  final int? reactionsCount;
  @override
  @JsonKey(name: 'stocks_count')
  final int? stocksCount;
  final List<Tag>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<Tag>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'user')
  final User? user;
  @override
  @JsonKey(name: 'page_views_count')
  final int? pageViewsCount;
  final Map<String, String>? _teamMembership;
  @override
  @JsonKey(name: 'team_membership')
  Map<String, String>? get teamMembership {
    final value = _teamMembership;
    if (value == null) return null;
    if (_teamMembership is EqualUnmodifiableMapView) return _teamMembership;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'organization_url_name')
  final String? organizationUrlName;
  @override
  @JsonKey(name: 'slide')
  final bool? slide;

  @override
  String toString() {
    return 'Item(renderedBody: $renderedBody, body: $body, coediting: $coediting, commentsCount: $commentsCount, createdAt: $createdAt, group: $group, id: $id, likesCount: $likesCount, private: $private, reactionsCount: $reactionsCount, stocksCount: $stocksCount, tags: $tags, title: $title, updatedAt: $updatedAt, url: $url, user: $user, pageViewsCount: $pageViewsCount, teamMembership: $teamMembership, organizationUrlName: $organizationUrlName, slide: $slide)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemTokenImpl &&
            (identical(other.renderedBody, renderedBody) ||
                other.renderedBody == renderedBody) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.coediting, coediting) ||
                other.coediting == coediting) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._group, _group) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.reactionsCount, reactionsCount) ||
                other.reactionsCount == reactionsCount) &&
            (identical(other.stocksCount, stocksCount) ||
                other.stocksCount == stocksCount) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.pageViewsCount, pageViewsCount) ||
                other.pageViewsCount == pageViewsCount) &&
            const DeepCollectionEquality()
                .equals(other._teamMembership, _teamMembership) &&
            (identical(other.organizationUrlName, organizationUrlName) ||
                other.organizationUrlName == organizationUrlName) &&
            (identical(other.slide, slide) || other.slide == slide));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        renderedBody,
        body,
        coediting,
        commentsCount,
        createdAt,
        const DeepCollectionEquality().hash(_group),
        id,
        likesCount,
        private,
        reactionsCount,
        stocksCount,
        const DeepCollectionEquality().hash(_tags),
        title,
        updatedAt,
        url,
        user,
        pageViewsCount,
        const DeepCollectionEquality().hash(_teamMembership),
        organizationUrlName,
        slide
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemTokenImplCopyWith<_$ItemTokenImpl> get copyWith =>
      __$$ItemTokenImplCopyWithImpl<_$ItemTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemTokenImplToJson(
      this,
    );
  }
}

abstract class _ItemToken implements Item {
  factory _ItemToken(
      {@JsonKey(name: 'rendered_body') final String? renderedBody,
      @JsonKey(name: 'body') final String? body,
      @JsonKey(name: 'coediting') final bool? coediting,
      @JsonKey(name: 'comments_count') final int? commentsCount,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'group') final Map<String, String>? group,
      @JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'likes_count') final int? likesCount,
      @JsonKey(name: 'private') final bool? private,
      @JsonKey(name: 'reactions_count') final int? reactionsCount,
      @JsonKey(name: 'stocks_count') final int? stocksCount,
      @JsonKey(name: 'tags') final List<Tag>? tags,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'user') final User? user,
      @JsonKey(name: 'page_views_count') final int? pageViewsCount,
      @JsonKey(name: 'team_membership')
      final Map<String, String>? teamMembership,
      @JsonKey(name: 'organization_url_name') final String? organizationUrlName,
      @JsonKey(name: 'slide') final bool? slide}) = _$ItemTokenImpl;

  factory _ItemToken.fromJson(Map<String, dynamic> json) =
      _$ItemTokenImpl.fromJson;

  @override
  @JsonKey(name: 'rendered_body')
  String? get renderedBody;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'coediting')
  bool? get coediting;
  @override
  @JsonKey(name: 'comments_count')
  int? get commentsCount;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'group')
  Map<String, String>? get group;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'likes_count')
  int? get likesCount;
  @override
  @JsonKey(name: 'private')
  bool? get private;
  @override
  @JsonKey(name: 'reactions_count')
  int? get reactionsCount;
  @override
  @JsonKey(name: 'stocks_count')
  int? get stocksCount;
  @override
  @JsonKey(name: 'tags')
  List<Tag>? get tags;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'user')
  User? get user;
  @override
  @JsonKey(name: 'page_views_count')
  int? get pageViewsCount;
  @override
  @JsonKey(name: 'team_membership')
  Map<String, String>? get teamMembership;
  @override
  @JsonKey(name: 'organization_url_name')
  String? get organizationUrlName;
  @override
  @JsonKey(name: 'slide')
  bool? get slide;
  @override
  @JsonKey(ignore: true)
  _$$ItemTokenImplCopyWith<_$ItemTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
