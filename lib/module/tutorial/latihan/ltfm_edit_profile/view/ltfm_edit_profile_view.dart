import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmEditProfileView extends StatefulWidget {
  const LtfmEditProfileView({Key? key}) : super(key: key);

  Widget build(context, LtfmEditProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmEditProfile"),
        actions: const [
          //! 4. Tambahkan tombol Save

          //! 5. Beri padding/margin pada tombol Save sebanyak 10
          //! 6. Panggil controller.save() ketika tombol di klik
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //! 1. Buat sebuah Card, tambahkan Column di dalamnya
              //! 2. Tambahkan padding.all 20.0
              //! 3. Di dalam column yang ada di dalam Card, tambahkan field ini:
              //? textfield email
              //? textfield password
              Card(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    QTextField(
                      label: "Email",
                      hint: "Your Email",
                      validator: Validator.required,
                      value: "kopi@gmail.com",
                      onChanged: (value) {},
                    ),
                    QTextField(
                      label: "Password",
                      hint: "Your Password",
                      obscure: true,
                      validator: Validator.required,
                      value: "123456",
                      onChanged: (value) {},
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton.icon(
                        onPressed: () => controller.save(),
                        icon: const Icon(Icons.save),
                        label: const Text("save"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LtfmEditProfileView> createState() => LtfmEditProfileController();
}
