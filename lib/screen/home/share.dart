// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sort_child_properties_last, unused_local_variable, invalid_use_of_visible_for_testing_member, unnecessary_new, import_of_legacy_library_into_null_safe, prefer_final_fields, unnecessary_null_comparison, sized_box_for_whitespace, unnecessary_this

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:health/constant.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_extend/share_extend.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  void initstate() {
    super.initState();
  }

  Future<void> share_button() async {
    // XFile? f = (await ImagePicker.pickImage(source: ImageSource.gallery));
    // ShareExtend.share(f!.path, "image");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: BackgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/icons8-upload-100.png'),
            Text('Share your experience'),
            SizedBox(
              height: 40,
            ),
            FloatingActionButton(
              onPressed: () => share_button(),
              child: Icon(Icons.share),
            ),
          ],
        ),
      ),
    );
  }
}
