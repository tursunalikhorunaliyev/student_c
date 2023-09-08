import 'package:flutter/material.dart';
import 'package:student_c/widgets/button_widget.dart';
import 'package:student_c/widgets/custom_table_row.dart';
import 'package:student_c/widgets/filter_button.dart';
import 'package:student_c/widgets/search_widget.dart';
import 'package:student_c/widgets/selctable_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEBF1F4),
      body: Row(
        children: [
          Container(
            width: 280,
            height: double.infinity,
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.only(top: 22, left: 32),
              child: Text(
                "EDUGO Plus",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 51,
                  color: Colors.white,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 23, right: 37, top: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFC6C2DE),
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SelectableWidget(
                          borderColor: const Color(0xFF25213B),
                          tappedButtonTextStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                          textStyle: const TextStyle(
                            color: Color(0xFF6E6893),
                            fontWeight: FontWeight.w600,
                          ),
                          elements: const ["All", "Paid", "Unpaid", "Overdue"],
                          count: const [0, 0, 0, 0],
                          height: 29,
                          withTextBorder: true,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Total payable amount:",
                              style: TextStyle(
                                color: Color(0xFF6E6893),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "\$900.00",
                              style: TextStyle(
                                color: Color(0xFF6D5BD0),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "USD",
                              style: TextStyle(
                                color: Color(0xFF6E6893),
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: const EdgeInsets.only(
                        top: 20, right: 37, left: 23, bottom: 23),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FilterButton(),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 1,
                                child: SearchWidget(),
                              ),
                              Spacer(),
                              ButtonWidget(text: "Pay Due")
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 45,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF4F2FF),
                            border: Border(
                              top: BorderSide(
                                color: Color(0xFFD9D5EC),
                              ),
                            ),
                          ),
                          child: const Row(
                            children: [
                              SizedBox(width: 107),
                              Text(
                                "NAME",
                              ),
                              SizedBox(width: 242),
                              Text(
                                "AKTIVLIK HOLATI",
                              ),
                              SizedBox(width: 98),
                              Text(
                                "VAQT SARFI",
                              ),
                              SizedBox(width: 40),
                              Text(
                                "AMOUNT",
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return const CustomTableRow();
                            },
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF4F2FF),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(8),
                            ),
                          ),
                          child: Row(
                            children: [
                              const Spacer(),
                              const Text(
                                "Rows per page: 10",
                                style: TextStyle(
                                  color: Color(0xFF6E6893),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              Image.asset(
                                "assets/Polygon 3.png",
                                width: 8,
                                height: 5,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              const Text(
                                "1-10 of 276",
                                style: TextStyle(
                                  color: Color(0xFF6E6893),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Image.asset(
                                "assets/previous.png",
                                height: 13,
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Image.asset(
                                "assets/next.png",
                                height: 13,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
