import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';


class CustomForm extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField("이메일"),
            SizedBox(height: medium_gap),
            CustomTextFormField("비밀번호"),
            SizedBox(height: large_gap),
            TextButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    Navigator.pushNamed(context, "/home");
                  };
                },
                child: Text("로그인"),
            ),
          ],
        ),
    );
  }
}
