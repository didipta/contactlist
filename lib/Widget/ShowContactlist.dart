import 'package:contactlist/Entity/Contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowContactlist extends StatelessWidget {
  const ShowContactlist({
    super.key,
    required this.contacts,
  });

  final List<Contact> contacts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2,
          color: Colors.white,
          child: ListTile(
            horizontalTitleGap: 10,
            minVerticalPadding: 20,
            autofocus: true,
            leading: Icon(
              Icons.person,
              color: Colors.black26,
              size: 50,
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 5.0, right: 10),
              child: GestureDetector(
                onTap: () {
                  print("abgdfjhsgadfyas dj");
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(contacts[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
            dense: true,
            subtitle: Text(
              contacts[index].number,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Colors.black38),
            ),
            trailing: Icon(
              Icons.phone,
              color: Colors.green,
              size: 30,
            ),
          ),
        );
      },
    );
  }
}