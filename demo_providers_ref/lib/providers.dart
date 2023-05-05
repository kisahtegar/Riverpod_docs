import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameProvider = Provider(
  (ref) => 'Jennie Kim',
);

// Interaksi dengan provider lain
final greetingProvider = Provider(
  (ref) => 'Hello ${ref.watch(nameProvider)}',
);
