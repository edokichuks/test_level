import 'package:flutter/material.dart';
import 'package:test_level/src/feature/home/presentation/widgets/home_widget_exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: const[
                SliverToBoxAdapter(child: Header()),
                SliverToBoxAdapter(child: SizedBox(height: 26)),
                SliverToBoxAdapter(child: TotalBlock()),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: PrimaryActions()),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: CompleteProfileCard()),
                SliverToBoxAdapter(child: CardDots(total: 4, index: 0)),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: PortfolioCard()),
                SliverToBoxAdapter(child: SizedBox(height: 24)),
                SliverToBoxAdapter(child: InviteBanner()),
                SliverToBoxAdapter(child: SizedBox(height: 96)),
              ],
            ),
            CompleteProfilePrompt(),
          ],
        ),
      ),
    );
  }
}
