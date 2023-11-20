import 'package:flutter/material.dart';
import 'package:graduation_project/services/constant/path_images.dart';
import 'package:graduation_project/views/login_signup/component/button.dart';
import 'package:graduation_project/views/login_signup/component/text_username.dart';

class AddProductSeller extends StatelessWidget {
  const AddProductSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Button(textButton: 'Cancel'),
              Button(textButton: 'Add Post')
            ],
          )
        ],
      ),
    )
        // Center(
        //   child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        //     Image(image: AssetImage(PathImage.postEmpty)),
        //     Text('You don\'t have any post'),
        //     Text('create post by tapping the button below.'),
        //     SizedBox(
        //       height: 25,
        //     ),
        //     Button(textButton: 'Create Post')
        //   ]),
        // ),
        );
  }
}
