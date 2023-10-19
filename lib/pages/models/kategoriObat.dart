class CategoryObat {
  final String name;
  final String image;

  CategoryObat(this.name, this.image);

  static List<CategoryObat> all() {
    return [
      CategoryObat("Batuk", "assets/image/batuk.jpg"),
      CategoryObat("Sakit Kepala", "assets/image/pusing.jpg"),
      CategoryObat("Demam", "assets/image/demam.jpg"),
      CategoryObat("Sakit Perut", "assets/image/Sperut.jpg"),
      CategoryObat("Pilek", "assets/image/pilek.jpg"),
      CategoryObat("Penyakit Kulit", "assets/image/Skulit.jpg"),
    ];
  }
}

// "Batuk == 0 
// "Sakit Kepala", == 1 
// "Demam == 2
// "Sakit Perut == 3
// Pilek == 4
// Penyakit Kulit == 5
