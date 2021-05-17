import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/game_details/game_details_cubit.dart';
import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/widgets/game_list_item.dart';

class GameDetailsScreen extends StatefulWidget {
  final Game game;

  const GameDetailsScreen({Key? key, required this.game}) : super(key: key);

  @override
  _GameDetailsScreenState createState() => _GameDetailsScreenState();
}

class _GameDetailsScreenState extends State<GameDetailsScreen> {
  PageController _galleryController = PageController();
  GameDetailsCubit _gameDetailsCubit = GameDetailsCubit();

  @override
  void initState() {
    _galleryController.addListener(
        () => _gameDetailsCubit.setNewPage(_galleryController.page!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _gameDetailsCubit,
      child: BlocBuilder<GameDetailsCubit, double>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: CustomColors.darkerBackgroundColor,
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    GameListItem(
                      game: widget.game,
                      isFromList: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Card(
                        color: CustomColors.backgroundColor,
                        elevation: 4,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Container(
                          width: double.infinity,
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: PageView(
                              controller: _galleryController,
                              children: [
                                for (var ss in widget.game.screenshots)
                                  Image.network(
                                    ss,
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;

                                      return Center(
                                        child: SizedBox(
                                          child: CircularProgressIndicator(
                                            valueColor: AlwaysStoppedAnimation(
                                                CustomColors.secondaryColor),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i < widget.game.screenshots.length; i++)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                  color: state.round() == i
                                      ? CustomColors.primaryColor
                                      : null,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: CustomColors.primaryColor,
                                    width: 2,
                                  )),
                            ),
                          )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Card(
                        color: CustomColors.backgroundColor,
                        elevation: 4,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 16.0),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SizedBox(
                                              width: 60,
                                              height: 60,
                                              child: CircularProgressIndicator(
                                                value: widget.game.rating / 100,
                                                strokeWidth: 6,
                                                backgroundColor: CustomColors
                                                    .darkerBackgroundColor,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                  CustomColors.secondaryColor,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              widget.game.rating != -1
                                                  ? widget.game.rating
                                                      .round()
                                                      .toString()
                                                  : 'N/A',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5,
                                            )
                                          ]),
                                    ),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                            color: CustomColors.textColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Genre: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    CustomColors.secondaryColor,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  widget.game.genres.join(', '),
                                            ),
                                            TextSpan(
                                              text: '\nPlatforms: ',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color:
                                                    CustomColors.secondaryColor,
                                              ),
                                            ),
                                            TextSpan(
                                              text: widget.game.platforms
                                                  .join(', '),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                widget.game.summary,
                                style: TextStyle(
                                  color: CustomColors.textColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _galleryController.dispose();
    super.dispose();
  }
}
