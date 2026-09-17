import 'package:flutter/material.dart';

import 'data/datasource.dart';
import 'model/affirmation.dart';

void main() {
  runApp(const AffirmationsApp());
}

class AffirmationsApp extends StatelessWidget {
  const AffirmationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Affirmations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const AffirmationsList(),
    );
  }
}

class AffirmationsList extends StatelessWidget {
  const AffirmationsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Affirmation> affirmations = Datasource().loadAffirmations();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Affirmations'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: affirmations.length,
        itemBuilder: (context, index) {
          return AffirmationCard(affirmation: affirmations[index]);
        },
      ),
    );
  }
}

class AffirmationCard extends StatelessWidget {
  const AffirmationCard({super.key, required this.affirmation});

  final Affirmation affirmation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Image.asset(
            affirmation.imageAssetPath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              affirmation.text,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
