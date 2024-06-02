import 'package:contactlist/Utils/PhoneNumberInputFormatter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddContact extends StatelessWidget {
  final Function (String,String) addcontact;
  const AddContact({Key? key, required this.addcontact}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    final _formKey = GlobalKey<FormBuilderState>();
    return Container(
      width: width<650?width:650,
      child: FormBuilder(
        key: _formKey,
        child: Column(
          children: <Widget>[
            FormBuilderTextField(
              name: 'name',
              decoration: InputDecoration(labelText: 'Name'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength( 3),
              ]),
            ),
            SizedBox(height: 10),
            FormBuilderTextField(
              name: 'number',
              decoration: InputDecoration(labelText: 'Number'),
              keyboardType: TextInputType.phone,
              inputFormatters:[
                FilteringTextInputFormatter.digitsOnly,
                PhoneNumberInputFormatter()
              ],
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                // FormBuilderValidators.numeric(),
              ]),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.saveAndValidate() ?? false) {
                  final formData = _formKey.currentState?.value;
                  if (formData != null) {
                    // _saveData(formData);
                    addcontact(formData['name'],formData['number']);
                  }
                } else {
                  print("Validation failed");
                }
              },
              child: Text('Submit',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 16
              ),),
            ),
          ],
        ),
      ),
    );
  }

}
