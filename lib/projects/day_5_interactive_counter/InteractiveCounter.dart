import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/CounterButton.dart';

class InteractiveCounter extends StatefulWidget {
  const InteractiveCounter({super.key});

  @override
  State<InteractiveCounter> createState() => _InteractiveCounterState();
}

class _InteractiveCounterState extends State<InteractiveCounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Interactive Counter"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 216, 211, 211),
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 21),
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(52, 104, 184, 250),
                      shape: BoxShape.circle),
                  child: const Icon(
                    Icons.wifi,
                    color: Color.fromARGB(255, 26, 15, 233),
                    size: 32,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "COUNTER DASHBOARD",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text("Tap the buttons to change the counter"),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(52, 104, 184, 250),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "$counter",
                      style: const TextStyle(
                          fontSize: 75,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 26, 15, 233)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CounterButton(
                          height: 80,
                          text: "Add",
                          icon: Icons.add,
                          backgroundColor:
                              const Color.fromARGB(255, 5, 105, 12),
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          }),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: CounterButton(
                          height: 80,
                          text: "Decrease",
                          icon: Icons.remove,
                          backgroundColor:
                              const Color.fromARGB(255, 157, 14, 14),
                          onPressed: () {
                            setState(() {
                              counter--;
                            });
                          }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                    icon: const Icon(
                      Icons.refresh,
                      size: 36,
                    ),
                    label: const Text(
                      "Reset",
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 154, 33, 207),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 229, 228, 225),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      counter == 0
                          ? "Neutral"
                          : counter > 0
                              ? "Positive"
                              : "Negative",
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
