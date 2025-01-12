import 'package:flutter/widgets.dart';
import 'package:products_api/features/auth/cubit/auth_cubit.dart';
import 'package:products_api/features/auth/data/models/form_list.dart';
import 'package:products_api/features/auth/view/widget/custom_input_field.dart';
import 'package:products_api/features/auth/view/widget/submit_button.dart';

class FormBuilder extends StatelessWidget {
  const FormBuilder({
    required this.cubit,
    super.key,
  });
  final AuthCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 16,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: formList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CustomInputField(f: formList[index]),
                );
              },
            ),
          ),
          submitButton(cubit: cubit)
        ],
      ),
    );
  }
}
