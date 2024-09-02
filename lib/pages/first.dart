import 'package:basic_provider_example_app/pages/second.dart';
import 'package:basic_provider_example_app/provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListProviderModel, value) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('First Page'),
        ),
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Text(
                  'First Page Number Count: ${numberListProviderModel.numberList.last}'),
              Expanded(
                child: ListView.builder(
                  itemCount: numberListProviderModel.numberList.length,
                  itemBuilder: (context, index) => ListTile(
                    dense: true,
                    title: Text(
                      numberListProviderModel.numberList[index].toString(),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numberListProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
        persistentFooterButtons: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
                /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                ); */
              },
              child: const Text("Navigate to second page",
                  style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
