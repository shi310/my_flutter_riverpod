class MyEnvironment {
  static final MyEnvironment _instance = MyEnvironment._internal();
  factory MyEnvironment() => _instance;
  MyEnvironment._internal();

  static Environment getValue() => _instance._getValue();

  Environment _getValue() {
    const String environment = String.fromEnvironment('ENVIRONMENT', defaultValue: 'test');

    switch (environment) {
      case 'test':
        return Environment.test;
      case 'pre':
        return Environment.pre;
      case 'rel':
        return Environment.rel;
      case 'grey':
        return Environment.grey;
      default:
        return Environment.test;
    }
  }
}

enum Environment {
  test,
  pre,
  rel,
  grey,
}
