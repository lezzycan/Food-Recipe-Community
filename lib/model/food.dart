
class Food {
  Food({
    this.foodRating = '',
    this.foodDuration = '',
    this.foodBackground = "",
    this.foodTitle = "",
  });

  String foodRating;
  String foodDuration;
  String foodBackground;
  String foodTitle;

 
}
 List<String> foodHeading = [
    'Trending now 🔥'
        'Popular Category'
        'Recent recipe'
  ];

  var trendingNow = [
    Food(
      foodRating: '✩ 4.5',
      foodDuration: '0.15',
      foodBackground: 'assets/images/trending1.png',
      foodTitle: 'How to make a sushi at home',
    ),
    Food(
      foodRating: '✩ 4.7',
      foodDuration: '0.15',
      foodBackground: 'assets/images/trending2.png',
      foodTitle: 'How to make a salad',
    )
  ];