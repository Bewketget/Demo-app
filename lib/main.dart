import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const Homepage(),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var myText = "change the name";
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.red,
        title: const Center(
          child: Text('Keep Going'),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "images/programmer.jpg",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    myText,
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      controller: _nameController,
                      decoration: const  InputDecoration(
                        hintText: "enter some text",
                        labelText: "Type",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Get Started'),
              accountEmail: Text('Good work'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpeg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Get Started'),
              subtitle: Text('Continue Doing'),
              trailing: Icon(Icons.code),
            ),
            ListTile(
              leading: Icon(Icons.work),
               title: Text('Good Work'),
              subtitle: Text('Lets do it '),
              trailing: Icon(Icons.start),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: const Icon(Icons.send),
      ),
    );
  }
}
