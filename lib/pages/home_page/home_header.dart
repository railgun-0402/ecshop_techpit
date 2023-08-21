import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, Taro.',
              style: GoogleFonts.montserrat(
                  fontSize: 28,
                  fontWeight: FontWeight.w600
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Summer Collection 2022 is now available.',
                style: GoogleFonts.montserrat(
                    fontSize: 16
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
