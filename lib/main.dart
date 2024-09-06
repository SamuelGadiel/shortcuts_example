import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          controller.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeIn);
        },
      ),
      body: Shortcuts(
        shortcuts: const <LogicalKeySet, Intent>{},
        child: PageView(
          /// [PageView.scrollDirection] defaults to [Axis.horizontal].
          /// Use [Axis.vertical] to scroll vertically.
          controller: controller,
          children: <Widget>[
            Container(
              color: Color.fromARGB(255, 76, 109, 175),
              child: Text('First Page', style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              )),
            ),
            const Center(
              child: Text('Second Page'),
            ),
            const Center(
              child: Text('Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}
