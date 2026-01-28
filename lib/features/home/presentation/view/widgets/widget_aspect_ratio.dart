import 'package:flutter/material.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/features/home/presentation/viewmodel/aspect_ratio_provoder.dart';
import 'package:provider/provider.dart';

class WidgetAspectRatio extends StatelessWidget {
  const WidgetAspectRatio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AspectRatioProvider>(
      builder: (context, provider, child) {
        var ratio = [
          {'size': '1:1', 'height': 18.0, 'width': 18.0},
          {'size': '16:9', 'height': 18.0, 'width': 30.0},
          {'size': '9:16', 'height': 30.0, 'width': 18.0},
          {'size': '3:4', 'height': 18.0, 'width': 25.0},
        ];
    
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: ratio.asMap().entries.map((entry) {
              int index = entry.key;
              var rowRadio = entry.value;
              bool isSelected = provider.selectedIndex == index;
    
              return GestureDetector(
                onTap: () {
                  provider.selectIndex(index); 
                },
                child: Container(
                  height: 46.0,
                  width: 98.0,
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    gradient: isSelected
                        ? AppColor.primaryGradient
                        : null,
                    color: isSelected
                        ? null
                        : const Color(0xffECEFF3),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: rowRadio['height'] as double,
                        width: rowRadio['width'] as double,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: isSelected
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Text(
                        rowRadio['size'] as String,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: isSelected
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
