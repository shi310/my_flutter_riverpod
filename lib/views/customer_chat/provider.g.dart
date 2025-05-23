// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerChatViewQueryEntranceNotifierHash() =>
    r'b1c7418796000aa078c40cdcb98b2555bd781bf1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// QueryEntranceModel
///
/// Copied from [customerChatViewQueryEntranceNotifier].
@ProviderFor(customerChatViewQueryEntranceNotifier)
const customerChatViewQueryEntranceNotifierProvider =
    CustomerChatViewQueryEntranceNotifierFamily();

/// QueryEntranceModel
///
/// Copied from [customerChatViewQueryEntranceNotifier].
class CustomerChatViewQueryEntranceNotifierFamily
    extends Family<AsyncValue<QueryEntranceModel>> {
  /// QueryEntranceModel
  ///
  /// Copied from [customerChatViewQueryEntranceNotifier].
  const CustomerChatViewQueryEntranceNotifierFamily();

  /// QueryEntranceModel
  ///
  /// Copied from [customerChatViewQueryEntranceNotifier].
  CustomerChatViewQueryEntranceNotifierProvider call({
    MyDio? myDio,
  }) {
    return CustomerChatViewQueryEntranceNotifierProvider(
      myDio: myDio,
    );
  }

  @override
  CustomerChatViewQueryEntranceNotifierProvider getProviderOverride(
    covariant CustomerChatViewQueryEntranceNotifierProvider provider,
  ) {
    return call(
      myDio: provider.myDio,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'customerChatViewQueryEntranceNotifierProvider';
}

/// QueryEntranceModel
///
/// Copied from [customerChatViewQueryEntranceNotifier].
class CustomerChatViewQueryEntranceNotifierProvider
    extends AutoDisposeFutureProvider<QueryEntranceModel> {
  /// QueryEntranceModel
  ///
  /// Copied from [customerChatViewQueryEntranceNotifier].
  CustomerChatViewQueryEntranceNotifierProvider({
    MyDio? myDio,
  }) : this._internal(
          (ref) => customerChatViewQueryEntranceNotifier(
            ref as CustomerChatViewQueryEntranceNotifierRef,
            myDio: myDio,
          ),
          from: customerChatViewQueryEntranceNotifierProvider,
          name: r'customerChatViewQueryEntranceNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerChatViewQueryEntranceNotifierHash,
          dependencies:
              CustomerChatViewQueryEntranceNotifierFamily._dependencies,
          allTransitiveDependencies: CustomerChatViewQueryEntranceNotifierFamily
              ._allTransitiveDependencies,
          myDio: myDio,
        );

  CustomerChatViewQueryEntranceNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.myDio,
  }) : super.internal();

  final MyDio? myDio;

  @override
  Override overrideWith(
    FutureOr<QueryEntranceModel> Function(
            CustomerChatViewQueryEntranceNotifierRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerChatViewQueryEntranceNotifierProvider._internal(
        (ref) => create(ref as CustomerChatViewQueryEntranceNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        myDio: myDio,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<QueryEntranceModel> createElement() {
    return _CustomerChatViewQueryEntranceNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerChatViewQueryEntranceNotifierProvider &&
        other.myDio == myDio;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myDio.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CustomerChatViewQueryEntranceNotifierRef
    on AutoDisposeFutureProviderRef<QueryEntranceModel> {
  /// The parameter `myDio` of this provider.
  MyDio? get myDio;
}

class _CustomerChatViewQueryEntranceNotifierProviderElement
    extends AutoDisposeFutureProviderElement<QueryEntranceModel>
    with CustomerChatViewQueryEntranceNotifierRef {
  _CustomerChatViewQueryEntranceNotifierProviderElement(super.provider);

  @override
  MyDio? get myDio =>
      (origin as CustomerChatViewQueryEntranceNotifierProvider).myDio;
}

String _$customerChatViewAssignWorkerModelNotifierHash() =>
    r'4f67f084c755837492aa86eddca2f3c15288dc19';

/// AssignWorkerModel
///
/// Copied from [customerChatViewAssignWorkerModelNotifier].
@ProviderFor(customerChatViewAssignWorkerModelNotifier)
const customerChatViewAssignWorkerModelNotifierProvider =
    CustomerChatViewAssignWorkerModelNotifierFamily();

/// AssignWorkerModel
///
/// Copied from [customerChatViewAssignWorkerModelNotifier].
class CustomerChatViewAssignWorkerModelNotifierFamily
    extends Family<AsyncValue<QiChatAssignWorkerModel>> {
  /// AssignWorkerModel
  ///
  /// Copied from [customerChatViewAssignWorkerModelNotifier].
  const CustomerChatViewAssignWorkerModelNotifierFamily();

  /// AssignWorkerModel
  ///
  /// Copied from [customerChatViewAssignWorkerModelNotifier].
  CustomerChatViewAssignWorkerModelNotifierProvider call({
    required int consultId,
    MyDio? myDio,
  }) {
    return CustomerChatViewAssignWorkerModelNotifierProvider(
      consultId: consultId,
      myDio: myDio,
    );
  }

  @override
  CustomerChatViewAssignWorkerModelNotifierProvider getProviderOverride(
    covariant CustomerChatViewAssignWorkerModelNotifierProvider provider,
  ) {
    return call(
      consultId: provider.consultId,
      myDio: provider.myDio,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'customerChatViewAssignWorkerModelNotifierProvider';
}

/// AssignWorkerModel
///
/// Copied from [customerChatViewAssignWorkerModelNotifier].
class CustomerChatViewAssignWorkerModelNotifierProvider
    extends AutoDisposeFutureProvider<QiChatAssignWorkerModel> {
  /// AssignWorkerModel
  ///
  /// Copied from [customerChatViewAssignWorkerModelNotifier].
  CustomerChatViewAssignWorkerModelNotifierProvider({
    required int consultId,
    MyDio? myDio,
  }) : this._internal(
          (ref) => customerChatViewAssignWorkerModelNotifier(
            ref as CustomerChatViewAssignWorkerModelNotifierRef,
            consultId: consultId,
            myDio: myDio,
          ),
          from: customerChatViewAssignWorkerModelNotifierProvider,
          name: r'customerChatViewAssignWorkerModelNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerChatViewAssignWorkerModelNotifierHash,
          dependencies:
              CustomerChatViewAssignWorkerModelNotifierFamily._dependencies,
          allTransitiveDependencies:
              CustomerChatViewAssignWorkerModelNotifierFamily
                  ._allTransitiveDependencies,
          consultId: consultId,
          myDio: myDio,
        );

  CustomerChatViewAssignWorkerModelNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.consultId,
    required this.myDio,
  }) : super.internal();

  final int consultId;
  final MyDio? myDio;

  @override
  Override overrideWith(
    FutureOr<QiChatAssignWorkerModel> Function(
            CustomerChatViewAssignWorkerModelNotifierRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerChatViewAssignWorkerModelNotifierProvider._internal(
        (ref) => create(ref as CustomerChatViewAssignWorkerModelNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        consultId: consultId,
        myDio: myDio,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<QiChatAssignWorkerModel> createElement() {
    return _CustomerChatViewAssignWorkerModelNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerChatViewAssignWorkerModelNotifierProvider &&
        other.consultId == consultId &&
        other.myDio == myDio;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, consultId.hashCode);
    hash = _SystemHash.combine(hash, myDio.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CustomerChatViewAssignWorkerModelNotifierRef
    on AutoDisposeFutureProviderRef<QiChatAssignWorkerModel> {
  /// The parameter `consultId` of this provider.
  int get consultId;

  /// The parameter `myDio` of this provider.
  MyDio? get myDio;
}

class _CustomerChatViewAssignWorkerModelNotifierProviderElement
    extends AutoDisposeFutureProviderElement<QiChatAssignWorkerModel>
    with CustomerChatViewAssignWorkerModelNotifierRef {
  _CustomerChatViewAssignWorkerModelNotifierProviderElement(super.provider);

  @override
  int get consultId =>
      (origin as CustomerChatViewAssignWorkerModelNotifierProvider).consultId;
  @override
  MyDio? get myDio =>
      (origin as CustomerChatViewAssignWorkerModelNotifierProvider).myDio;
}

String _$customerChatViewQichatHistoryNotifierHash() =>
    r'bcc70fb7a8d83c2237ee4679fdc8d2fc01b94506';

/// 获取起聊的历史记录
///
/// Copied from [customerChatViewQichatHistoryNotifier].
@ProviderFor(customerChatViewQichatHistoryNotifier)
const customerChatViewQichatHistoryNotifierProvider =
    CustomerChatViewQichatHistoryNotifierFamily();

/// 获取起聊的历史记录
///
/// Copied from [customerChatViewQichatHistoryNotifier].
class CustomerChatViewQichatHistoryNotifierFamily
    extends Family<AsyncValue<QiChatHistoryModel>> {
  /// 获取起聊的历史记录
  ///
  /// Copied from [customerChatViewQichatHistoryNotifier].
  const CustomerChatViewQichatHistoryNotifierFamily();

  /// 获取起聊的历史记录
  ///
  /// Copied from [customerChatViewQichatHistoryNotifier].
  CustomerChatViewQichatHistoryNotifierProvider call({
    required int consultId,
    required int workerId,
    MyDio? myDio,
  }) {
    return CustomerChatViewQichatHistoryNotifierProvider(
      consultId: consultId,
      workerId: workerId,
      myDio: myDio,
    );
  }

  @override
  CustomerChatViewQichatHistoryNotifierProvider getProviderOverride(
    covariant CustomerChatViewQichatHistoryNotifierProvider provider,
  ) {
    return call(
      consultId: provider.consultId,
      workerId: provider.workerId,
      myDio: provider.myDio,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'customerChatViewQichatHistoryNotifierProvider';
}

/// 获取起聊的历史记录
///
/// Copied from [customerChatViewQichatHistoryNotifier].
class CustomerChatViewQichatHistoryNotifierProvider
    extends AutoDisposeFutureProvider<QiChatHistoryModel> {
  /// 获取起聊的历史记录
  ///
  /// Copied from [customerChatViewQichatHistoryNotifier].
  CustomerChatViewQichatHistoryNotifierProvider({
    required int consultId,
    required int workerId,
    MyDio? myDio,
  }) : this._internal(
          (ref) => customerChatViewQichatHistoryNotifier(
            ref as CustomerChatViewQichatHistoryNotifierRef,
            consultId: consultId,
            workerId: workerId,
            myDio: myDio,
          ),
          from: customerChatViewQichatHistoryNotifierProvider,
          name: r'customerChatViewQichatHistoryNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerChatViewQichatHistoryNotifierHash,
          dependencies:
              CustomerChatViewQichatHistoryNotifierFamily._dependencies,
          allTransitiveDependencies: CustomerChatViewQichatHistoryNotifierFamily
              ._allTransitiveDependencies,
          consultId: consultId,
          workerId: workerId,
          myDio: myDio,
        );

  CustomerChatViewQichatHistoryNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.consultId,
    required this.workerId,
    required this.myDio,
  }) : super.internal();

  final int consultId;
  final int workerId;
  final MyDio? myDio;

  @override
  Override overrideWith(
    FutureOr<QiChatHistoryModel> Function(
            CustomerChatViewQichatHistoryNotifierRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerChatViewQichatHistoryNotifierProvider._internal(
        (ref) => create(ref as CustomerChatViewQichatHistoryNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        consultId: consultId,
        workerId: workerId,
        myDio: myDio,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<QiChatHistoryModel> createElement() {
    return _CustomerChatViewQichatHistoryNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerChatViewQichatHistoryNotifierProvider &&
        other.consultId == consultId &&
        other.workerId == workerId &&
        other.myDio == myDio;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, consultId.hashCode);
    hash = _SystemHash.combine(hash, workerId.hashCode);
    hash = _SystemHash.combine(hash, myDio.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CustomerChatViewQichatHistoryNotifierRef
    on AutoDisposeFutureProviderRef<QiChatHistoryModel> {
  /// The parameter `consultId` of this provider.
  int get consultId;

  /// The parameter `workerId` of this provider.
  int get workerId;

  /// The parameter `myDio` of this provider.
  MyDio? get myDio;
}

class _CustomerChatViewQichatHistoryNotifierProviderElement
    extends AutoDisposeFutureProviderElement<QiChatHistoryModel>
    with CustomerChatViewQichatHistoryNotifierRef {
  _CustomerChatViewQichatHistoryNotifierProviderElement(super.provider);

  @override
  int get consultId =>
      (origin as CustomerChatViewQichatHistoryNotifierProvider).consultId;
  @override
  int get workerId =>
      (origin as CustomerChatViewQichatHistoryNotifierProvider).workerId;
  @override
  MyDio? get myDio =>
      (origin as CustomerChatViewQichatHistoryNotifierProvider).myDio;
}

String _$customerChatViewQiChatAutoReplyModelNotifierHash() =>
    r'4e45ae003bb543b0c17182a939951301dac13c60';

/// 获取起聊的自动回复
///
/// Copied from [customerChatViewQiChatAutoReplyModelNotifier].
@ProviderFor(customerChatViewQiChatAutoReplyModelNotifier)
const customerChatViewQiChatAutoReplyModelNotifierProvider =
    CustomerChatViewQiChatAutoReplyModelNotifierFamily();

/// 获取起聊的自动回复
///
/// Copied from [customerChatViewQiChatAutoReplyModelNotifier].
class CustomerChatViewQiChatAutoReplyModelNotifierFamily
    extends Family<AsyncValue<QiChatAutoReplyModel>> {
  /// 获取起聊的自动回复
  ///
  /// Copied from [customerChatViewQiChatAutoReplyModelNotifier].
  const CustomerChatViewQiChatAutoReplyModelNotifierFamily();

  /// 获取起聊的自动回复
  ///
  /// Copied from [customerChatViewQiChatAutoReplyModelNotifier].
  CustomerChatViewQiChatAutoReplyModelNotifierProvider call({
    required int consultId,
    required int workerId,
    MyDio? myDio,
  }) {
    return CustomerChatViewQiChatAutoReplyModelNotifierProvider(
      consultId: consultId,
      workerId: workerId,
      myDio: myDio,
    );
  }

  @override
  CustomerChatViewQiChatAutoReplyModelNotifierProvider getProviderOverride(
    covariant CustomerChatViewQiChatAutoReplyModelNotifierProvider provider,
  ) {
    return call(
      consultId: provider.consultId,
      workerId: provider.workerId,
      myDio: provider.myDio,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'customerChatViewQiChatAutoReplyModelNotifierProvider';
}

/// 获取起聊的自动回复
///
/// Copied from [customerChatViewQiChatAutoReplyModelNotifier].
class CustomerChatViewQiChatAutoReplyModelNotifierProvider
    extends AutoDisposeFutureProvider<QiChatAutoReplyModel> {
  /// 获取起聊的自动回复
  ///
  /// Copied from [customerChatViewQiChatAutoReplyModelNotifier].
  CustomerChatViewQiChatAutoReplyModelNotifierProvider({
    required int consultId,
    required int workerId,
    MyDio? myDio,
  }) : this._internal(
          (ref) => customerChatViewQiChatAutoReplyModelNotifier(
            ref as CustomerChatViewQiChatAutoReplyModelNotifierRef,
            consultId: consultId,
            workerId: workerId,
            myDio: myDio,
          ),
          from: customerChatViewQiChatAutoReplyModelNotifierProvider,
          name: r'customerChatViewQiChatAutoReplyModelNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerChatViewQiChatAutoReplyModelNotifierHash,
          dependencies:
              CustomerChatViewQiChatAutoReplyModelNotifierFamily._dependencies,
          allTransitiveDependencies:
              CustomerChatViewQiChatAutoReplyModelNotifierFamily
                  ._allTransitiveDependencies,
          consultId: consultId,
          workerId: workerId,
          myDio: myDio,
        );

  CustomerChatViewQiChatAutoReplyModelNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.consultId,
    required this.workerId,
    required this.myDio,
  }) : super.internal();

  final int consultId;
  final int workerId;
  final MyDio? myDio;

  @override
  Override overrideWith(
    FutureOr<QiChatAutoReplyModel> Function(
            CustomerChatViewQiChatAutoReplyModelNotifierRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerChatViewQiChatAutoReplyModelNotifierProvider._internal(
        (ref) => create(ref as CustomerChatViewQiChatAutoReplyModelNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        consultId: consultId,
        workerId: workerId,
        myDio: myDio,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<QiChatAutoReplyModel> createElement() {
    return _CustomerChatViewQiChatAutoReplyModelNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerChatViewQiChatAutoReplyModelNotifierProvider &&
        other.consultId == consultId &&
        other.workerId == workerId &&
        other.myDio == myDio;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, consultId.hashCode);
    hash = _SystemHash.combine(hash, workerId.hashCode);
    hash = _SystemHash.combine(hash, myDio.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CustomerChatViewQiChatAutoReplyModelNotifierRef
    on AutoDisposeFutureProviderRef<QiChatAutoReplyModel> {
  /// The parameter `consultId` of this provider.
  int get consultId;

  /// The parameter `workerId` of this provider.
  int get workerId;

  /// The parameter `myDio` of this provider.
  MyDio? get myDio;
}

class _CustomerChatViewQiChatAutoReplyModelNotifierProviderElement
    extends AutoDisposeFutureProviderElement<QiChatAutoReplyModel>
    with CustomerChatViewQiChatAutoReplyModelNotifierRef {
  _CustomerChatViewQiChatAutoReplyModelNotifierProviderElement(super.provider);

  @override
  int get consultId =>
      (origin as CustomerChatViewQiChatAutoReplyModelNotifierProvider)
          .consultId;
  @override
  int get workerId =>
      (origin as CustomerChatViewQiChatAutoReplyModelNotifierProvider).workerId;
  @override
  MyDio? get myDio =>
      (origin as CustomerChatViewQiChatAutoReplyModelNotifierProvider).myDio;
}

String _$customerChatViewTitleNotifierHash() =>
    r'f781313efd15d8d1edb2d1ef05acb0f12d090fb4';

/// 页面的标题
///
/// Copied from [CustomerChatViewTitleNotifier].
@ProviderFor(CustomerChatViewTitleNotifier)
final customerChatViewTitleNotifierProvider =
    AutoDisposeNotifierProvider<CustomerChatViewTitleNotifier, String>.internal(
  CustomerChatViewTitleNotifier.new,
  name: r'customerChatViewTitleNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerChatViewTitleNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CustomerChatViewTitleNotifier = AutoDisposeNotifier<String>;
String _$customerChatViewIsLoadingNotifierHash() =>
    r'02a5f8cce87abcd9fc99ba0561e1ac8fe252955d';

/// 页面是否正处于初始化阶段
///
/// Copied from [CustomerChatViewIsLoadingNotifier].
@ProviderFor(CustomerChatViewIsLoadingNotifier)
final customerChatViewIsLoadingNotifierProvider = AutoDisposeNotifierProvider<
    CustomerChatViewIsLoadingNotifier, bool>.internal(
  CustomerChatViewIsLoadingNotifier.new,
  name: r'customerChatViewIsLoadingNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerChatViewIsLoadingNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CustomerChatViewIsLoadingNotifier = AutoDisposeNotifier<bool>;
String _$customerChatViewLastMsgIdNotifierHash() =>
    r'1c9381176e1d01f0d90ab33f03c6277df1990d35';

/// lastMsgId
///
/// Copied from [CustomerChatViewLastMsgIdNotifier].
@ProviderFor(CustomerChatViewLastMsgIdNotifier)
final customerChatViewLastMsgIdNotifierProvider = AutoDisposeNotifierProvider<
    CustomerChatViewLastMsgIdNotifier, int?>.internal(
  CustomerChatViewLastMsgIdNotifier.new,
  name: r'customerChatViewLastMsgIdNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerChatViewLastMsgIdNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CustomerChatViewLastMsgIdNotifier = AutoDisposeNotifier<int?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
