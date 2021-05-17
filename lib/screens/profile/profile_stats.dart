import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/home/home_cubit.dart';
import 'package:gametracker/cubit/profile/profile_cubit.dart';
import 'package:gametracker/helpers/custom_colors.dart';

class ProfileStats extends StatefulWidget {
  @override
  _ProfileStatsState createState() => _ProfileStatsState();
}

class _ProfileStatsState extends State<ProfileStats> {
  @override
  void initState() {
    context.read<ProfileCubit>().loadStats();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, List<int>>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: CustomColors.backgroundColor,
            clipBehavior: Clip.antiAlias,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () => context
                        .read<HomeCubit>()
                        .pageChanged(0), //TODO: Change page to completed
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Played',
                            style: Theme.of(context).textTheme.headline4!.merge(
                                  TextStyle(
                                    color: CustomColors.secondaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              state[1].toString(),
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 2,
                  height: 140,
                  color: CustomColors.secondaryColor,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => context
                        .read<HomeCubit>()
                        .pageChanged(0), //TODO: Change page to added
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 28),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Added',
                            style: Theme.of(context).textTheme.headline4!.merge(
                                  TextStyle(
                                    color: CustomColors.secondaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              state[0].toString(),
                              style: Theme.of(context).textTheme.headline3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
