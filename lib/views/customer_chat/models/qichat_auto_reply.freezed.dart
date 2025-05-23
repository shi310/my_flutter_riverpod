// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qichat_auto_reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QiChatAutoReplyModel {
  AutoReplyItemModel? get autoReplyItem;
  String? get createTime;

  /// Create a copy of QiChatAutoReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QiChatAutoReplyModelCopyWith<QiChatAutoReplyModel> get copyWith =>
      _$QiChatAutoReplyModelCopyWithImpl<QiChatAutoReplyModel>(
          this as QiChatAutoReplyModel, _$identity);

  /// Serializes this QiChatAutoReplyModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QiChatAutoReplyModel &&
            (identical(other.autoReplyItem, autoReplyItem) ||
                other.autoReplyItem == autoReplyItem) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, autoReplyItem, createTime);

  @override
  String toString() {
    return 'QiChatAutoReplyModel(autoReplyItem: $autoReplyItem, createTime: $createTime)';
  }
}

/// @nodoc
abstract mixin class $QiChatAutoReplyModelCopyWith<$Res> {
  factory $QiChatAutoReplyModelCopyWith(QiChatAutoReplyModel value,
          $Res Function(QiChatAutoReplyModel) _then) =
      _$QiChatAutoReplyModelCopyWithImpl;
  @useResult
  $Res call({AutoReplyItemModel? autoReplyItem, String? createTime});

  $AutoReplyItemModelCopyWith<$Res>? get autoReplyItem;
}

/// @nodoc
class _$QiChatAutoReplyModelCopyWithImpl<$Res>
    implements $QiChatAutoReplyModelCopyWith<$Res> {
  _$QiChatAutoReplyModelCopyWithImpl(this._self, this._then);

  final QiChatAutoReplyModel _self;
  final $Res Function(QiChatAutoReplyModel) _then;

  /// Create a copy of QiChatAutoReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? autoReplyItem = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_self.copyWith(
      autoReplyItem: freezed == autoReplyItem
          ? _self.autoReplyItem
          : autoReplyItem // ignore: cast_nullable_to_non_nullable
              as AutoReplyItemModel?,
      createTime: freezed == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of QiChatAutoReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoReplyItemModelCopyWith<$Res>? get autoReplyItem {
    if (_self.autoReplyItem == null) {
      return null;
    }

    return $AutoReplyItemModelCopyWith<$Res>(_self.autoReplyItem!, (value) {
      return _then(_self.copyWith(autoReplyItem: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _QiChatAutoReplyModel implements QiChatAutoReplyModel {
  const _QiChatAutoReplyModel({this.autoReplyItem, this.createTime});
  factory _QiChatAutoReplyModel.fromJson(Map<String, dynamic> json) =>
      _$QiChatAutoReplyModelFromJson(json);

  @override
  final AutoReplyItemModel? autoReplyItem;
  @override
  final String? createTime;

  /// Create a copy of QiChatAutoReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QiChatAutoReplyModelCopyWith<_QiChatAutoReplyModel> get copyWith =>
      __$QiChatAutoReplyModelCopyWithImpl<_QiChatAutoReplyModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QiChatAutoReplyModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QiChatAutoReplyModel &&
            (identical(other.autoReplyItem, autoReplyItem) ||
                other.autoReplyItem == autoReplyItem) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, autoReplyItem, createTime);

  @override
  String toString() {
    return 'QiChatAutoReplyModel(autoReplyItem: $autoReplyItem, createTime: $createTime)';
  }
}

/// @nodoc
abstract mixin class _$QiChatAutoReplyModelCopyWith<$Res>
    implements $QiChatAutoReplyModelCopyWith<$Res> {
  factory _$QiChatAutoReplyModelCopyWith(_QiChatAutoReplyModel value,
          $Res Function(_QiChatAutoReplyModel) _then) =
      __$QiChatAutoReplyModelCopyWithImpl;
  @override
  @useResult
  $Res call({AutoReplyItemModel? autoReplyItem, String? createTime});

  @override
  $AutoReplyItemModelCopyWith<$Res>? get autoReplyItem;
}

/// @nodoc
class __$QiChatAutoReplyModelCopyWithImpl<$Res>
    implements _$QiChatAutoReplyModelCopyWith<$Res> {
  __$QiChatAutoReplyModelCopyWithImpl(this._self, this._then);

  final _QiChatAutoReplyModel _self;
  final $Res Function(_QiChatAutoReplyModel) _then;

  /// Create a copy of QiChatAutoReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? autoReplyItem = freezed,
    Object? createTime = freezed,
  }) {
    return _then(_QiChatAutoReplyModel(
      autoReplyItem: freezed == autoReplyItem
          ? _self.autoReplyItem
          : autoReplyItem // ignore: cast_nullable_to_non_nullable
              as AutoReplyItemModel?,
      createTime: freezed == createTime
          ? _self.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of QiChatAutoReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AutoReplyItemModelCopyWith<$Res>? get autoReplyItem {
    if (_self.autoReplyItem == null) {
      return null;
    }

    return $AutoReplyItemModelCopyWith<$Res>(_self.autoReplyItem!, (value) {
      return _then(_self.copyWith(autoReplyItem: value));
    });
  }
}

/// @nodoc
mixin _$AutoReplyItemModel {
  String? get id;
  String? get name;
  String? get title;
  List<Qa>? get qa;
  List<int>? get workerId;
  List<String>? get workerNames;

  /// Create a copy of AutoReplyItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AutoReplyItemModelCopyWith<AutoReplyItemModel> get copyWith =>
      _$AutoReplyItemModelCopyWithImpl<AutoReplyItemModel>(
          this as AutoReplyItemModel, _$identity);

  /// Serializes this AutoReplyItemModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AutoReplyItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.qa, qa) &&
            const DeepCollectionEquality().equals(other.workerId, workerId) &&
            const DeepCollectionEquality()
                .equals(other.workerNames, workerNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      title,
      const DeepCollectionEquality().hash(qa),
      const DeepCollectionEquality().hash(workerId),
      const DeepCollectionEquality().hash(workerNames));

  @override
  String toString() {
    return 'AutoReplyItemModel(id: $id, name: $name, title: $title, qa: $qa, workerId: $workerId, workerNames: $workerNames)';
  }
}

/// @nodoc
abstract mixin class $AutoReplyItemModelCopyWith<$Res> {
  factory $AutoReplyItemModelCopyWith(
          AutoReplyItemModel value, $Res Function(AutoReplyItemModel) _then) =
      _$AutoReplyItemModelCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? title,
      List<Qa>? qa,
      List<int>? workerId,
      List<String>? workerNames});
}

/// @nodoc
class _$AutoReplyItemModelCopyWithImpl<$Res>
    implements $AutoReplyItemModelCopyWith<$Res> {
  _$AutoReplyItemModelCopyWithImpl(this._self, this._then);

  final AutoReplyItemModel _self;
  final $Res Function(AutoReplyItemModel) _then;

  /// Create a copy of AutoReplyItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? qa = freezed,
    Object? workerId = freezed,
    Object? workerNames = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      qa: freezed == qa
          ? _self.qa
          : qa // ignore: cast_nullable_to_non_nullable
              as List<Qa>?,
      workerId: freezed == workerId
          ? _self.workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      workerNames: freezed == workerNames
          ? _self.workerNames
          : workerNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AutoReplyItemModel implements AutoReplyItemModel {
  const _AutoReplyItemModel(
      {this.id,
      this.name,
      this.title,
      final List<Qa>? qa,
      final List<int>? workerId,
      final List<String>? workerNames})
      : _qa = qa,
        _workerId = workerId,
        _workerNames = workerNames;
  factory _AutoReplyItemModel.fromJson(Map<String, dynamic> json) =>
      _$AutoReplyItemModelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? title;
  final List<Qa>? _qa;
  @override
  List<Qa>? get qa {
    final value = _qa;
    if (value == null) return null;
    if (_qa is EqualUnmodifiableListView) return _qa;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _workerId;
  @override
  List<int>? get workerId {
    final value = _workerId;
    if (value == null) return null;
    if (_workerId is EqualUnmodifiableListView) return _workerId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _workerNames;
  @override
  List<String>? get workerNames {
    final value = _workerNames;
    if (value == null) return null;
    if (_workerNames is EqualUnmodifiableListView) return _workerNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of AutoReplyItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AutoReplyItemModelCopyWith<_AutoReplyItemModel> get copyWith =>
      __$AutoReplyItemModelCopyWithImpl<_AutoReplyItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AutoReplyItemModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoReplyItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._qa, _qa) &&
            const DeepCollectionEquality().equals(other._workerId, _workerId) &&
            const DeepCollectionEquality()
                .equals(other._workerNames, _workerNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      title,
      const DeepCollectionEquality().hash(_qa),
      const DeepCollectionEquality().hash(_workerId),
      const DeepCollectionEquality().hash(_workerNames));

  @override
  String toString() {
    return 'AutoReplyItemModel(id: $id, name: $name, title: $title, qa: $qa, workerId: $workerId, workerNames: $workerNames)';
  }
}

/// @nodoc
abstract mixin class _$AutoReplyItemModelCopyWith<$Res>
    implements $AutoReplyItemModelCopyWith<$Res> {
  factory _$AutoReplyItemModelCopyWith(
          _AutoReplyItemModel value, $Res Function(_AutoReplyItemModel) _then) =
      __$AutoReplyItemModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? title,
      List<Qa>? qa,
      List<int>? workerId,
      List<String>? workerNames});
}

/// @nodoc
class __$AutoReplyItemModelCopyWithImpl<$Res>
    implements _$AutoReplyItemModelCopyWith<$Res> {
  __$AutoReplyItemModelCopyWithImpl(this._self, this._then);

  final _AutoReplyItemModel _self;
  final $Res Function(_AutoReplyItemModel) _then;

  /// Create a copy of AutoReplyItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? title = freezed,
    Object? qa = freezed,
    Object? workerId = freezed,
    Object? workerNames = freezed,
  }) {
    return _then(_AutoReplyItemModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      qa: freezed == qa
          ? _self._qa
          : qa // ignore: cast_nullable_to_non_nullable
              as List<Qa>?,
      workerId: freezed == workerId
          ? _self._workerId
          : workerId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      workerNames: freezed == workerNames
          ? _self._workerNames
          : workerNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
mixin _$Qa {
  int? get id;
  Question? get question;
  String? get content;
  List<Question>? get answer;
  List<Qa>? get related;

  /// Create a copy of Qa
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QaCopyWith<Qa> get copyWith => _$QaCopyWithImpl<Qa>(this as Qa, _$identity);

  /// Serializes this Qa to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Qa &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality().equals(other.related, related));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      content,
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(related));

  @override
  String toString() {
    return 'Qa(id: $id, question: $question, content: $content, answer: $answer, related: $related)';
  }
}

/// @nodoc
abstract mixin class $QaCopyWith<$Res> {
  factory $QaCopyWith(Qa value, $Res Function(Qa) _then) = _$QaCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      Question? question,
      String? content,
      List<Question>? answer,
      List<Qa>? related});

  $QuestionCopyWith<$Res>? get question;
}

/// @nodoc
class _$QaCopyWithImpl<$Res> implements $QaCopyWith<$Res> {
  _$QaCopyWithImpl(this._self, this._then);

  final Qa _self;
  final $Res Function(Qa) _then;

  /// Create a copy of Qa
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? content = freezed,
    Object? answer = freezed,
    Object? related = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      related: freezed == related
          ? _self.related
          : related // ignore: cast_nullable_to_non_nullable
              as List<Qa>?,
    ));
  }

  /// Create a copy of Qa
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res>? get question {
    if (_self.question == null) {
      return null;
    }

    return $QuestionCopyWith<$Res>(_self.question!, (value) {
      return _then(_self.copyWith(question: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Qa implements Qa {
  const _Qa(
      {this.id,
      this.question,
      this.content,
      final List<Question>? answer,
      final List<Qa>? related})
      : _answer = answer,
        _related = related;
  factory _Qa.fromJson(Map<String, dynamic> json) => _$QaFromJson(json);

  @override
  final int? id;
  @override
  final Question? question;
  @override
  final String? content;
  final List<Question>? _answer;
  @override
  List<Question>? get answer {
    final value = _answer;
    if (value == null) return null;
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Qa>? _related;
  @override
  List<Qa>? get related {
    final value = _related;
    if (value == null) return null;
    if (_related is EqualUnmodifiableListView) return _related;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of Qa
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QaCopyWith<_Qa> get copyWith => __$QaCopyWithImpl<_Qa>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Qa &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._answer, _answer) &&
            const DeepCollectionEquality().equals(other._related, _related));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      content,
      const DeepCollectionEquality().hash(_answer),
      const DeepCollectionEquality().hash(_related));

  @override
  String toString() {
    return 'Qa(id: $id, question: $question, content: $content, answer: $answer, related: $related)';
  }
}

/// @nodoc
abstract mixin class _$QaCopyWith<$Res> implements $QaCopyWith<$Res> {
  factory _$QaCopyWith(_Qa value, $Res Function(_Qa) _then) = __$QaCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      Question? question,
      String? content,
      List<Question>? answer,
      List<Qa>? related});

  @override
  $QuestionCopyWith<$Res>? get question;
}

/// @nodoc
class __$QaCopyWithImpl<$Res> implements _$QaCopyWith<$Res> {
  __$QaCopyWithImpl(this._self, this._then);

  final _Qa _self;
  final $Res Function(_Qa) _then;

  /// Create a copy of Qa
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? content = freezed,
    Object? answer = freezed,
    Object? related = freezed,
  }) {
    return _then(_Qa(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: freezed == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _self._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      related: freezed == related
          ? _self._related
          : related // ignore: cast_nullable_to_non_nullable
              as List<Qa>?,
    ));
  }

  /// Create a copy of Qa
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res>? get question {
    if (_self.question == null) {
      return null;
    }

    return $QuestionCopyWith<$Res>(_self.question!, (value) {
      return _then(_self.copyWith(question: value));
    });
  }
}

/// @nodoc
mixin _$Question {
  String? get chatId;
  String? get msgId;
  String? get msgTime;
  String? get sender;
  String? get replyMsgId;
  String? get msgOp;
  int? get worker;
  String? get autoReplyFlag;
  String? get msgFmt;
  String? get consultId;
  List<dynamic>? get withAutoReplies;
  String? get msgSourceType;
  String? get payloadId;
  Content? get content;
  ImageUrl? get image;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<Question> get copyWith =>
      _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Question &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.msgTime, msgTime) || other.msgTime == msgTime) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.replyMsgId, replyMsgId) ||
                other.replyMsgId == replyMsgId) &&
            (identical(other.msgOp, msgOp) || other.msgOp == msgOp) &&
            (identical(other.worker, worker) || other.worker == worker) &&
            (identical(other.autoReplyFlag, autoReplyFlag) ||
                other.autoReplyFlag == autoReplyFlag) &&
            (identical(other.msgFmt, msgFmt) || other.msgFmt == msgFmt) &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId) &&
            const DeepCollectionEquality()
                .equals(other.withAutoReplies, withAutoReplies) &&
            (identical(other.msgSourceType, msgSourceType) ||
                other.msgSourceType == msgSourceType) &&
            (identical(other.payloadId, payloadId) ||
                other.payloadId == payloadId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatId,
      msgId,
      msgTime,
      sender,
      replyMsgId,
      msgOp,
      worker,
      autoReplyFlag,
      msgFmt,
      consultId,
      const DeepCollectionEquality().hash(withAutoReplies),
      msgSourceType,
      payloadId,
      content,
      image);

  @override
  String toString() {
    return 'Question(chatId: $chatId, msgId: $msgId, msgTime: $msgTime, sender: $sender, replyMsgId: $replyMsgId, msgOp: $msgOp, worker: $worker, autoReplyFlag: $autoReplyFlag, msgFmt: $msgFmt, consultId: $consultId, withAutoReplies: $withAutoReplies, msgSourceType: $msgSourceType, payloadId: $payloadId, content: $content, image: $image)';
  }
}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) =
      _$QuestionCopyWithImpl;
  @useResult
  $Res call(
      {String? chatId,
      String? msgId,
      String? msgTime,
      String? sender,
      String? replyMsgId,
      String? msgOp,
      int? worker,
      String? autoReplyFlag,
      String? msgFmt,
      String? consultId,
      List<dynamic>? withAutoReplies,
      String? msgSourceType,
      String? payloadId,
      Content? content,
      ImageUrl? image});

  $ContentCopyWith<$Res>? get content;
  $ImageUrlCopyWith<$Res>? get image;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? msgId = freezed,
    Object? msgTime = freezed,
    Object? sender = freezed,
    Object? replyMsgId = freezed,
    Object? msgOp = freezed,
    Object? worker = freezed,
    Object? autoReplyFlag = freezed,
    Object? msgFmt = freezed,
    Object? consultId = freezed,
    Object? withAutoReplies = freezed,
    Object? msgSourceType = freezed,
    Object? payloadId = freezed,
    Object? content = freezed,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgId: freezed == msgId
          ? _self.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgTime: freezed == msgTime
          ? _self.msgTime
          : msgTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      replyMsgId: freezed == replyMsgId
          ? _self.replyMsgId
          : replyMsgId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgOp: freezed == msgOp
          ? _self.msgOp
          : msgOp // ignore: cast_nullable_to_non_nullable
              as String?,
      worker: freezed == worker
          ? _self.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as int?,
      autoReplyFlag: freezed == autoReplyFlag
          ? _self.autoReplyFlag
          : autoReplyFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      msgFmt: freezed == msgFmt
          ? _self.msgFmt
          : msgFmt // ignore: cast_nullable_to_non_nullable
              as String?,
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as String?,
      withAutoReplies: freezed == withAutoReplies
          ? _self.withAutoReplies
          : withAutoReplies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      msgSourceType: freezed == msgSourceType
          ? _self.msgSourceType
          : msgSourceType // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadId: freezed == payloadId
          ? _self.payloadId
          : payloadId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageUrl?,
    ));
  }

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageUrlCopyWith<$Res>? get image {
    if (_self.image == null) {
      return null;
    }

    return $ImageUrlCopyWith<$Res>(_self.image!, (value) {
      return _then(_self.copyWith(image: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Question implements Question {
  const _Question(
      {this.chatId,
      this.msgId,
      this.msgTime,
      this.sender,
      this.replyMsgId,
      this.msgOp,
      this.worker,
      this.autoReplyFlag,
      this.msgFmt,
      this.consultId,
      final List<dynamic>? withAutoReplies,
      this.msgSourceType,
      this.payloadId,
      this.content,
      this.image})
      : _withAutoReplies = withAutoReplies;
  factory _Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  @override
  final String? chatId;
  @override
  final String? msgId;
  @override
  final String? msgTime;
  @override
  final String? sender;
  @override
  final String? replyMsgId;
  @override
  final String? msgOp;
  @override
  final int? worker;
  @override
  final String? autoReplyFlag;
  @override
  final String? msgFmt;
  @override
  final String? consultId;
  final List<dynamic>? _withAutoReplies;
  @override
  List<dynamic>? get withAutoReplies {
    final value = _withAutoReplies;
    if (value == null) return null;
    if (_withAutoReplies is EqualUnmodifiableListView) return _withAutoReplies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? msgSourceType;
  @override
  final String? payloadId;
  @override
  final Content? content;
  @override
  final ImageUrl? image;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Question &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.msgId, msgId) || other.msgId == msgId) &&
            (identical(other.msgTime, msgTime) || other.msgTime == msgTime) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.replyMsgId, replyMsgId) ||
                other.replyMsgId == replyMsgId) &&
            (identical(other.msgOp, msgOp) || other.msgOp == msgOp) &&
            (identical(other.worker, worker) || other.worker == worker) &&
            (identical(other.autoReplyFlag, autoReplyFlag) ||
                other.autoReplyFlag == autoReplyFlag) &&
            (identical(other.msgFmt, msgFmt) || other.msgFmt == msgFmt) &&
            (identical(other.consultId, consultId) ||
                other.consultId == consultId) &&
            const DeepCollectionEquality()
                .equals(other._withAutoReplies, _withAutoReplies) &&
            (identical(other.msgSourceType, msgSourceType) ||
                other.msgSourceType == msgSourceType) &&
            (identical(other.payloadId, payloadId) ||
                other.payloadId == payloadId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatId,
      msgId,
      msgTime,
      sender,
      replyMsgId,
      msgOp,
      worker,
      autoReplyFlag,
      msgFmt,
      consultId,
      const DeepCollectionEquality().hash(_withAutoReplies),
      msgSourceType,
      payloadId,
      content,
      image);

  @override
  String toString() {
    return 'Question(chatId: $chatId, msgId: $msgId, msgTime: $msgTime, sender: $sender, replyMsgId: $replyMsgId, msgOp: $msgOp, worker: $worker, autoReplyFlag: $autoReplyFlag, msgFmt: $msgFmt, consultId: $consultId, withAutoReplies: $withAutoReplies, msgSourceType: $msgSourceType, payloadId: $payloadId, content: $content, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) =
      __$QuestionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? chatId,
      String? msgId,
      String? msgTime,
      String? sender,
      String? replyMsgId,
      String? msgOp,
      int? worker,
      String? autoReplyFlag,
      String? msgFmt,
      String? consultId,
      List<dynamic>? withAutoReplies,
      String? msgSourceType,
      String? payloadId,
      Content? content,
      ImageUrl? image});

  @override
  $ContentCopyWith<$Res>? get content;
  @override
  $ImageUrlCopyWith<$Res>? get image;
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chatId = freezed,
    Object? msgId = freezed,
    Object? msgTime = freezed,
    Object? sender = freezed,
    Object? replyMsgId = freezed,
    Object? msgOp = freezed,
    Object? worker = freezed,
    Object? autoReplyFlag = freezed,
    Object? msgFmt = freezed,
    Object? consultId = freezed,
    Object? withAutoReplies = freezed,
    Object? msgSourceType = freezed,
    Object? payloadId = freezed,
    Object? content = freezed,
    Object? image = freezed,
  }) {
    return _then(_Question(
      chatId: freezed == chatId
          ? _self.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgId: freezed == msgId
          ? _self.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgTime: freezed == msgTime
          ? _self.msgTime
          : msgTime // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: freezed == sender
          ? _self.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      replyMsgId: freezed == replyMsgId
          ? _self.replyMsgId
          : replyMsgId // ignore: cast_nullable_to_non_nullable
              as String?,
      msgOp: freezed == msgOp
          ? _self.msgOp
          : msgOp // ignore: cast_nullable_to_non_nullable
              as String?,
      worker: freezed == worker
          ? _self.worker
          : worker // ignore: cast_nullable_to_non_nullable
              as int?,
      autoReplyFlag: freezed == autoReplyFlag
          ? _self.autoReplyFlag
          : autoReplyFlag // ignore: cast_nullable_to_non_nullable
              as String?,
      msgFmt: freezed == msgFmt
          ? _self.msgFmt
          : msgFmt // ignore: cast_nullable_to_non_nullable
              as String?,
      consultId: freezed == consultId
          ? _self.consultId
          : consultId // ignore: cast_nullable_to_non_nullable
              as String?,
      withAutoReplies: freezed == withAutoReplies
          ? _self._withAutoReplies
          : withAutoReplies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      msgSourceType: freezed == msgSourceType
          ? _self.msgSourceType
          : msgSourceType // ignore: cast_nullable_to_non_nullable
              as String?,
      payloadId: freezed == payloadId
          ? _self.payloadId
          : payloadId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as Content?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageUrl?,
    ));
  }

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentCopyWith<$Res>? get content {
    if (_self.content == null) {
      return null;
    }

    return $ContentCopyWith<$Res>(_self.content!, (value) {
      return _then(_self.copyWith(content: value));
    });
  }

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageUrlCopyWith<$Res>? get image {
    if (_self.image == null) {
      return null;
    }

    return $ImageUrlCopyWith<$Res>(_self.image!, (value) {
      return _then(_self.copyWith(image: value));
    });
  }
}

/// @nodoc
mixin _$Content {
  String? get data;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContentCopyWith<Content> get copyWith =>
      _$ContentCopyWithImpl<Content>(this as Content, _$identity);

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Content &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'Content(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) _then) =
      _$ContentCopyWithImpl;
  @useResult
  $Res call({String? data});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._self, this._then);

  final Content _self;
  final $Res Function(Content) _then;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Content implements Content {
  const _Content({this.data});
  factory _Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  @override
  final String? data;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Content &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'Content(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) _then) =
      __$ContentCopyWithImpl;
  @override
  @useResult
  $Res call({String? data});
}

/// @nodoc
class __$ContentCopyWithImpl<$Res> implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(this._self, this._then);

  final _Content _self;
  final $Res Function(_Content) _then;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Content(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ImageUrl {
  String? get uri;

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ImageUrlCopyWith<ImageUrl> get copyWith =>
      _$ImageUrlCopyWithImpl<ImageUrl>(this as ImageUrl, _$identity);

  /// Serializes this ImageUrl to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImageUrl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @override
  String toString() {
    return 'ImageUrl(uri: $uri)';
  }
}

/// @nodoc
abstract mixin class $ImageUrlCopyWith<$Res> {
  factory $ImageUrlCopyWith(ImageUrl value, $Res Function(ImageUrl) _then) =
      _$ImageUrlCopyWithImpl;
  @useResult
  $Res call({String? uri});
}

/// @nodoc
class _$ImageUrlCopyWithImpl<$Res> implements $ImageUrlCopyWith<$Res> {
  _$ImageUrlCopyWithImpl(this._self, this._then);

  final ImageUrl _self;
  final $Res Function(ImageUrl) _then;

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = freezed,
  }) {
    return _then(_self.copyWith(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ImageUrl implements ImageUrl {
  const _ImageUrl({this.uri});
  factory _ImageUrl.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlFromJson(json);

  @override
  final String? uri;

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ImageUrlCopyWith<_ImageUrl> get copyWith =>
      __$ImageUrlCopyWithImpl<_ImageUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ImageUrlToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageUrl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @override
  String toString() {
    return 'ImageUrl(uri: $uri)';
  }
}

/// @nodoc
abstract mixin class _$ImageUrlCopyWith<$Res>
    implements $ImageUrlCopyWith<$Res> {
  factory _$ImageUrlCopyWith(_ImageUrl value, $Res Function(_ImageUrl) _then) =
      __$ImageUrlCopyWithImpl;
  @override
  @useResult
  $Res call({String? uri});
}

/// @nodoc
class __$ImageUrlCopyWithImpl<$Res> implements _$ImageUrlCopyWith<$Res> {
  __$ImageUrlCopyWithImpl(this._self, this._then);

  final _ImageUrl _self;
  final $Res Function(_ImageUrl) _then;

  /// Create a copy of ImageUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uri = freezed,
  }) {
    return _then(_ImageUrl(
      uri: freezed == uri
          ? _self.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
