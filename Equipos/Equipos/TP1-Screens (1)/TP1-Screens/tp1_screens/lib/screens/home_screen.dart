// ignore_for_file: unused_import, unused_element
//
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp1_screens/core/Route/go_router.dart';
import 'package:tp1_screens/core/data.dart';
import 'package:tp1_screens/entities/songs.dart';
import 'package:tp1_screens/screens/details.dart';
import 'package:tp1_screens/screens/widget.dart';


// ignore: must_be_immutable
class Teamsscreen extends StatelessWidget {
  static const String name = 'songs_screen';
  final List<Epic> teams = songsList;

  Teamsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EPIC songs'),
      ),
      body: const _Teamsview(),
    );
  }
}

class _Teamsview extends StatelessWidget {
  const _Teamsview ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: teamsList.length,
      itemBuilder: (context, index) {
        final team = teamsList[index];
        return MovieItem(
          teams: team,
          onTap: () => _goToteamsDetails(context, team),
        );
      },
    );
  }

  void _goToteamsDetails(BuildContext context, Teams teams) {
    context.pushNamed(
      TeamsDetailScreen.name,
      pathParameters: {
        'teamsId': teams.numero,
      },
    );
  }

}