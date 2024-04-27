import 'package:assignment/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0E3C6E),
              Color(0xFF0E3C6E),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Find your own way',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ), // Add space between the two Text widgets
                        Text(
                          'Search in 600 colleges around!',
                          style: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 17.0,
                      height: 21.0,
                      margin: const EdgeInsets.only(top: 1.0),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          const Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 21.0,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const CustomSearchBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(225.0);
}
