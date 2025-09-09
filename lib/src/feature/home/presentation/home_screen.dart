import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_level/src/core/utils/app_images';
import 'package:test_level/src/feature/bottom_nav_bar/presentation/bottom_nav_bar.dart';
import 'package:test_level/src/feature/home/presentation/widgets/home_widgets.dart';
import 'package:test_level/src/general_widget/app_image_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                const SliverToBoxAdapter(child: Header()),
                const SliverToBoxAdapter(child: SizedBox(height: 26)),
                const SliverToBoxAdapter(child: TotalBlock()),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),
                const SliverToBoxAdapter(child: PrimaryActions()),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),
                const SliverToBoxAdapter(child: CompleteProfileCard()),
                const SliverToBoxAdapter(child: CardDots(total: 4, index: 0)),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),
                const SliverToBoxAdapter(child: PortfolioCard()),
                const SliverToBoxAdapter(child: SizedBox(height: 24)),
                const SliverToBoxAdapter(child: InviteBanner()),
                const SliverToBoxAdapter(child: SizedBox(height: 96)),
              ],
            ),

            Positioned(
              bottom: 40,
              right: MediaQuery.of(context).size.width * 0.12,
              left: MediaQuery.of(context).size.width * 0.12,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 1,
                    child: AppImageView(
                      imagePath: AppImages.mainBG,
                      // height: 60,
                      fit: BoxFit.fitWidth,
                      width: 208,
                      radius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                    width: 208,
                    // height: 60,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Complete profile',
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              CupertinoIcons.chevron_right,
                              size: 18,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        ProgressBarCompact(
                          title: 'Complete profile',
                          value: 1 / 3,
                          trailing: '1/3',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
