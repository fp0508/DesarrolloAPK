import 'package:flutter/material.dart';
import 'package:wds_28_dismissible/data/people.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> contacts = [...people];

  void onTogglePinned(int index) {
    setState(() {
      contacts[index]['pinned'] = !contacts[index]['pinned'];
    });
  }

  void onDeleteContact(int index) {
    setState(() {
      contacts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wds28 Dismissible'),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (_, int index) => ListItem(
                index: index,
                contact: contacts[index],
                onDeleteContact: onDeleteContact,
                onTogglePinned: onTogglePinned,
              ),
          separatorBuilder: (_, __) =>
              const Divider(color: Colors.black26, height: 2),
          itemCount: contacts.length),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.contact,
    required this.index,
    required this.onTogglePinned,
    required this.onDeleteContact,
  }) : super(key: key);

  final Map<String, dynamic> contact;
  final int index;
  final Function onTogglePinned;
  final Function onDeleteContact;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(
        color: Colors.red[400],
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(10),
        child: const Icon(
          Icons.delete_outline_rounded,
          color: Colors.white,
        ),
      ),
      secondaryBackground: Container(
        color: Colors.blue[400],
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.all(10),
        child: const Icon(
          Icons.push_pin_outlined,
          color: Colors.white,
        ),
      ),
      onDismissed: (direction) {
        if (direction == DismissDirection.startToEnd) {
          onDeleteContact(index);
          print('eliminar este elemento $index');
        }
      },
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.endToStart) {
          onTogglePinned(index);
          return false;
        }
        return true;
      },
      key: UniqueKey(),
      child: ListTile(
        leading: Icon(contact['pinned']
            ? Icons.push_pin_outlined
            : Icons.circle_outlined),
        title: Text('${contact['first_name']} ${contact['last_name']}'),
        subtitle: Text(contact['phone']),
        dense: true,
      ),
    );
  }
}
