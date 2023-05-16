import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider((ref) => 0);

// autoDispose will auto delete when state not using anymore
// final counterProvider = StateProvider.autoDispose((ref) => 0);
