import 'package:assignment/models/bottom_bar_model.dart';
import 'package:assignment/models/college_model.dart';
import 'package:assignment/models/college_type_model.dart';
import 'package:assignment/models/home_model.dart';

final List<HomeModel> homeModelList = [
  HomeModel(
    name: 'Top Colleges',
    description:
        'Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min.',
    imageAssetPath: 'assets/images/home/home1.jpg',
    extra: '+126',
    extra2: "Colleges",
  ),
  HomeModel(
    name: 'Top Schools',
    description:
        'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
    imageAssetPath: 'assets/images/home/home2.jpg',
    extra: '+106',
    extra2: "Schools",
  ),
  HomeModel(
    name: 'Exams',
    description:
        'Find end-to-end information about the exams that are happening in India',
    imageAssetPath: 'assets/images/home/home3.jpg',
    extra: '+16',
    extra2: "Exams",
  ),
];

final List<CollegeModel> collegesList = [
  CollegeModel(
    name: 'GHJK Engineering college',
    imageAssetPath: 'assets/images/college/college1.jpg',
    description:
        'Best college in hyderabad right now. The mission of the University of College is to contribute to society through education',
  ),
  CollegeModel(
    name: 'University of Cambridge',
    imageAssetPath: 'assets/images/college/college2.jpg',
    description:
        'The mission of the University of Cambridge is to contribute to society through education',
  ),
  CollegeModel(
    name: 'Harvard University',
    imageAssetPath: 'assets/images/college/college3.jpg',
    description:
        'Harvard University is devoted to excellence in teaching, learning, and research',
  ),
];

final List<BottomBarModel> bottomBarItems = [
  BottomBarModel(
    title: 'Home',
    imageAssetPath: 'assets/images/bottom_icons/home.png',
  ),
  BottomBarModel(
    title: 'Saved',
    imageAssetPath: 'assets/images/bottom_icons/saved.png',
  ),
  BottomBarModel(
    title: 'Discover',
    imageAssetPath: 'assets/images/bottom_icons/discovery.png',
  ),
  BottomBarModel(
    title: 'Account',
    imageAssetPath: 'assets/images/bottom_icons/account.png',
  ),
];

final List<CollegeTypeModel> collageTypes = [
  CollegeTypeModel(
      name: "Bachelor of Technology",
      imageAssetPath: "assets/images/college/study1.png"),
  CollegeTypeModel(
      name: "Bachelor of Architecture",
      imageAssetPath: "assets/images/college/study2.png"),
  CollegeTypeModel(
      name: "Pharmacy", imageAssetPath: "assets/images/college/study3.png"),
  CollegeTypeModel(
      name: "Law", imageAssetPath: "assets/images/college/study4.png"),
  CollegeTypeModel(
      name: "Management", imageAssetPath: "assets/images/college/study5.png"),
];
