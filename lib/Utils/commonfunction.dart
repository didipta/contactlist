import 'package:contactlist/Entity/Contact.dart';

void addContact(List<Contact> contacts,name,number){
  print(contacts);
  Contact contact=Contact(name:name,number:number);
  contacts.add(contact);
}
