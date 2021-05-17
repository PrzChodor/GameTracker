import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gametracker/cubit/game_list_item/game_list_item_cubit.dart';

import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:gametracker/screens/game_details_screen.dart';
import 'package:intl/intl.dart';

class GameListItem extends StatefulWidget {
  final Game game;
  final bool isFromList;

  const GameListItem({
    Key? key,
    required this.game,
    required this.isFromList,
  }) : super(key: key);

  @override
  _GameListItemState createState() => _GameListItemState();
}

class _GameListItemState extends State<GameListItem> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameListItemCubit()..checkState(widget.game),
      child: BlocBuilder<GameListItemCubit, GameListItemState>(
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              if (!widget.isFromList) Navigator.pop(context, state);
              return true;
            },
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Hero(
                tag: 'GameItem' + widget.game.id.toString(),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: CustomColors.backgroundColor,
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: widget.isFromList
                        ? () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GameDetailsScreen(
                                  game: widget.game,
                                ),
                              ),
                            ).then((poppedState) => poppedState != state
                                ? context
                                    .read<GameListItemCubit>()
                                    .emit(poppedState)
                                : {})
                        : () => Navigator.pop(context, state),
                    child: SizedBox(
                      height: 147,
                      child: Row(
                        children: [
                          Image.network(
                            widget.game.cover,
                            width: 110,
                            height: 147,
                            fit: BoxFit.cover,
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) return child;
                              return SizedBox(
                                width: 110,
                                height: 147,
                                child: Center(
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                    valueColor: AlwaysStoppedAnimation(
                                        CustomColors.secondaryColor),
                                  ),
                                ),
                              );
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.game.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline5!
                                        .merge(TextStyle(fontSize: 18)),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Text(
                                      widget.game.developers,
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                  Text(
                                    DateFormat('MMM dd, yyyy').format(
                                        DateTime.fromMillisecondsSinceEpoch(
                                            widget.game.date * 1000)),
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: CustomColors.primaryColor,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              state is Added
                                  ? Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        color: CustomColors.errorColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(8.0),
                                        ),
                                      ),
                                      child: IconButton(
                                        padding: const EdgeInsets.all(0),
                                        constraints: BoxConstraints(),
                                        splashRadius: 16,
                                        highlightColor:
                                            CustomColors.disabledColor,
                                        icon: Icon(
                                          Icons.remove,
                                          color: CustomColors.backgroundColor,
                                        ),
                                        onPressed: () => context
                                            .read<GameListItemCubit>()
                                            .removeFromLibrary(widget.game),
                                      ),
                                    )
                                  // ? Padding(
                                  //     padding: const EdgeInsets.symmetric(
                                  //         horizontal: 6.0, vertical: 10),
                                  //     child: PopupMenuButton(
                                  //       onSelected: (value) => state.maybeWhen(
                                  //         added: () => context
                                  //             .read<GameListItemCubit>()
                                  //             .removeFromLibrary(widget.game),
                                  //         orElse: () {},
                                  //       ),
                                  //       offset: Offset(-10, -50),
                                  //       color:
                                  //           CustomColors.darkerBackgroundColor,
                                  //       child: Icon(Icons.more_vert),
                                  //       itemBuilder: (context) => [
                                  //         PopupMenuItem(
                                  //           value: 0,
                                  //           child: state.maybeWhen(
                                  //             added: () => Row(children: [
                                  //               Padding(
                                  //                 padding:
                                  //                     const EdgeInsets.only(
                                  //                         right: 16.0),
                                  //                 child: Icon(Icons.delete),
                                  //               ),
                                  //               Text('Delete from library')
                                  //             ]),
                                  //             orElse: () {},
                                  //           ),
                                  //         ),
                                  //       ],
                                  //     ),
                                  //   )
                                  : Container(),
                              Spacer(),
                              Container(
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  color: state.when(
                                      initial: () =>
                                          CustomColors.backgroundColor,
                                      notAdded: () => CustomColors.primaryColor,
                                      added: () => CustomColors.secondaryColor,
                                      completed: () =>
                                          CustomColors.successColor),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                  ),
                                ),
                                child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  constraints: BoxConstraints(),
                                  splashRadius: 16,
                                  highlightColor: CustomColors.disabledColor,
                                  icon: Icon(
                                    state.maybeWhen(
                                        notAdded: () => Icons.add_rounded,
                                        added: () => Icons.check_rounded,
                                        completed: () =>
                                            Icons.emoji_events_rounded,
                                        orElse: () {}),
                                    color: CustomColors.backgroundColor,
                                  ),
                                  onPressed: () => state.maybeWhen(
                                      notAdded: () => context
                                          .read<GameListItemCubit>()
                                          .addToLibrary(widget.game),
                                      added: () => context
                                          .read<GameListItemCubit>()
                                          .completeGame(widget.game),
                                      completed: () => context
                                          .read<GameListItemCubit>()
                                          .notCompleted(widget.game),
                                      orElse: () {}),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
