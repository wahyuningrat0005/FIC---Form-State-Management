import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LtfmProductFormView extends StatefulWidget {
  const LtfmProductFormView({Key? key}) : super(key: key);

  Widget build(context, LtfmProductFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LtfmProductForm"),
        actions: const [
          //! 5. Tambahkan tombol Save
          //! 6. Beri padding/margin pada tombol Save sebanyak 10
          //! 7. Panggil controller.save() ketika tombol di klik
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
              //? textfield product name
              //? textfield price (hanya bisa menerima angka)
              //? textfield description (textfield dengan maxlines: 15)
              //! 4. Tambahkan dropdown untuk memilih category, gunakan kode ini:

              //! 5. Tambahkan radio untuk menentukan status product, gunakan kode ini:

              Card(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    QTextField(
                      label: "Product Name",
                      hint: "Your Product Name",
                      maxlines: 20,
                      onChanged: (value) {},
                    ),
                    TextFormField(
                      initialValue: '24',
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'your number',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'enter youn number',
                      ),
                      onChanged: (value) {},
                    ),
                    QTextField(
                      label: "Description",
                      hint: "Product Description",
                      validator: Validator.required,
                      maxlines: 15,
                      onChanged: (value) {},
                    ),
                    QDropdownField(
                      label: "Category",
                      hint: "Your product category",
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Food",
                          "value": 1,
                        },
                        {
                          "label": "Drink",
                          "value": 2,
                        },
                        {
                          "label": "Main Course",
                          "value": 3,
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                    QRadioField(
                      label: "Status",
                      validator: Validator.atLeastOneitem,
                      items: const [
                        {
                          "label": "Published",
                          "value": "published",
                        },
                        {
                          "label": "Draft",
                          "value": "draft",
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
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
  State<LtfmProductFormView> createState() => LtfmProductFormController();
}
