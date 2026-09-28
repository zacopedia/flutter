import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final headerHeight = constraints.maxHeight * 0.27;
        final illustrationSize =
            (constraints.maxWidth * 0.45).clamp(140.0, 190.0);

        return SizedBox(
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: headerHeight,
                  width: double.infinity,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: topPadding),
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(40)),
                      color: Colors.amber),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Todo App",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: Colors.white)),
                      const SizedBox(
                        height: 8,
                      ),
                      Text("Get things done",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white))
                    ],
                  ),
                ),
                Positioned(
                  top: headerHeight - 40,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(40)),
                        color: Colors.red),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/todolist.png',
                          width: illustrationSize,
                          height: illustrationSize * 1.25,
                          fit: BoxFit.contain,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            s);
      }),
    );
  }
}
