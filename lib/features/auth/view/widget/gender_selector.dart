import 'package:flutter/material.dart';
import 'package:products_api/features/auth/view/widget/border_style.dart';

class GenderSelection extends StatefulWidget {
  final TextEditingController genderController;

  const GenderSelection({
    super.key,
    required this.genderController,
  });

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? selectedGender;
  List<String> genderList = ['male', 'female'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      autovalidateMode: AutovalidateMode.onUnfocus,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        labelStyle: const TextStyle(color: Colors.grey),
        labelText: 'Gender',
        prefixIcon: const Icon(Icons.people, color: Colors.blueAccent),
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        enabledBorder: inputBorderStyle(Colors.grey),
        focusedBorder: inputBorderStyle(Colors.blueAccent),
        focusedErrorBorder: inputBorderStyle(Colors.red),
        errorBorder: inputBorderStyle(Colors.red),
      ),
      value: selectedGender,
      hint: const Text(
        'Select Gender',
        style: TextStyle(color: Colors.grey),
      ),
      dropdownColor: Colors.white,
      items: genderList.map((String gender) {
        return DropdownMenuItem(
          value: gender,
          child: Text(
            gender,
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedGender = newValue;

          widget.genderController.text = newValue ?? '';
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select gender';
        }
        return null;
      },
    );
  }
}
