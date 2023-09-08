// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTableRow extends StatefulWidget {
  const CustomTableRow({super.key});

  @override
  State<CustomTableRow> createState() => _CustomTableRowState();
}

class _CustomTableRowState extends State<CustomTableRow> {
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: double.infinity,
      height: isTap ? 286 : 60,
      decoration: BoxDecoration(
        color: isTap ? const Color(0xFFF4F2FF) : Colors.white,
        border: Border.all(
          color: const Color(0xFFD9D5EC),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/Neutral.png",
                      width: 20,
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 30),
                      child: Image.asset(
                        "assets/Master.png",
                        width: 15,
                        height: 15,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Raxmatillo Xolmatov Paxlavon o'g'li",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xFF25213B),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "+998(99) 123-45-67",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xFF6E6893),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6E6F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: const BoxDecoration(
                                color: Color(0xFF4A4AFF),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "O'rnatilgan",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: const Color(0xFF4A4AFF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Instagram: O’rtacha 4 soat",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: const Color(0xFF6E6893),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFECCC),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: const BoxDecoration(
                                color: Color(0xFF965E00),
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "O'rtacha",
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: const Color(0xFF965E00),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      "Kuniga 0.1 soat",
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: const Color(0xFF25213B),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$200",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xFF25213B),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "USD",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xFF6E6893),
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, right: 22),
                      child: InkWell(
                        onTap: () {
                          isTap = !isTap;
                          setState(() {});
                        },
                        child: Text(
                          "View more",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            color: const Color(0xFF6E6893),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/More.png",
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return index == 0
                    ? Container(
                        width: double.infinity,
                        height: 46,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4F2FF),
                            border: Border.all(
                                width: 1, color: const Color(0xFFD9D5EC))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 85),
                          child: Row(
                            children: [
                              Text(
                                "SANA",
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  color: const Color(0xFF6E6893),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 90,
                                  right: 162,
                                ),
                                child: Text(
                                  "DASTUR NOMLARI",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: const Color(0xFF6E6893),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "SARIFLANGAN VAQT",
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      color: const Color(0xFF6E6893),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 7),
                                  Image.asset(
                                    "assets/Info.png",
                                    width: 15,
                                    height: 15,
                                  )
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF4F2FF),
                            border: Border.all(
                                width: 1, color: const Color(0xFFD9D5EC))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 85),
                          child: Row(
                            children: [
                              Text(
                                "12/APR/2020",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color(0xFF6E6893),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 35, right: 175),
                                child: SizedBox(
                                  width: 100,
                                  height: 17,
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    "Telegram",
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      color: const Color(0xFF25213B),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "2 soat 50 daqiqa 34 soniya. Bu normadan 1 soat ortiq",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                  color: const Color(0xFF25213B),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
