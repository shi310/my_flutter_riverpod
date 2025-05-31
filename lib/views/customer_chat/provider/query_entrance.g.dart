// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_entrance.dart';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
