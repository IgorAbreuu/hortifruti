// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              accountName: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Ígor Abreu",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              accountEmail: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "igorabreu@gmail.com",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              currentAccountPicture: Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/avatar.jpg"),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.green,
            ),
            title: const Text(
              "Menu Principal",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.green,
            ),
            title: const Text(
              "Meu Carrinho",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/cartPage');
            },
          ),
          const SizedBox(height: 10),
          const ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.green,
            ),
            title: Text(
              "Configurações",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10), // Adicionando um espaço entre os itens da lista
          const ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.green,
            ),
            title: Text(
              "Sair da Conta",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
