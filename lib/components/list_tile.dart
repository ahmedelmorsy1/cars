import 'package:flutter/material.dart';

Widget buildListTile(String title , IconData icon,void Function()? tapHandler){
    return ListTile(
      leading: Icon(icon, size: 26,),
      title: Text(title,
        style: const TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed'
        ),
      ),
      onTap: tapHandler,
    );
  }