import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app/widgets/out_boarding_cont.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int _pageIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Visibility(
                visible: _pageIndex != 2,
                replacement: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    },
                    child: const Text(
                      'START',
                      style: TextStyle(fontSize: 16),
                    )),
                child: TextButton(
                    onPressed: () {
                      _pageController.animateToPage(2,
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutBack);
                    },
                    child: const Text(
                      'SKIP',
                      style: TextStyle(fontSize: 16),
                    )),
              ),
            ),
            // Visibility(
            //   visible: _pageIndex != 2,
            //   child: Align(
            //       alignment: Alignment.topRight,
            //       child: TextButton(
            //           onPressed: () {},
            //           child: const Text(
            //             'SKIP',
            //             style: TextStyle(fontSize: 16),
            //           ))),
            // ),
            // if (_pageIndex == 2)
            //   Align(
            //       alignment: Alignment.topRight,
            //       child: TextButton(
            //           onPressed: () {},
            //           child: const Text(
            //             'START',
            //             style: TextStyle(fontSize: 16),
            //           ))),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int pageIndex) {
                  setState(() => _pageIndex = pageIndex);
                },
                scrollDirection: Axis.horizontal,
                children: const [
                  OutBordingConting(
                      imageName: 'ui',
                      text:
                          'ejwh i e e itc e i7 igdigicdguy jg ucyscc uygc scycgsucysgc uygcuc gcc ucg cuc uccgcuc ucyc uyscgcuyscgscuycg cuygcusc sucgt cucgscusy c',
                      title: 'Welcome !'),
                  OutBordingConting(
                      imageName: 'ui',
                      text:
                          'ejwh i e e itc e i7 igdigicdguy jg ucyscc uygc scycgsucysgc uygcuc gcc ucg cuc uccgcuc ucyc uyscgcuyscgscuycg cuygcusc sucgt cucgscusy c',
                      title: 'Welcome !'),
                  OutBordingConting(
                      imageName: 'ui',
                      text:
                          'ejwh i e e itc e i7 igdigicdguy jg ucyscc uygc scycgsucysgc uygcuc gcc ucg cuc uccgcuc ucyc uyscgcuyscgscuycg cuygcusc sucgt cucgscusy c',
                      title: 'Welcome !'),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabPageSelectorIndicator(
                    backgroundColor:
                        _pageIndex == 0 ? Colors.amber : Colors.green,
                    borderColor: Colors.white,
                    size: 12),
                TabPageSelectorIndicator(
                    backgroundColor:
                        _pageIndex == 1 ? Colors.amber : Colors.green,
                    borderColor: Colors.white,
                    size: 12),
                TabPageSelectorIndicator(
                    backgroundColor:
                        _pageIndex == 2 ? Colors.amber : Colors.green,
                    borderColor: Colors.white,
                    size: 12),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      if (_pageIndex != 0) {
                        _pageController.previousPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOutBack);
                      }
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                IconButton(
                    onPressed: () {
                      if (_pageIndex != 2) {
                        _pageController.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOutBack);
                      }
                    },
                    icon: const Icon(Icons.arrow_forward_ios))
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Visibility(
              maintainState: true,
              maintainSize: true,
              maintainAnimation: true,
              visible: _pageIndex == 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        minimumSize: const Size(double.infinity, 45)),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    },
                    child: const Text('START')),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
