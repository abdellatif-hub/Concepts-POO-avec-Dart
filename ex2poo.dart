class Livre {
  String titre;
  String auteur;
  int annee;

  Livre(this.titre, this.auteur, this.annee);

  void afficher() {
    print('Titre : $titre | Auteur : $auteur | Annee : $annee');
  }
}

void main() {
  List<Livre> bibliotheque = [
    Livre('Les Misérables', 'Victor Hugo', 1813),
    Livre('Le Petit Prince', 'Antoine de Saint-Exupéry', 1917),
    Livre('La Vérité sur l’affaire Harry Quebert', 'Joël Dicker', 2016),
    Livre('L’étranger', 'Albert Camus', 1942),
    Livre('Le Silence des Agneaux', 'Thomas Harris', 2019),
  ];

  print(' Livres publiés après 2015 :');
  for (var livre in bibliotheque) {
    if (livre.annee > 2015) {
      livre.afficher();
    }
  }

  String auteurRecherche = 'Victor Hugo';
  int compteur = bibliotheque
      .where((livre) => livre.auteur == auteurRecherche)
      .length;

  print('\nNombre de livres écrits par $auteurRecherche : $compteur');
}
