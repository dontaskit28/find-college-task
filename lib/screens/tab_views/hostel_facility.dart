import 'package:flutter/material.dart';

class HostelFacilityView extends StatefulWidget {
  const HostelFacilityView({super.key});

  @override
  State<HostelFacilityView> createState() => _HostelFacilityViewState();
}

class _HostelFacilityViewState extends State<HostelFacilityView> {
  int selecteBed = 0;
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selecteBed = i;
                        });
                      },
                      child: Container(
                        width: 69,
                        height: 31,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: i == selecteBed
                              ? const Color(0xff0E3C6E)
                              : const Color(0xffF5F5F5),
                          border: i == selecteBed
                              ? null
                              : Border.all(
                                  color: const Color(0xff0E3C6E),
                                ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.bed,
                              color: i == selecteBed
                                  ? Colors.white
                                  : const Color(0xff0E3C6E),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${4 - i}',
                              style: TextStyle(
                                color: i == selecteBed
                                    ? Colors.white
                                    : const Color(0xff0E3C6E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            ),
            const SizedBox(
              height: 29,
            ),
            // 7 images horizontally
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 137,
                    width: 154,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffE7E6E6),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/hostel/hostel${index + 1}.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            // 7 dots horizontally with 1 selected
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: i == selectedImage
                            ? const Color(0xff0E3C6E)
                            : const Color(0xffC4C4C4),
                      ),
                    ),
                  )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "GHJK Engineering Hostel",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // Rating box
                Container(
                  height: 24,
                  width: 52,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4),
                      Text(
                        "4.3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.location_pin),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff969797),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Row(
              children: [
                Text(
                  "Facilities",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: Color(0xff0E3C6E),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("Facility ${index + 1}")
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
