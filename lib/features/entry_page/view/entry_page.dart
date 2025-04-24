import 'package:flutter/material.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 20, 20, 20),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,i) => ListTile(

        title: Text(
            'Uncharted',
            style: theme.textTheme.bodyMedium,
           ),
           
           onTap: () {
                Navigator.of(context).pushNamed('/second');
           },

          ),
         ),
    );
  }
}



class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters'),
        centerTitle: true,
      ),
    );
  }
}

