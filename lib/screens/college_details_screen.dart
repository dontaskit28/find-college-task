import 'package:assignment/models/college_model.dart';
import 'package:assignment/screens/tab_views/about_college.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'tab_views/hostel_facility.dart';

class CollegeDetailPage extends StatefulWidget {
  final CollegeModel college;

  const CollegeDetailPage({
    super.key,
    required this.college,
  });

  @override
  State<CollegeDetailPage> createState() => _CollegeDetailPageState();
}

class _CollegeDetailPageState extends State<CollegeDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final ScrollController _scrollController = ScrollController();

  bool _showAppbar = false;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 270) {
        _showAppbar = true;
      } else {
        _showAppbar = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 32,
              right: 32,
              bottom: 20,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF0E3C6E),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              child: const Center(
                child: Text(
                  'Apply Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Container(
                color: const Color(0xFF0E3C6E),
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const CircleAvatar(
                          radius: 21,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xFF0E3C6E),
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.bookmark_border_outlined,
                          color: Color(0xFF0E3C6E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 190.0,
                child: Hero(
                  tag: widget.college.imageAssetPath,
                  child: Image.asset(
                    widget.college.imageAssetPath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (_showAppbar)
              SliverAppBar(
                toolbarHeight: 60,
                backgroundColor: const Color(0xFF0E3C6E),
                floating: true,
                pinned: true,
                elevation: 0,
                titleSpacing: 0,
                automaticallyImplyLeading: false,
                flexibleSpace: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 28, vertical: 10),
                    child: Text(
                      widget.college.name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 18.0),
                            Text(
                              widget.college.name,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              widget.college.description,
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff8E8E8E),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 74,
                        width: 52,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(height: 10),
                            Text(
                              "4.3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Icon(
                              Icons.star,
                              size: 23.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              floating: false,
              elevation: 0,
              surfaceTintColor: Colors.white,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffF8F8F8),
                  border: Border.all(
                    width: 1,
                    color: Colors.black.withOpacity(0.1),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.09),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(text: 'About College'),
                      Tab(text: 'Hostel Facility'),
                      Tab(text: 'Q & A'),
                      Tab(text: 'Events'),
                    ],
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                      color: Colors.black,
                    ),
                    labelPadding: EdgeInsetsGeometry.lerp(
                      EdgeInsets.zero,
                      const EdgeInsets.symmetric(horizontal: 10),
                      0.5,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Lato',
                      color: Colors.grey,
                    ),
                    indicatorColor: const Color(0xFF0E3C6E),
                  ),
                ),
              ),
            )
          ];
        },
        body: SizedBox(
          child: TabBarView(
            controller: _tabController,
            children: [
              const AboutCollegeView(),
              const HostelFacilityView(),
              Container(
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Q & A',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
