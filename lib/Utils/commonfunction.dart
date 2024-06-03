import 'package:contactlist/Entity/Contact.dart';

void addContact(List<Contact> contacts,name,number){
  Contact contact=Contact(name:name,number:number);
  contacts.add(contact);
}

void deleteContact(List<Contact> contacts,Contact contact){
contacts.remove(contact);
}