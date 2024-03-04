import 'package:rakan_aneuk/classification/calculate/standard_BB_PB_024.dart';

enum Gender {
  male,
  female,
}

extension GenderExt on Gender {
  String get name {
    switch (this) {
      case Gender.male:
        return 'Laki-laki';
      case Gender.female:
        return 'Perempuan';
      default:
        return '';
    }
  }
}

class CalculateZScoring {
  final int age;
  final double weight;
  final double height;
  final Gender gender;

  const CalculateZScoring({
    required this.age,
    required this.weight,
    required this.height,
    required this.gender,
  });

  String statusBBPB() {
    final zScoreBBPB = _calculateZScoreBBPB();
    if (zScoreBBPB < -3) {
      return 'Sangat Kurus';
    } else if (zScoreBBPB < -2) {
      return 'Kurus';
    } else if (zScoreBBPB < 2) {
      return 'Normal';
    } else if (zScoreBBPB < 3) {
      return 'Gemuk';
    } else {
      return 'Sangat Gemuk';
    }
  }

  double _calculateZScoreBBPB() {
    final standardBBPB024 = () {
      if (gender == Gender.male) {
        return StandardBBPB024.calculateBoy(height);
      } else {
        return StandardBBPB024.calculateGirl(height);
      }
    }();
    if (standardBBPB024 == null) {
      return 0;
    }
    final numerator = weight - standardBBPB024.median;
    final standardDeviation = () {
      if (numerator.isNegative) {
        return standardBBPB024.median - standardBBPB024.min1SD;
      } else {
        return standardBBPB024.plus1SD - standardBBPB024.median;
      }
    }();
    return numerator / standardDeviation;
  }


}
