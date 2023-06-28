import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:front/src/themes/colors.dart' as colors;

List<String> icons = [
  'assets/icons/home.svg',
  'assets/icons/helmet.svg',
  'assets/icons/chat.svg',
  'assets/icons/me.svg',
];

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;

  void _onItemTapped(int index) {
    setState(() {
      this.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xFFE9E9EF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < 4; i++)
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => _onItemTapped(i),
                child: Center(
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: colors.GradientColors.yellowToRed.map((color) {
                          return i == index ? color : color;
                        }).toList(),
                        stops: colors.GradientStops.yellowToRed,
                      ).createShader(bounds);
                    },
                    child: SvgPicture.asset(
                      icons[i],
                      colorFilter: ColorFilter.mode(
                        i == index ? Colors.white : colors.Colors.darkR,
                        BlendMode.srcIn,
                      ),
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
