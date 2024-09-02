import 'package:basic_provider_example_app/provider/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
      builder: (context, numberListProviderModel, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Second Page'),
        ),
        body: SizedBox(
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Text(
                  'Second Page Number Count: ${numberListProviderModel.numberList.last}'),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 20,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: numberListProviderModel.numberList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          numberListProviderModel.numberList[index].toString(),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => numberListProviderModel.add(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
