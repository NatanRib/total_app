import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../widgets/navigation_menu.dart';

class StandardPage extends StatelessWidget {
  final Widget content;
  final Widget? floatingButton;
  const StandardPage({ Key? key, required this.content, this.floatingButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(child: const Text('TOTAL APP'), onTap: ()=> Modular.to.navigate('/'),),
        centerTitle: true,
      ),
      drawer: const NavigationMenu(),
      body: content,
      floatingActionButton: floatingButton,
    );
  }
}