import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/game_lists/added_list_cubit.dart';
import 'package:gametracker/cubit/game_lists/completed_list_cubit.dart';
import 'package:gametracker/cubit/games_tabs/games_tabs_cubit.dart';
import 'package:gametracker/cubit/home/home_cubit.dart';
import 'package:gametracker/cubit/profile/profile_cubit.dart';
import 'package:gametracker/cubit/search/search_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/screens/games/games_screen.dart';
import 'package:gametracker/screens/profile/profile_screen.dart';
import 'package:gametracker/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(),
        ),
        BlocProvider<SearchCubit>(
          create: (context) => SearchCubit()..getPopular(),
        ),
        BlocProvider<ProfileCubit>(
          create: (context) => ProfileCubit(),
        ),
        BlocProvider<GamesTabsCubit>(
          create: (context) => GamesTabsCubit(),
        ),
      ],
      child: SafeArea(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Scaffold(
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: BottomNavigationBar(
                  currentIndex: context.read<HomeCubit>().currentPage,
                  onTap: (index) =>
                      context.read<HomeCubit>().pageChanged(index),
                  backgroundColor: CustomColors.backgroundColor,
                  selectedItemColor: CustomColors.secondaryColor,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.sports_esports),
                      label: 'Games',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: 'Search',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Profile',
                    )
                  ],
                ),
              ),
              body: state.when(
                games: () => GamesScreen(),
                search: () => SearchScreen(),
                profile: () => ProfileScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
