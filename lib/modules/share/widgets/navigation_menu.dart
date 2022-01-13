import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({ Key? key }) : super(key: key);

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Finance'),
            onTap: ()=> Modular.to.navigate('/finance/'),
          ),
          // ListTile(
          //   title: const Text('Stock'),
          //   onTap: ()=> Modular.to.navigate('/stock/'),
          // ),
        ],
      ),
    );
  }
}