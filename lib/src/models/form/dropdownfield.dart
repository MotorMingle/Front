import 'package:flutter/material.dart';
import 'package:front/src/themes/colors.dart' as colors;

class DropdownField extends StatelessWidget {
  List<dynamic> values;

  DropdownField({super.key, required this.values});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: colors.Colors.lightGrey,
      ),
      child: DropdownButtonFormField(
          dropdownColor: colors.Colors.lightGrey,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          items: [
            for (var item in values)
              DropdownMenuItem(
                value: item.id,
                child: Text(item.name.toUpperCase(),
                    style: const TextStyle(color: colors.Colors.grey)),
              ),
          ],
          onChanged: (value) {}),
    );
  }
}
