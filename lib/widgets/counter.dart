import "package:flutter/material.dart";

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: _counter > 0 ? _decrement : null,
            child: const Text("Decrement"),
          ),
          ElevatedButton(onPressed: _increment, child: const Text("Increment")),
          const SizedBox(width: 20),
          Text("Total: $_counter"),
        ],
      ),
    );
  }
}
