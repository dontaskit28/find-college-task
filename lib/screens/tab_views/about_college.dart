import 'package:flutter/material.dart';

class AboutCollegeView extends StatefulWidget {
  const AboutCollegeView({super.key});

  @override
  State<AboutCollegeView> createState() => _AboutCollegeViewState();
}

class _AboutCollegeViewState extends State<AboutCollegeView> {
  final ScrollController _scrollController = ScrollController();
  int selectedStudent = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _scrollController,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          // vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Description",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff8E8E8E),
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              "Location",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 184,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            const Text(
              "Student Review",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedStudent = i;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            selectedStudent == i
                                ? BoxShadow(
                                    color: Colors.black.withOpacity(0.15),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(4, 4),
                                  )
                                : const BoxShadow(),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/people/people${i + 1}.png',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE7E6E6),
                  ),
                  child: const Center(
                    child: Text(
                      "+12",
                      style: TextStyle(
                        color: Color(0xFF0E3C6E),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                for (int i = 0; i < selectedStudent; i++)
                  Padding(
                    padding: EdgeInsets.only(left: 50 + i * 18),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 9),
                  child: Container(
                    height: 21,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.change_history_rounded,
                        color: Color(0xFF0E3C6E),
                        size: 21,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              // height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff9E9E9E).withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 16,
                    offset: const Offset(8, 8),
                  ),
                  BoxShadow(
                    color: const Color(0xff9E9E9E).withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 16,
                    offset: const Offset(-8, -8),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Student ${selectedStudent + 1}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8E8E8E),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // star rating
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          const Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                        const Spacer(),
                        const Text(
                          "4.3",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
