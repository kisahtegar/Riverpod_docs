import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int number = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$number',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(counterProvider.notifier).state += 1;
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // if using autoDispose in counter_provider just comment invalidate.
                ref.invalidate(counterProvider);
              },
              child: const Text('Reset (Invalidate)'),
            ),
          ],
        ),
      ),
    );
  }
}
