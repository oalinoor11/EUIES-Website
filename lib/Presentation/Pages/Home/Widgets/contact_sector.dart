import 'package:flutter/material.dart';

class ContactSector extends StatefulWidget {
  const ContactSector({Key? key}) : super(key: key);

  @override
  _ContactSectorState createState() => _ContactSectorState();
}

class _ContactSectorState extends State<ContactSector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("This is the contact sector", style: Theme.of(context).textTheme.bodyText2,),
    );
  }
}
