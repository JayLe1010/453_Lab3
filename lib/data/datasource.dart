import '../model/affirmation.dart';

/// Provides the hardcoded list of affirmations shown in the app.
class Datasource {
  List<Affirmation> loadAffirmations() {
    return const [
      Affirmation(
        text: 'I am capable of achieving my goals.',
        imageAssetPath: 'assets/images/sunrise.png',
      ),
      Affirmation(
        text: 'I am calm, and I am at peace with myself.',
        imageAssetPath: 'assets/images/ocean.png',
      ),
      Affirmation(
        text: 'I am proud of how far I have come.',
        imageAssetPath: 'assets/images/forest.png',
      ),
      Affirmation(
        text: 'I trust myself to make the right decision.',
        imageAssetPath: 'assets/images/mountains.png',
      ),
      Affirmation(
        text: 'My possibilities are endless.',
        imageAssetPath: 'assets/images/stars.png',
      ),
      Affirmation(
        text: 'I am resilient, and I will grow through every challenge.',
        imageAssetPath: 'assets/images/desert.png',
      ),
      Affirmation(
        text: 'I choose to focus on what I can control.',
        imageAssetPath: 'assets/images/aurora.png',
      ),
      Affirmation(
        text: 'I am grateful for the small joys in every day.',
        imageAssetPath: 'assets/images/meadow.png',
      ),
      Affirmation(
        text: 'I give myself permission to rest and recharge.',
        imageAssetPath: 'assets/images/lake.png',
      ),
      Affirmation(
        text: 'I welcome new opportunities with an open mind.',
        imageAssetPath: 'assets/images/clouds.png',
      ),
    ];
  }
}
