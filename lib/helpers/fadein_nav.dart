part of 'helpers.dart';

Route fadeInNavCard(BuildContext context, Widget view) {
  return PageRouteBuilder(
      pageBuilder: (_, __, ___) => view,
      transitionDuration: Duration(seconds: 1),
      transitionsBuilder: (context, animation, _, child) {
        return FadeTransition(
            child: child,
            opacity: Tween<double>(begin: 0, end: 1).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOut)));
      });
}
