import 'package:rakan_aneuk/classification/calculate/standard_BB_PB_024.dart';

enum Gender {
  male,
  female,
}

enum ResultZScoringAge {
  badNutrition,
  lessNutrition,
  goodNutrition,
  moreNutrition,
  obesity,
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

extension ResultZScoringAgeExt on ResultZScoringAge {
  String get name {
    switch (this) {
      case ResultZScoringAge.badNutrition:
        return 'Buruk';
      case ResultZScoringAge.lessNutrition:
        return 'Kurang';
      case ResultZScoringAge.goodNutrition:
        return 'Baik';
      case ResultZScoringAge.moreNutrition:
        return 'Lebih';
      case ResultZScoringAge.obesity:
        return 'Obesitas';
      default:
        return '';
    }
  }

  String get description {
    switch (this) {
      case ResultZScoringAge.badNutrition:
        return 'Status gizi anak anda buruk, perlu diperhatikan dan memperbaiki gizi dengan makanan sehat dan bergizi serta ASI yang baik';
      case ResultZScoringAge.lessNutrition:
        return 'Status gizi anak anda Kurang, perlu perbaikan gizi dengan makanan sehat dan ASI yang baik';
      case ResultZScoringAge.goodNutrition:
        return 'Status gizi anak anda baik/normal';
      case ResultZScoringAge.moreNutrition:
        return 'Status gizi anak anda lebih, perlu perbaikan gizi dengan makanan sehat bergizi';
      case ResultZScoringAge.obesity:
        return 'Status gizi anak anda obesitas, perlunya perbaikan gizi makanan dan pola makan yang sehat';
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

  Future<ResultZScoringAge> statusBBPB() async {
    final zScoreBBPB = await _calculateZScoreBBPB();
    if (zScoreBBPB < -3) {
      return ResultZScoringAge.badNutrition;
    } else if (zScoreBBPB < -2) {
      return ResultZScoringAge.lessNutrition;
    } else if (zScoreBBPB < 2) {
      return ResultZScoringAge.goodNutrition;
    } else if (zScoreBBPB < 3) {
      return ResultZScoringAge.moreNutrition;
    } else {
      return ResultZScoringAge.obesity;
    }
  }

  Future<double> _calculateZScoreBBPB() async {
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
