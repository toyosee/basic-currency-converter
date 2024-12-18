import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurencyConverterMaterialPageState();
}

class _CurencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  // Function to handle currency conversion
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 1560;
    });
    // textEditingController.clear();
  }

  // Disposing object to address memory leak
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String btnLabel = 'Convert';
    const String appTitle = 'Currency Converter';

    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          appTitle,
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        leading: const Icon(
          Icons.currency_exchange,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NGN ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.blueGrey,
                ),
                decoration: const InputDecoration(
                  hintText: 'Please Enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.blueGrey,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //Button
              ElevatedButton(
                onPressed: convert,
                style: ButtonStyle(
                  elevation: const WidgetStatePropertyAll(2),
                  backgroundColor: const WidgetStatePropertyAll(Colors.black),
                  foregroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  minimumSize:
                      const WidgetStatePropertyAll(Size(double.infinity, 50)),
                  textStyle: const WidgetStatePropertyAll(TextStyle(
                    fontSize: 15,
                  )),
                ),
                child: const Text(btnLabel),
              )
            ],
          ),
        ),
      ),
    );
  }
}
