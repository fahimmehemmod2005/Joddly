import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodel/drop_down_provoder.dart';

class WidgetDropdown extends StatelessWidget {
  const WidgetDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DropdownProvider>(
      builder: (context, provider, child) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: DropdownButton<String>(
            value: provider.selectedValue,
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            underline: const SizedBox(),
            isExpanded: true,
            dropdownColor: Colors.white,
            items: const [
              DropdownMenuItem(value: 'data1', child: Text('Realistic')),
              DropdownMenuItem(value: 'data2', child: Text('Oil Painting')),
              DropdownMenuItem(value: 'data3', child: Text('Abstract')),
              DropdownMenuItem(value: 'data4', child: Text('Digital Art')),
            ],
            onChanged: (value) {
              provider.selectValue(value); // Provider update
            },
          ),
        );
      },
    );
  }
}
