class Tips {
  final int id;
  final String photo;
  final String tips;

  Tips({
    this.id,
    this.photo,
    this.tips,
  });
}

List<Tips> mockTips = [
  Tips(
    id: 1,
    photo: "assets/image1.png",
    tips: "How to speak fluently with strangers",
  ),
  Tips(
    id: 2,
    photo: "assets/image2.png",
    tips: "How to do the right presentation activity",
  ),
];
