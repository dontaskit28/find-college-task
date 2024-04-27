import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 10.0),
            height: 53.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  color: Color(0xffD6D6D6),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    onTapOutside: (value) {
                      FocusScope.of(context).unfocus();
                    },
                    decoration: const InputDecoration(
                      hintText: 'Search for colleges schools..',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffD6D6D6),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 55.0,
          height: 53.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Icon(
            Icons.mic,
            size: 26,
            color: Color(0xFF0E3C6E),
          ), // Voice icon
        ),
      ],
    );
  }
}
