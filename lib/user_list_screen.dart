import 'package:flutter/material.dart';

class UserListScreen extends StatelessWidget {
  final List<Map<String, String>> mockUsers = [
    {'id': '1', 'name': 'Leanne Graham', 'username': 'Bret'},
    {'id': '2', 'name': 'Ervin Howell', 'username': 'Antonette'},
    {'id': '3', 'name': 'Clementine Bauch', 'username': 'Samantha'},
    {'id': '4', 'name': 'Patricia Lebsack', 'username': 'Karianne'},
    {'id': '5', 'name': 'Chelsey Dietrich', 'username': 'Kamren'},
    {'id': '6', 'name': 'Mrs. Dennis Schulist', 'username': 'Leopoldo_Corkery'},
    {'id': '7', 'name': 'Kurtis Weissnat', 'username': 'Elwyn.Skiles'},
  ];

  @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Usuários (Flutter)'),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 1,
            ),
            body: ListView.builder(
                itemCount: mockUsers.length,
                itemBuilder: (context, index) {
                    final user = mockUsers[index];

                    return Column(
                        children: [
                            ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                leading: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 25,
                                    child: Text(
                                        user['name']![0],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                        ),
                                    ),
                                ),
                                title: Text(
                                    user['name']!,
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                subtitle: Text(
                                    '@${user['username']}',
                                    style: TextStyle(color: Colors.grey),
                                ),
                                onTap: () {
                                    print('Clicou em ${user['name']}');
                                },
                            ),
                            Divider(height: 1, color: Colors.grey[200]),
                        ],
                    );
                },
            ),
        );
    }
}