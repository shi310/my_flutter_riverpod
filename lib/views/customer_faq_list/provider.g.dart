// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$customerFaqListNotifierHash() =>
    r'6c10e5f5c9ed3f95b1b1e2c91cb79fd0d26f979d';

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

/// See also [customerFaqListNotifier].
@ProviderFor(customerFaqListNotifier)
const customerFaqListNotifierProvider = CustomerFaqListNotifierFamily();

/// See also [customerFaqListNotifier].
class CustomerFaqListNotifierFamily
    extends Family<AsyncValue<CustomerFaqListModel>> {
  /// See also [customerFaqListNotifier].
  const CustomerFaqListNotifierFamily();

  /// See also [customerFaqListNotifier].
  CustomerFaqListNotifierProvider call({
    required CustomerFaqTypeModel arguments,
  }) {
    return CustomerFaqListNotifierProvider(
      arguments: arguments,
    );
  }

  @override
  CustomerFaqListNotifierProvider getProviderOverride(
    covariant CustomerFaqListNotifierProvider provider,
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
  String? get name => r'customerFaqListNotifierProvider';
}

/// See also [customerFaqListNotifier].
class CustomerFaqListNotifierProvider
    extends AutoDisposeFutureProvider<CustomerFaqListModel> {
  /// See also [customerFaqListNotifier].
  CustomerFaqListNotifierProvider({
    required CustomerFaqTypeModel arguments,
  }) : this._internal(
          (ref) => customerFaqListNotifier(
            ref as CustomerFaqListNotifierRef,
            arguments: arguments,
          ),
          from: customerFaqListNotifierProvider,
          name: r'customerFaqListNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customerFaqListNotifierHash,
          dependencies: CustomerFaqListNotifierFamily._dependencies,
          allTransitiveDependencies:
              CustomerFaqListNotifierFamily._allTransitiveDependencies,
          arguments: arguments,
        );

  CustomerFaqListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.arguments,
  }) : super.internal();

  final CustomerFaqTypeModel arguments;

  @override
  Override overrideWith(
    FutureOr<CustomerFaqListModel> Function(CustomerFaqListNotifierRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CustomerFaqListNotifierProvider._internal(
        (ref) => create(ref as CustomerFaqListNotifierRef),
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
  AutoDisposeFutureProviderElement<CustomerFaqListModel> createElement() {
    return _CustomerFaqListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerFaqListNotifierProvider &&
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
mixin CustomerFaqListNotifierRef
    on AutoDisposeFutureProviderRef<CustomerFaqListModel> {
  /// The parameter `arguments` of this provider.
  CustomerFaqTypeModel get arguments;
}

class _CustomerFaqListNotifierProviderElement
    extends AutoDisposeFutureProviderElement<CustomerFaqListModel>
    with CustomerFaqListNotifierRef {
  _CustomerFaqListNotifierProviderElement(super.provider);

  @override
  CustomerFaqTypeModel get arguments =>
      (origin as CustomerFaqListNotifierProvider).arguments;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
