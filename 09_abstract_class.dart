void main() {
  final windPlant = WindPlant(initialEnergy: 100);

  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print(windPlant);

  print('Wind : ${chargePhone(windPlant)}');
  print('Nuclear: ${chargeTv(nuclearPlant)}');
}

double chargePhone(energyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('no hay suficiente energia');
  }

  return plant.energyLeft - 10;
}

double chargeTv(energyPlant plant) {
  if (plant.energyLeft < 100) {
    throw Exception('Falta energia para el televisor');
  }
  return plant.energyLeft - 100;
}

enum PlantType { wind, water, nuclear }

abstract class energyPlant {
  double energyLeft;
  final PlantType type;

//estos son constructores
  energyPlant({required this.energyLeft, required this.type});
// fin del constructor

  void consumeEnergy(double amount);
}

//extends o implements
class WindPlant extends energyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements energyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
