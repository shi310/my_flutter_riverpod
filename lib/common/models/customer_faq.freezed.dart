// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_faq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerFaqTypeListModel {
  List<CustomerFaqTypeModel>? get list;

  /// Create a copy of CustomerFaqTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerFaqTypeListModelCopyWith<CustomerFaqTypeListModel> get copyWith =>
      _$CustomerFaqTypeListModelCopyWithImpl<CustomerFaqTypeListModel>(
          this as CustomerFaqTypeListModel, _$identity);

  /// Serializes this CustomerFaqTypeListModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerFaqTypeListModel &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @override
  String toString() {
    return 'CustomerFaqTypeListModel(list: $list)';
  }
}

/// @nodoc
abstract mixin class $CustomerFaqTypeListModelCopyWith<$Res> {
  factory $CustomerFaqTypeListModelCopyWith(CustomerFaqTypeListModel value,
          $Res Function(CustomerFaqTypeListModel) _then) =
      _$CustomerFaqTypeListModelCopyWithImpl;
  @useResult
  $Res call({List<CustomerFaqTypeModel>? list});
}

/// @nodoc
class _$CustomerFaqTypeListModelCopyWithImpl<$Res>
    implements $CustomerFaqTypeListModelCopyWith<$Res> {
  _$CustomerFaqTypeListModelCopyWithImpl(this._self, this._then);

  final CustomerFaqTypeListModel _self;
  final $Res Function(CustomerFaqTypeListModel) _then;

  /// Create a copy of CustomerFaqTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_self.copyWith(
      list: freezed == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CustomerFaqTypeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CustomerFaqTypeListModel implements CustomerFaqTypeListModel {
  const _CustomerFaqTypeListModel({final List<CustomerFaqTypeModel>? list})
      : _list = list;
  factory _CustomerFaqTypeListModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerFaqTypeListModelFromJson(json);

  final List<CustomerFaqTypeModel>? _list;
  @override
  List<CustomerFaqTypeModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CustomerFaqTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerFaqTypeListModelCopyWith<_CustomerFaqTypeListModel> get copyWith =>
      __$CustomerFaqTypeListModelCopyWithImpl<_CustomerFaqTypeListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerFaqTypeListModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerFaqTypeListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @override
  String toString() {
    return 'CustomerFaqTypeListModel(list: $list)';
  }
}

/// @nodoc
abstract mixin class _$CustomerFaqTypeListModelCopyWith<$Res>
    implements $CustomerFaqTypeListModelCopyWith<$Res> {
  factory _$CustomerFaqTypeListModelCopyWith(_CustomerFaqTypeListModel value,
          $Res Function(_CustomerFaqTypeListModel) _then) =
      __$CustomerFaqTypeListModelCopyWithImpl;
  @override
  @useResult
  $Res call({List<CustomerFaqTypeModel>? list});
}

/// @nodoc
class __$CustomerFaqTypeListModelCopyWithImpl<$Res>
    implements _$CustomerFaqTypeListModelCopyWith<$Res> {
  __$CustomerFaqTypeListModelCopyWithImpl(this._self, this._then);

  final _CustomerFaqTypeListModel _self;
  final $Res Function(_CustomerFaqTypeListModel) _then;

  /// Create a copy of CustomerFaqTypeListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_CustomerFaqTypeListModel(
      list: freezed == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CustomerFaqTypeModel>?,
    ));
  }
}

/// @nodoc
mixin _$CustomerFaqTypeModel {
  int? get id;
  int? get sort;
  String? get categoryName;

  /// Create a copy of CustomerFaqTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerFaqTypeModelCopyWith<CustomerFaqTypeModel> get copyWith =>
      _$CustomerFaqTypeModelCopyWithImpl<CustomerFaqTypeModel>(
          this as CustomerFaqTypeModel, _$identity);

  /// Serializes this CustomerFaqTypeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerFaqTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sort, categoryName);

  @override
  String toString() {
    return 'CustomerFaqTypeModel(id: $id, sort: $sort, categoryName: $categoryName)';
  }
}

/// @nodoc
abstract mixin class $CustomerFaqTypeModelCopyWith<$Res> {
  factory $CustomerFaqTypeModelCopyWith(CustomerFaqTypeModel value,
          $Res Function(CustomerFaqTypeModel) _then) =
      _$CustomerFaqTypeModelCopyWithImpl;
  @useResult
  $Res call({int? id, int? sort, String? categoryName});
}

/// @nodoc
class _$CustomerFaqTypeModelCopyWithImpl<$Res>
    implements $CustomerFaqTypeModelCopyWith<$Res> {
  _$CustomerFaqTypeModelCopyWithImpl(this._self, this._then);

  final CustomerFaqTypeModel _self;
  final $Res Function(CustomerFaqTypeModel) _then;

  /// Create a copy of CustomerFaqTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sort = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CustomerFaqTypeModel implements CustomerFaqTypeModel {
  const _CustomerFaqTypeModel({this.id, this.sort, this.categoryName});
  factory _CustomerFaqTypeModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerFaqTypeModelFromJson(json);

  @override
  final int? id;
  @override
  final int? sort;
  @override
  final String? categoryName;

  /// Create a copy of CustomerFaqTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerFaqTypeModelCopyWith<_CustomerFaqTypeModel> get copyWith =>
      __$CustomerFaqTypeModelCopyWithImpl<_CustomerFaqTypeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerFaqTypeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerFaqTypeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sort, categoryName);

  @override
  String toString() {
    return 'CustomerFaqTypeModel(id: $id, sort: $sort, categoryName: $categoryName)';
  }
}

/// @nodoc
abstract mixin class _$CustomerFaqTypeModelCopyWith<$Res>
    implements $CustomerFaqTypeModelCopyWith<$Res> {
  factory _$CustomerFaqTypeModelCopyWith(_CustomerFaqTypeModel value,
          $Res Function(_CustomerFaqTypeModel) _then) =
      __$CustomerFaqTypeModelCopyWithImpl;
  @override
  @useResult
  $Res call({int? id, int? sort, String? categoryName});
}

/// @nodoc
class __$CustomerFaqTypeModelCopyWithImpl<$Res>
    implements _$CustomerFaqTypeModelCopyWith<$Res> {
  __$CustomerFaqTypeModelCopyWithImpl(this._self, this._then);

  final _CustomerFaqTypeModel _self;
  final $Res Function(_CustomerFaqTypeModel) _then;

  /// Create a copy of CustomerFaqTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? sort = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(_CustomerFaqTypeModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _self.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$CustomerFaqListModel {
  List<CustomerFaqInfoModel>? get list;

  /// Create a copy of CustomerFaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerFaqListModelCopyWith<CustomerFaqListModel> get copyWith =>
      _$CustomerFaqListModelCopyWithImpl<CustomerFaqListModel>(
          this as CustomerFaqListModel, _$identity);

  /// Serializes this CustomerFaqListModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerFaqListModel &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @override
  String toString() {
    return 'CustomerFaqListModel(list: $list)';
  }
}

/// @nodoc
abstract mixin class $CustomerFaqListModelCopyWith<$Res> {
  factory $CustomerFaqListModelCopyWith(CustomerFaqListModel value,
          $Res Function(CustomerFaqListModel) _then) =
      _$CustomerFaqListModelCopyWithImpl;
  @useResult
  $Res call({List<CustomerFaqInfoModel>? list});
}

/// @nodoc
class _$CustomerFaqListModelCopyWithImpl<$Res>
    implements $CustomerFaqListModelCopyWith<$Res> {
  _$CustomerFaqListModelCopyWithImpl(this._self, this._then);

  final CustomerFaqListModel _self;
  final $Res Function(CustomerFaqListModel) _then;

  /// Create a copy of CustomerFaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_self.copyWith(
      list: freezed == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CustomerFaqInfoModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CustomerFaqListModel implements CustomerFaqListModel {
  const _CustomerFaqListModel({final List<CustomerFaqInfoModel>? list})
      : _list = list;
  factory _CustomerFaqListModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerFaqListModelFromJson(json);

  final List<CustomerFaqInfoModel>? _list;
  @override
  List<CustomerFaqInfoModel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CustomerFaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerFaqListModelCopyWith<_CustomerFaqListModel> get copyWith =>
      __$CustomerFaqListModelCopyWithImpl<_CustomerFaqListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerFaqListModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerFaqListModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @override
  String toString() {
    return 'CustomerFaqListModel(list: $list)';
  }
}

/// @nodoc
abstract mixin class _$CustomerFaqListModelCopyWith<$Res>
    implements $CustomerFaqListModelCopyWith<$Res> {
  factory _$CustomerFaqListModelCopyWith(_CustomerFaqListModel value,
          $Res Function(_CustomerFaqListModel) _then) =
      __$CustomerFaqListModelCopyWithImpl;
  @override
  @useResult
  $Res call({List<CustomerFaqInfoModel>? list});
}

/// @nodoc
class __$CustomerFaqListModelCopyWithImpl<$Res>
    implements _$CustomerFaqListModelCopyWith<$Res> {
  __$CustomerFaqListModelCopyWithImpl(this._self, this._then);

  final _CustomerFaqListModel _self;
  final $Res Function(_CustomerFaqListModel) _then;

  /// Create a copy of CustomerFaqListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_CustomerFaqListModel(
      list: freezed == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CustomerFaqInfoModel>?,
    ));
  }
}

/// @nodoc
mixin _$CustomerFaqInfoModel {
  int? get id;
  String? get title;
  int? get symbol;
  String? get answer;
  String? get picUrl;
  int? get sort;

  /// Create a copy of CustomerFaqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CustomerFaqInfoModelCopyWith<CustomerFaqInfoModel> get copyWith =>
      _$CustomerFaqInfoModelCopyWithImpl<CustomerFaqInfoModel>(
          this as CustomerFaqInfoModel, _$identity);

  /// Serializes this CustomerFaqInfoModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomerFaqInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, symbol, answer, picUrl, sort);

  @override
  String toString() {
    return 'CustomerFaqInfoModel(id: $id, title: $title, symbol: $symbol, answer: $answer, picUrl: $picUrl, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class $CustomerFaqInfoModelCopyWith<$Res> {
  factory $CustomerFaqInfoModelCopyWith(CustomerFaqInfoModel value,
          $Res Function(CustomerFaqInfoModel) _then) =
      _$CustomerFaqInfoModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? symbol,
      String? answer,
      String? picUrl,
      int? sort});
}

/// @nodoc
class _$CustomerFaqInfoModelCopyWithImpl<$Res>
    implements $CustomerFaqInfoModelCopyWith<$Res> {
  _$CustomerFaqInfoModelCopyWithImpl(this._self, this._then);

  final CustomerFaqInfoModel _self;
  final $Res Function(CustomerFaqInfoModel) _then;

  /// Create a copy of CustomerFaqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? symbol = freezed,
    Object? answer = freezed,
    Object? picUrl = freezed,
    Object? sort = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as int?,
      answer: freezed == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      picUrl: freezed == picUrl
          ? _self.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CustomerFaqInfoModel implements CustomerFaqInfoModel {
  const _CustomerFaqInfoModel(
      {this.id, this.title, this.symbol, this.answer, this.picUrl, this.sort});
  factory _CustomerFaqInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerFaqInfoModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final int? symbol;
  @override
  final String? answer;
  @override
  final String? picUrl;
  @override
  final int? sort;

  /// Create a copy of CustomerFaqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CustomerFaqInfoModelCopyWith<_CustomerFaqInfoModel> get copyWith =>
      __$CustomerFaqInfoModelCopyWithImpl<_CustomerFaqInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CustomerFaqInfoModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerFaqInfoModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, symbol, answer, picUrl, sort);

  @override
  String toString() {
    return 'CustomerFaqInfoModel(id: $id, title: $title, symbol: $symbol, answer: $answer, picUrl: $picUrl, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class _$CustomerFaqInfoModelCopyWith<$Res>
    implements $CustomerFaqInfoModelCopyWith<$Res> {
  factory _$CustomerFaqInfoModelCopyWith(_CustomerFaqInfoModel value,
          $Res Function(_CustomerFaqInfoModel) _then) =
      __$CustomerFaqInfoModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      int? symbol,
      String? answer,
      String? picUrl,
      int? sort});
}

/// @nodoc
class __$CustomerFaqInfoModelCopyWithImpl<$Res>
    implements _$CustomerFaqInfoModelCopyWith<$Res> {
  __$CustomerFaqInfoModelCopyWithImpl(this._self, this._then);

  final _CustomerFaqInfoModel _self;
  final $Res Function(_CustomerFaqInfoModel) _then;

  /// Create a copy of CustomerFaqInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? symbol = freezed,
    Object? answer = freezed,
    Object? picUrl = freezed,
    Object? sort = freezed,
  }) {
    return _then(_CustomerFaqInfoModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: freezed == symbol
          ? _self.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as int?,
      answer: freezed == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      picUrl: freezed == picUrl
          ? _self.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
