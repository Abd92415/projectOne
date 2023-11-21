import 'package:flutter/material.dart';
import 'package:graduation_project/views/login_signup/component/button.dart';
import 'package:graduation_project/views/login_signup/component/text_username.dart';
//************** 2.this class contain text field created take data from seller

class BottomSheetAdd extends StatefulWidget {
  const BottomSheetAdd({super.key});

  @override
  State<BottomSheetAdd> createState() => _BottomSheetAddState();
}

class _BottomSheetAddState extends State<BottomSheetAdd> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Add New Product'),
          const Text('Fill out the details below to add a new post'),
          const SizedBox(height: 15),
          TextFieldUseAll(
            hint: 'Title',
            iconuse: Icons.post_add,
            type: TextInputType.text,
            controller: TextEditingController(text: ''),
          ),
          const SizedBox(height: 15),
          TextFieldUseAll(
            hint: 'Enter price product',
            iconuse: Icons.attach_money_outlined,
            controller: TextEditingController(text: ''),
            type: TextInputType.number,
          ),
          const SizedBox(height: 15),
          TextFieldUseAll(
            hint: 'Enter a description here',
            iconuse: Icons.description,
            controller: TextEditingController(text: ''),
            type: TextInputType.text,
          ),
          const SizedBox(height: 15),
          TextFieldUseAll(
            hint: ' + add image your product ',
            iconuse: Icons.image,
            controller: TextEditingController(text: ''),
            type: TextInputType.text,
          ),
          const SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Button(textButton: 'Cancel'),
            ),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Button(textButton: 'Add Post'))
          ])
        ],
      ),
    );
  }
}
