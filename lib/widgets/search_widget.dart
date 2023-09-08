import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: const Color(0xFFF4F2FF),
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/Search.png",
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF6E6893),
                  ),
                  hintText: "Search Users by Name, Email or Date",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                maxLines: 1,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
