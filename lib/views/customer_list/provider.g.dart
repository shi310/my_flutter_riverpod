// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerListNotifierHash() =>
    r'61fbe25b0ad80077b6a9351c30d654813bd7ece1';

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

/// See also [customerListNotifier].
@ProviderFor(customerListNotifier)
const customerListNotifierProvider = CustomerListNotifierFamily();

/// See also [customerListNotifier].
class CustomerListNotifierFamily extends Family<AsyncValue<CustomerModel>> {
  /// See also [customerListNotifier].
  const CustomerListNotifierFamily();

  /// See also [customerListNotifier].
  CustomerListNotifierProvider call({
    required CustomerListViewArguments arguments,
  }) {
    return CustomerListNotifierProvider(
      arguments: arguments,
    );
  }

  @override
  CustomerListNotifierProvider getProviderOverride(
    covariant CustomerListNotifierProvider provider,
  ) {
    return call(
      arguments: provider.arguments,
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
  String? get name => r'customerListNotifierProvider';
}

/// See also [customerListNotifier].
class CustomerListNotifierProvider
    extends AutoDisposeFutureProvider<CustomerModel> {
  /// See also [customerListNotifier].
  CustomerListNotifierProvider({
    required CustomerListViewArguments arguments,
  }) : this._internal(
          (ref) => customerListNotifier(
            ref as CustomerListNotifierRef,
            arguments: arguments,
          ),
          from: customerListNotifierProvider,
          name: r'customerListNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerListNotifierHash,
          dependencies: CustomerListNotifierFamily._dependencies,
          allTransitiveDependencies:
              CustomerListNotifierFamily._allTransitiveDependencies,
          arguments: arguments,
        );

  CustomerListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arguments,
  }) : super.internal();

  final CustomerListViewArguments arguments;

  @override
  Override overrideWith(
    FutureOr<CustomerModel> Function(CustomerListNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerListNotifierProvider._internal(
        (ref) => create(ref as CustomerListNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        arguments: arguments,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CustomerModel> createElement() {
    return _CustomerListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerListNotifierProvider &&
        other.arguments == arguments;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arguments.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CustomerListNotifierRef on AutoDisposeFutureProviderRef<CustomerModel> {
  /// The parameter `arguments` of this provider.
  CustomerListViewArguments get arguments;
}

class _CustomerListNotifierProviderElement
    extends AutoDisposeFutureProviderElement<CustomerModel>
    with CustomerListNotifierRef {
  _CustomerListNotifierProviderElement(super.provider);

  @override
  CustomerListViewArguments get arguments =>
      (origin as CustomerListNotifierProvider).arguments;
}

String _$customerFaqTypeListNotifierHash() =>
    r'75f2a09abfaff6bdd99639b08fd57358a7fa7728';

/// See also [customerFaqTypeListNotifier].
@ProviderFor(customerFaqTypeListNotifier)
final customerFaqTypeListNotifierProvider =
    AutoDisposeFutureProvider<CustomerFaqTypeListModel>.internal(
  customerFaqTypeListNotifier,
  name: r'customerFaqTypeListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerFaqTypeListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CustomerFaqTypeListNotifierRef
    = AutoDisposeFutureProviderRef<CustomerFaqTypeListModel>;
String _$customerDataCombinedHash() =>
    r'c1161dd639796192902dd8a00de715093397aff4';

/// See also [customerDataCombined].
@ProviderFor(customerDataCombined)
const customerDataCombinedProvider = CustomerDataCombinedFamily();

/// See also [customerDataCombined].
class CustomerDataCombinedFamily
    extends Family<AsyncValue<CombinedCustomerDataModel>> {
  /// See also [customerDataCombined].
  const CustomerDataCombinedFamily();

  /// See also [customerDataCombined].
  CustomerDataCombinedProvider call({
    required CustomerListViewArguments arguments,
  }) {
    return CustomerDataCombinedProvider(
      arguments: arguments,
    );
  }

  @override
  CustomerDataCombinedProvider getProviderOverride(
    covariant CustomerDataCombinedProvider provider,
  ) {
    return call(
      arguments: provider.arguments,
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
  String? get name => r'customerDataCombinedProvider';
}

/// See also [customerDataCombined].
class CustomerDataCombinedProvider
    extends AutoDisposeFutureProvider<CombinedCustomerDataModel> {
  /// See also [customerDataCombined].
  CustomerDataCombinedProvider({
    required CustomerListViewArguments arguments,
  }) : this._internal(
          (ref) => customerDataCombined(
            ref as CustomerDataCombinedRef,
            arguments: arguments,
          ),
          from: customerDataCombinedProvider,
          name: r'customerDataCombinedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerDataCombinedHash,
          dependencies: CustomerDataCombinedFamily._dependencies,
          allTransitiveDependencies:
              CustomerDataCombinedFamily._allTransitiveDependencies,
          arguments: arguments,
        );

  CustomerDataCombinedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arguments,
  }) : super.internal();

  final CustomerListViewArguments arguments;

  @override
  Override overrideWith(
    FutureOr<CombinedCustomerDataModel> Function(
            CustomerDataCombinedRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerDataCombinedProvider._internal(
        (ref) => create(ref as CustomerDataCombinedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        arguments: arguments,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CombinedCustomerDataModel> createElement() {
    return _CustomerDataCombinedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerDataCombinedProvider &&
        other.arguments == arguments;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, arguments.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CustomerDataCombinedRef
    on AutoDisposeFutureProviderRef<CombinedCustomerDataModel> {
  /// The parameter `arguments` of this provider.
  CustomerListViewArguments get arguments;
}

class _CustomerDataCombinedProviderElement
    extends AutoDisposeFutureProviderElement<CombinedCustomerDataModel>
    with CustomerDataCombinedRef {
  _CustomerDataCombinedProviderElement(super.provider);

  @override
  CustomerListViewArguments get arguments =>
      (origin as CustomerDataCombinedProvider).arguments;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
