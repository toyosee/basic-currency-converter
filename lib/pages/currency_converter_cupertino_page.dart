import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
    double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  // Function to handle conversion
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 1575;
    });
    // textEditingController.clear();
  }


  @override
  Widget build(BuildContext context) {
        const String btnLabel = 'Convert';
        const String appTitle = 'Currency Converter';

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          appTitle,
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NGN ${result !=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.systemGrey3,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey3,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5)
                ), 
                placeholder: 'Please Enter the amount in USD',
                prefix: const Icon(
                  CupertinoIcons.money_dollar,
                  color: CupertinoColors.systemGrey3,
                  ),
                suffix: const Icon(
                  CupertinoIcons.arrow_2_circlepath,
                  color: CupertinoColors.systemGrey3,
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
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text(btnLabel),
              )
            ],
          ),
        ),
      ),
    );
  }
}