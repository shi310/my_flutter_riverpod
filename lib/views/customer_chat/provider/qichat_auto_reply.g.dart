// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qichat_auto_reply.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerChatViewQiChatAutoReplyModelNotifierHash() =>
    r'4e45ae003bb543b0c17182a939951301dac13c60';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
