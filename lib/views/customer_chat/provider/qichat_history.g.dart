// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qichat_history.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerChatViewQichatHistoryNotifierHash() =>
    r'bcc70fb7a8d83c2237ee4679fdc8d2fc01b94506';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
