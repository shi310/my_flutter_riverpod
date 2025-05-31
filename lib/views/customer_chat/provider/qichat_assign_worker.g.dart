// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qichat_assign_worker.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerChatViewAssignWorkerModelNotifierHash() =>
    r'4f67f084c755837492aa86eddca2f3c15288dc19';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
