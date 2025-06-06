import 'package:flutter/material.dart';
import 'package:sandbox/components/counter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Counter()]);
  }
}
