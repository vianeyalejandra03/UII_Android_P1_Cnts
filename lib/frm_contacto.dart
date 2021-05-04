import 'package:flutter/material.dart';
import 'datos_contact.dart';

class PaginaContacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff36AB67),
          title: Text('Mis Contactos -Benitez-'),
        ),
        body: ContactList(loscontactos) //fin de scaffold

        ); //fin de scaffold
  } // fin widget
} // fin de pagina de contacto

class ContactList extends StatelessWidget {
  final List<Contacto> _contactos;
  ContactList(this._contactos);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.symmetric(vertical: 8.0), children: _buildContactList());
  } // fin de widgets

  List<_ContactListItem> _buildContactList() {
    return _contactos.map((contacto) => _ContactListItem(contacto)).toList();
  }
} // fin clase lista de contactos

class _ContactListItem extends ListTile {
  _ContactListItem(Contacto contacto) : super(title: Text(contacto.nombrecompleto), subtitle: Text(contacto.email),
   leading: CircleAvatar(child: Text(contacto.nombrecompleto[0])));//definicion de como se vera
}
