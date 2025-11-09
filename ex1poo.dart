class Employe {
  String nom;
  double salaire;

  Employe(this.nom, this.salaire);

  void afficherInfos() {
    print('Nom : $nom');
    print('Salaire : $salaire');
  }
}

class Manager extends Employe {
  double prime;

  Manager(String nom, double salaire, this.prime) : super(nom, salaire);

  @override
  void afficherInfos() {
    double salaireTotal = salaire + prime;
    print('Nom : $nom');
    print('Salaire de base : $salaire');
    print('Prime : $prime');
    print('Salaire total : $salaireTotal');
  }
}

void main() {
  Employe e1 = Employe('abdellatif', 1000);
  Manager m1 = Manager('hamza', 2000, 9000);

  print('Employe');
  e1.afficherInfos();

  print('\nManager');
  m1.afficherInfos();
}
