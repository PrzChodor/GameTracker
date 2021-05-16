import 'package:flutter/material.dart';

import 'package:gametracker/data/models/game.dart';
import 'package:gametracker/helpers/custom_colors.dart';
import 'package:intl/intl.dart';

class GameListItem extends StatefulWidget {
  final Game game;
  final Function() onTap;

  const GameListItem({
    Key? key,
    required this.game,
    required this.onTap,
  }) : super(key: key);

  @override
  _GameListItemState createState() => _GameListItemState();
}

class _GameListItemState extends State<GameListItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Hero(
        tag: 'GameItem' + widget.game.id.toString(),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: CustomColors.backgroundColor,
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: widget.onTap,
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
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
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
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              widget.game.developers,
                              style: Theme.of(context).textTheme.bodyText2,
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
                      IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 10),
                        constraints: BoxConstraints(),
                        splashRadius: 16,
                        icon: Icon(Icons.more_vert),
                        onPressed: () => {},
                      ),
                      Spacer(),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: CustomColors.secondaryColor,
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
                            Icons.check_rounded,
                            color: CustomColors.backgroundColor,
                          ),
                          onPressed: () {},
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
    );
  }
}
