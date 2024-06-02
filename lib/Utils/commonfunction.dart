import 'package:contactlist/Entity/Contact.dart';

void addContact(conacts,name,number){
  Contact contact=new Contact(name, number);
  print(contact.name);
  conacts.add(contact);

}