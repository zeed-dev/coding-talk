class Mentor {
  final int id;
  final String name;
  final String job;
  final int reviews;
  final String photo;

  Mentor({
    this.id,
    this.name,
    this.job,
    this.reviews,
    this.photo,
  });
}

List<Mentor> mockMentor = [
  Mentor(
    id: 1,
    name: 'Braun Marz',
    reviews: 9,
    photo: "assets/PICT2.png",
    job: "UI/UX Designer, Google",
  ),
  Mentor(
    id: 2,
    name: 'Uden Yeager',
    reviews: 2,
    photo: "assets/PICT3.png",
    job: "UI Designer, Gojek",
  ),
  Mentor(
    id: 3,
    name: 'Mira Yokz',
    reviews: 96,
    photo: "assets/PICT4.png",
    job: "UI Designer, Facebook",
  ),
];
