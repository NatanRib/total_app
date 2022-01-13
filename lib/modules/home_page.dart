import 'package:flutter/material.dart';

import './share/pages/standard_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const StandardPage(
      content: Center(child: Text('Selecione um modulo no canto superior esquedo.'),)
    );
  }
}