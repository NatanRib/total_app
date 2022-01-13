import 'package:flutter/material.dart';
import '../widgets/navigation_menu.dart';

class StandardPage extends StatelessWidget {
  final Widget content;
  final Widget? floatingButton;
  const StandardPage({ Key? key, required this.content, this.floatingButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TOTAL APP'),
        centerTitle: true,
      ),
      drawer: const NavigationMenu(),
      body: content,
      floatingActionButton: floatingButton,
    );
  }
}