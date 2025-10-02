import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../constants/app_assets.dart';
import '../constants/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../extensions/space.dart';

class ResponsiveNavigationWrapper extends StatefulWidget {
  final Widget child;

  const ResponsiveNavigationWrapper({
    super.key,
    required this.child,
  });

  @override
  State<ResponsiveNavigationWrapper> createState() => _ResponsiveNavigationWrapperState();
}

class _ResponsiveNavigationWrapperState extends State<ResponsiveNavigationWrapper> {
  int _selectedIndex = 0;
  static const double _mobileBreakpoint = 600;

  final List<NavigationRoute> _routes = [
    NavigationRoute(path: '/home', name: 'Dashboard'),
    NavigationRoute(path: '/federations', name: 'Federations Management'),
    NavigationRoute(path: '/disciplines', name: 'Disciplines Management'),
    NavigationRoute(path: '/events', name: 'Events Management'),
    NavigationRoute(path: '/judges', name: 'Judges Management'),
    NavigationRoute(path: '/rankings', name: 'Rankings System'),
    NavigationRoute(path: '/users', name: 'User Administrations'),
    NavigationRoute(path: '/reports', name: 'Reports Or Log'),
  ];

  List<NavigationItem> get _navigationItems => [
    NavigationItem(
      icon: AppAssets.homeIcon,
      label: 'Dashboard',
    ),
    NavigationItem(
      icon: AppAssets.federationIcon,
      label: 'Federations Management',
    ),
    NavigationItem(
      icon: AppAssets.disciplineIcon,
      label: 'Disciplines Management',
    ),
    NavigationItem(
      icon: AppAssets.eventIcon,
      label: 'Events Management',
    ),
    NavigationItem(
      icon: AppAssets.judgeIcon,
      label: 'Judges Management',
    ),
    NavigationItem(
      icon: AppAssets.rankingIcon,
      label: 'Rankings System',
    ),
    NavigationItem(
      icon: AppAssets.userAdministrationIcon,
      label: 'User Administrations',
    ),
    NavigationItem(
      icon: AppAssets.reportIcon,
      label: 'Reports Or Log',
    ),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateSelectedIndex();
  }

  void _updateSelectedIndex() {
    final currentPath = GoRouterState.of(context).uri.path;
    final index = _routes.indexWhere((route) => route.path == currentPath);
    if (index != -1 && index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _onDestinationSelected(int index) {
    if (index != _selectedIndex) {
      context.go(_routes[index].path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < _mobileBreakpoint;
        
        if (isMobile) {
          return _buildMobileLayout(context);
        } else {
          return _buildDesktopLayout(context);
        }
      },
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          _navigationItems[_selectedIndex].label,
          style: AppTextStyles.subHeading1.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      drawer: _buildDrawer(context),
      body: widget.child,
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Scaffold(

      body: Row(
        children: [
          _buildNavigationRail(),

          Expanded(
            child: Column(
              children: [
                _buildDesktopHeader(),
                Expanded(child: widget.child),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationRail() {
    return Container(
      width: 280,
      color: Colors.white,
      child: Column(
        children: [
          32.verticalSpace,
          _buildLogo(),
          24.verticalSpace,
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _navigationItems.length,
              itemBuilder: (context, index) {
                return _buildNavigationItem(
                  item: _navigationItems[index],
                  isSelected: _selectedIndex == index,
                  onTap: () => _onDestinationSelected(index),
                );
              },
            ),
          ),
          const Divider(),
          _buildBottomItems(),
          32.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: _buildLogo(),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _navigationItems.length,
              itemBuilder: (context, index) {
                return _buildNavigationItem(
                  item: _navigationItems[index],
                  isSelected: _selectedIndex == index,
                  onTap: () {
                    context.pop();
                    _onDestinationSelected(index);
                  },
                );
              },
            ),
          ),
          const Divider(),
          _buildBottomItems(),
          16.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildNavigationItem({
    required NavigationItem item,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 4),
      child: ListTile(
        leading: SvgPicture.asset(
          item.icon,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(
            isSelected ? AppColors.primaryColor : Colors.grey.shade600,
            BlendMode.srcIn,
          ),
        ),
        title: Text(
          item.label,
          style: AppTextStyles.body1.copyWith(
            color: isSelected ? AppColors.primaryColor : Colors.grey.shade700,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
        selected: isSelected,
        selectedTileColor: AppColors.primaryColor.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
    );
  }

  Widget _buildLogo() {
    return Image.asset(AppAssets.fedmanLogo,width: 80,height: 80,);
  }

  Widget _buildDesktopHeader() {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        children: [
          Text(
            _navigationItems[_selectedIndex].label,
            style: AppTextStyles.heading2.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          _buildUserProfile(),
        ],
      ),
    );
  }

  Widget _buildUserProfile() {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        16.horizontalSpace,
        Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              AppAssets.fedmanLogo,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        12.horizontalSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mark Ferdinand',
              style: AppTextStyles.body1.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Admin',
              style: AppTextStyles.body2.copyWith(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
        8.horizontalSpace,
        const Icon(Icons.keyboard_arrow_down),
      ],
    );
  }

  Widget _buildBottomItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.settings_outlined, size: 20),
            title: Text(
              'Settings',
              style: AppTextStyles.body1.copyWith(
                color: Colors.grey.shade700,
              ),
            ),
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined, size: 20),
            title: Text(
              'Logout',
              style: AppTextStyles.body1.copyWith(
                color: Colors.grey.shade700,
              ),
            ),
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          ),
        ],
      ),
    );
  }
}

class NavigationRoute {
  final String path;
  final String name;

  NavigationRoute({
    required this.path,
    required this.name,
  });
}

class NavigationItem {
  final String icon;
  final String label;

  NavigationItem({
    required this.icon,
    required this.label,
  });
}