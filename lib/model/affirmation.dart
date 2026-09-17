/// A single affirmation paired with an image asset that illustrates it.
class Affirmation {
  const Affirmation({
    required this.text,
    required this.imageAssetPath,
  });

  final String text;
  final String imageAssetPath;
}
