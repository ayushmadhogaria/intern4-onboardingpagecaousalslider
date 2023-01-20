class SliderItem {
  final String title;
  final String description;
  final String SliderImagePath;

  SliderItem({
    required this.title,
    required this.description,
    required this.SliderImagePath,
  });
}

List<SliderItem> sliderItems = [
  SliderItem(
      title: 'Get Food Faster',
      description: 'Browse upto 20,000+ food \n locations close to you',
      SliderImagePath: 'lib/assets/mobile.png'),
  SliderItem(
      title: 'Super speed delivery',
      description: 'Guarenteed under 30 minutes \n from our store to your home',
      SliderImagePath: 'lib/assets/mobile.png'),
  SliderItem(
      title: 'Variety options',
      description: 'Delicious food available\n select and get best food.',
      SliderImagePath: 'lib/assets/mobile.png'),
];
