import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import 'package:thecrohns/models/Journal.dart';

import '../common/navigation/router/routes.dart';

class JournalCard extends StatelessWidget {
  const JournalCard({
    required this.journal,
     this.imageURL,
    super.key,
  });

  final Journal journal;
   final String? imageURL;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          context.goNamed(
            AppRoute.journal.name,
            pathParameters: {'id': journal.id},
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5.0,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  alignment: Alignment.center,
                  color: const Color.fromARGB(32, 155, 62, 62),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: journal.jImageUrl != null
                            ? Stack(children: [
                                const Center(
                                    child: CircularProgressIndicator()),
                                CachedNetworkImage(
                                  errorWidget: (context, url, dynamic error) =>
                                      const Icon(Icons.error_outline_outlined),
                                  imageUrl: journal.jImageUrl!,
                                  cacheKey: journal.jImageKey,
                                  width: double.maxFinite,
                                  height: 500,
                                  alignment: Alignment.topCenter,
                                  fit: BoxFit.fill,
                                ),
                              ])
                            : Image.asset(
                                'assets/images/amplify.png',
                                fit: BoxFit.contain,
                              ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 16,
                        right: 16,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            journal.foodName,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 8, 8, 4),
                child: DefaultTextStyle(
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle1!,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          journal.typeOfFood,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(color: Colors.black54),
                        ),
                      ),
                      Text(
                        DateFormat('yyyy-MM-dd HH:mm:ss')
                            .format(journal.dateOfEntry.getDateTimeInUtc()),
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      );
  }
}
