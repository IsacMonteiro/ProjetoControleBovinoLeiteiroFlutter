import 'package:flutter/material.dart';

class HelperUI {
  static Widget builderTextFormField(TextEditingController controller,
      String labelText, String? Function(String? value) validator) {
    return TextFormField(
      decoration: InputDecoration(labelText: labelText),
      controller: controller,
      validator: validator,
    );
  }

  static Widget builderTextField(
      TextEditingController controller, String hintText) {
    return Row(
      children: <Widget>[
        Flexible(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: hintText),
          ),
        )
      ],
    );
  }

  static ListTile builderListTile(bool selected, IconData icon, String title,
      BuildContext context, String rota) {
    return ListTile(
      selected: selected,
      leading: Icon(icon),
      title: Text(title),
      onTap: () => Navigator.pushNamed(context, rota),
    );
  }
}
