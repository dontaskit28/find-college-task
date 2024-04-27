import 'package:assignment/screens/colleges_screen.dart';
import 'package:assignment/utils/constants.dart';
import 'package:flutter/material.dart';

class SelectCollegeSheet extends StatefulWidget {
  const SelectCollegeSheet({super.key});

  @override
  State<SelectCollegeSheet> createState() => _SelectCollegeSheetState();
}

class _SelectCollegeSheetState extends State<SelectCollegeSheet> {
  int selectedCollegeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Sort by',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  size: 30,
                ),
              ),
            ],
          ),
          Divider(
            height: 40,
            color: Colors.black.withOpacity(0.2),
            thickness: 1,
          ),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedCollegeIndex = index;
                  });
                  Navigator.pop(context);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TopCollegesPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Image.asset(
                      collageTypes[index].imageAssetPath,
                      width: 22,
                      height: 22,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      collageTypes[index].name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Radio(
                      value: index,
                      groupValue: selectedCollegeIndex,
                      onChanged: (value) {
                        setState(() {
                          selectedCollegeIndex = value as int;
                        });
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TopCollegesPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 8,
              );
            },
            itemCount: collageTypes.length,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

showShortBottomModal({
  required BuildContext context,
}) async {
  showModalBottomSheet(
    context: context,
    barrierColor: Colors.transparent.withOpacity(0.5),
    useSafeArea: false,
    backgroundColor: Colors.white,
    constraints: BoxConstraints(
      minHeight: 300,
      minWidth: MediaQuery.of(context).size.width,
    ),
    builder: (context) => const SelectCollegeSheet(),
  );
}
