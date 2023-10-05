import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/share/cubit/app_cubit.dart';
import 'package:travel_app/share/widgets/appLargeText.dart';
import 'package:travel_app/share/widgets/appText.dart';
import 'package:travel_app/consts/AppColors.dart';
import 'package:travel_app/share/widgets/responsiveButton.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    'mountain.jpeg',
    'welcome-one.png',
    'welcome-three.png',
    'welcome-two.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: images.length,
      itemBuilder: (_, index) {
        return Container(
          // height: double.maxFinite,
          // width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/' + images[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(
              top: 150,
              left: 30,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const AppLargeText(text: "Trips"),
                        const AppText(
                          text: "Mountains",
                          size: 25,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 250,
                          child: Text(
                            "Mountain hikes gives you an incredible sense of freedom along with endurance test.",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 350,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () => BlocProvider.of<AppCubit>(context).getData(),
                            child: const SizedBox(
                              width: 320,
                              child: Row(
                                children: [
                                  ResponsiveButton(
                                    width: double.infinity,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // Column(
                //   children: List.generate(3, (dotIndex) {
                //     return Container(
                //       margin: const EdgeInsets.only(bottom: 2),
                //       height: index == dotIndex ? 25 : 8,
                //       width: 8,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         color: index == dotIndex ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3),
                //       ),
                //     );
                //   }),
                // )
              ],
            ),
          ),
        );
      },
    ));
  }
}
