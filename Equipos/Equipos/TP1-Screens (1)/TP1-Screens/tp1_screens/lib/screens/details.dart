// ignore_for_file: unused_import
//
import 'package:flutter/material.dart';
import 'package:tp1_screens/core/data.dart';
import 'package:tp1_screens/entities/songs.dart';

class SongDetailScreen extends StatelessWidget {
  const SongDetailScreen({
    super.key,
    required this.songId,
  });

  static const String name = 'Song_details_screen';
  final String songId;

  @override
  Widget build(BuildContext context) {
    final songs = songsList.firstWhere((songs) => songs.numero == songId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Epic Songs'),
      ),
      body: SongsDetailView(teams: teams),
    );
  }
}

class SongsDetailView extends StatelessWidget {
  const SongsDetailView({
    super.key,
    required this.teams,
  });

  final Teams teams;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (teams.escudo != null) Image.network(teams.escudo!, height: 400),
          const SizedBox(height: 16),
          Text(
            teams.nombre,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'DT: ${teams.dt}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Fecha de creacion: ${teams.year}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
