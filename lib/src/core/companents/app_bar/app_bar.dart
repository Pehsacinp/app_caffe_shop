
/* class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    required this.systemOverlayStyle,
  });

  final systemOverlayStyle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 8,
            child: Container(
              width: 375.w,
              height: 280.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        AppImages.homeContainer,
                      ))),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
} */
