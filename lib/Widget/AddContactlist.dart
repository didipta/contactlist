import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddContact extends StatelessWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormBuilderState>();
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: <Widget>[
          FormBuilderTextField(
            name: 'name',
            decoration: InputDecoration(labelText: 'Name'),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(context),
              FormBuilderValidators.minLength(context, 3),
            ]),
          ),
          SizedBox(height: 20),
          FormBuilderTextField(
            name: 'number',
            decoration: InputDecoration(labelText: 'Number'),
            keyboardType: TextInputType.number,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(context),
              FormBuilderValidators.numeric(context),
            ]),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.saveAndValidate() ?? false) {
                final formData = _formKey.currentState?.value;
                if (formData != null) {
                  _saveData(formData);
                }
              } else {
                print("Validation failed");
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
