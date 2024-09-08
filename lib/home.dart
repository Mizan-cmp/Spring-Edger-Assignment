import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Background_Image.png'),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: size.width / 2,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Ship_Image.png'))),
              child: Stack(
                children: [
                  Positioned(
                      bottom: 15,
                      left: 135,
                      child: Text(
                        'Explore Demo Limited\'s Premier Logistics\nand Freight Services',
                        style: GoogleFonts.publicSans(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ))
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/Logo.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('assets/svg/Demo.svg'),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(34),
                  height: size.height * 0.7,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        height: size.height * 0.1,
                        width: size.height * 0.1,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(size.height * 0.1),
                          color: const Color.fromRGBO(233, 245, 254, 1),
                        ),
                        child: SvgPicture.asset(
                          'assets/svg/Logo.svg',
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Welocme Back',
                        style: GoogleFonts.publicSans(
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(33, 33, 33, 1),
                            fontSize: 32),
                      ),
                      Text(
                        'We are glad to see you',
                        style: GoogleFonts.publicSans(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(102, 102, 102, 1),
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'User',
                            labelStyle: GoogleFonts.publicSans(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(102, 102, 102, 1),
                                fontSize: 16),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(102, 102, 102, 1)))),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: GoogleFonts.publicSans(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(102, 102, 102, 1),
                                fontSize: 16),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Color.fromRGBO(102, 102, 102, 1)))),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(53, 167, 215, 1),
                                  Color.fromRGBO(68, 90, 130, 1),
                                ]),
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          'Login',
                          style: GoogleFonts.publicSans(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Forget Password?',
                        style: GoogleFonts.publicSans(
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(68, 93, 127, 1),
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 85),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/svg/Ph_Copyright.svg'),
                      Text(
                        ' 2024 DEMO GROUP. All Rights Reserved',
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(102, 102, 102, 1)),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
