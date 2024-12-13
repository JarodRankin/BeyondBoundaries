import 'package:flutter/material.dart';
import 'package:app/shared/styles.dart';

class MenuItem extends StatelessWidget {
  final String menuItem;
  final bool isActive;
  final Function(String) onTap;

  const MenuItem({
    super.key,
    required this.menuItem,
    required this.isActive,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () => onTap(menuItem),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  menuItem,
                  style: TextStyle(
                    fontSize: menuText,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                    color: isActive ? Colors.green : Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                if (isActive)
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
          )
    );
  }
}
