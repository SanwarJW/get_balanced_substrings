import 'package:flutter/material.dart';
import 'package:get_balanced_substrings/utils.dart';

class BalancedSubstringScreen extends StatefulWidget {
  const BalancedSubstringScreen({super.key});

  @override
  State<BalancedSubstringScreen> createState() =>
      _BalancedSubstringScreenState();
}

class _BalancedSubstringScreenState extends State<BalancedSubstringScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  List<String> result = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Balanced Substrings'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter a string',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                result = getBalancedSubstrings([_textEditingController.text]);
              });
            },
            child: const Text('Get Balanced Substrings'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: result.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(result[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
