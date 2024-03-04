class StandardBBPB024 {
  final double min3SD;
  final double min2SD;
  final double min1SD;
  final double median;
  final double plus1SD;
  final double plus2SD;
  final double plus3SD;

  const StandardBBPB024(
    this.min3SD,
    this.min2SD,
    this.min1SD,
    this.median,
    this.plus1SD,
    this.plus2SD,
    this.plus3SD,
  );

  static StandardBBPB024? calculateBoy(double height) {
    switch (height) {
      case 45.0:
        return const StandardBBPB024(1.9, 2.0, 2.2, 2.4, 2.7, 3.0, 3.3);
      case 45.5:
        return const StandardBBPB024(1.9, 2.1, 2.3, 2.5, 2.8, 3.1, 3.4);
      case 46.0:
        return const StandardBBPB024(2.0, 2.2, 2.4, 2.6, 2.9, 3.1, 3.5);
      case 46.5:
        return const StandardBBPB024(2.1, 2.3, 2.5, 2.7, 3.0, 3.2, 3.6);
      case 47.0:
        return const StandardBBPB024(2.1, 2.3, 2.5, 2.8, 3.0, 3.3, 3.7);
      case 47.5:
        return const StandardBBPB024(2.2, 2.4, 2.6, 2.9, 3.1, 3.4, 3.8);
      case 48.0:
        return const StandardBBPB024(2.3, 2.5, 2.7, 2.9, 3.2, 3.6, 3.9);
      case 48.5:
        return const StandardBBPB024(2.3, 2.6, 2.8, 3.0, 3.3, 3.7, 4.0);
      case 49.0:
        return const StandardBBPB024(2.4, 2.6, 2.9, 3.1, 3.4, 3.8, 4.2);
      case 49.5:
        return const StandardBBPB024(2.5, 2.7, 3.0, 3.2, 3.5, 3.9, 4.3);
      case 50.0:
        return const StandardBBPB024(2.6, 2.8, 3.0, 3.3, 3.6, 4.0, 4.4);
      case 50.5:
        return const StandardBBPB024(2.7, 2.9, 3.1, 3.4, 3.8, 4.1, 4.5);
      case 51.0:
        return const StandardBBPB024(2.7, 3.0, 3.2, 3.5, 3.9, 4.2, 4.7);
      case 51.5:
        return const StandardBBPB024(2.8, 3.1, 3.3, 3.6, 4.0, 4.4, 4.8);
      case 52.0:
        return const StandardBBPB024(2.9, 3.2, 3.5, 3.8, 4.1, 4.5, 5.0);
      case 52.5:
        return const StandardBBPB024(3.0, 3.3, 3.6, 3.9, 4.2, 4.6, 5.1);
      case 53.0:
        return const StandardBBPB024(3.1, 3.4, 3.7, 4.0, 4.4, 4.8, 5.3);
      case 53.5:
        return const StandardBBPB024(3.2, 3.5, 3.8, 4.1, 4.5, 4.9, 5.4);
      case 54.0:
        return const StandardBBPB024(3.3, 3.6, 3.9, 4.3, 4.7, 5.1, 5.6);
      case 54.5:
        return const StandardBBPB024(3.4, 3.7, 4.0, 4.4, 4.8, 5.3, 5.8);
      case 55.0:
        return const StandardBBPB024(3.6, 3.8, 4.2, 4.5, 5.0, 5.4, 6.0);
      case 55.5:
        return const StandardBBPB024(3.7, 4.0, 4.3, 4.7, 5.1, 5.6, 6.1);
      case 56.0:
        return const StandardBBPB024(3.8, 4.1, 4.4, 4.8, 5.3, 5.8, 6.3);
      case 56.5:
        return const StandardBBPB024(3.9, 4.2, 4.6, 5.0, 5.4, 5.9, 6.5);
      case 57.0:
        return const StandardBBPB024(4.0, 4.3, 4.7, 5.1, 5.6, 6.1, 6.7);
      case 57.5:
        return const StandardBBPB024(4.1, 4.5, 4.9, 5.3, 5.7, 6.3, 6.9);
      case 58.0:
        return const StandardBBPB024(4.3, 4.6, 5.0, 5.4, 5.9, 6.4, 7.1);
      case 58.5:
        return const StandardBBPB024(4.4, 4.7, 5.1, 5.6, 6.1, 6.6, 7.2);
      case 59.0:
        return const StandardBBPB024(4.5, 4.8, 5.3, 5.7, 6.2, 6.8, 7.4);
      case 59.5:
        return const StandardBBPB024(4.6, 5.0, 5.4, 5.9, 6.4, 7.0, 7.6);
      case 60.0:
        return const StandardBBPB024(4.7, 5.1, 5.5, 6.0, 6.5, 7.1, 7.8);
      case 60.5:
        return const StandardBBPB024(4.8, 5.2, 5.6, 6.1, 6.7, 7.3, 8.0);
      case 61.0:
        return const StandardBBPB024(4.9, 5.3, 5.8, 6.3, 6.8, 7.4, 8.1);
      case 61.5:
        return const StandardBBPB024(5.0, 5.4, 5.9, 6.4, 7.0, 7.6, 8.3);
      case 62.0:
        return const StandardBBPB024(5.1, 5.6, 6.0, 6.5, 7.1, 7.7, 8.5);
      case 62.5:
        return const StandardBBPB024(5.2, 5.7, 6.1, 6.7, 7.2, 7.9, 8.6);
      case 63.0:
        return const StandardBBPB024(5.3, 5.8, 6.2, 6.8, 7.4, 8.0, 8.8);
      case 63.5:
        return const StandardBBPB024(5.4, 5.9, 6.4, 6.9, 7.5, 8.2, 8.9);
      case 64.0:
        return const StandardBBPB024(5.5, 6.0, 6.5, 7.0, 7.6, 8.3, 9.1);
      case 64.5:
        return const StandardBBPB024(5.6, 6.1, 6.6, 7.1, 7.8, 8.5, 9.3);
      case 65.0:
        return const StandardBBPB024(5.7, 6.2, 6.7, 7.3, 7.9, 8.6, 9.4);
      case 65.5:
        return const StandardBBPB024(5.8, 6.3, 6.8, 7.4, 8.0, 8.7, 9.6);
      case 66.0:
        return const StandardBBPB024(5.9, 6.4, 6.9, 7.5, 8.2, 8.9, 9.7);
      case 66.5:
        return const StandardBBPB024(6.0, 6.5, 7.0, 7.6, 8.3, 9.0, 9.9);
      case 67.0:
        return const StandardBBPB024(6.1, 6.6, 7.1, 7.7, 8.4, 9.2, 10.0);
      case 67.5:
        return const StandardBBPB024(6.2, 6.7, 7.2, 7.9, 8.5, 9.3, 10.2);
      case 68.0:
        return const StandardBBPB024(6.3, 6.8, 7.3, 8.0, 8.7, 9.4, 10.3);
      case 68.5:
        return const StandardBBPB024(6.4, 6.9, 7.5, 8.1, 8.8, 9.6, 10.5);
      case 69.0:
        return const StandardBBPB024(6.5, 7.0, 7.6, 8.2, 8.9, 9.7, 10.6);
      case 69.5:
        return const StandardBBPB024(6.6, 7.1, 7.7, 8.3, 9.0, 9.8, 10.8);
      case 70.0:
        return const StandardBBPB024(6.6, 7.2, 7.8, 8.4, 9.2, 10.0, 10.9);
      case 70.5:
        return const StandardBBPB024(6.7, 7.3, 7.9, 8.5, 9.3, 10.1, 11.1);
      case 71.0:
        return const StandardBBPB024(6.8, 7.4, 8.0, 8.6, 9.4, 10.2, 11.2);
      case 71.5:
        return const StandardBBPB024(6.9, 7.5, 8.1, 8.8, 9.5, 10.4, 11.3);
      case 72.0:
        return const StandardBBPB024(7.0, 7.6, 8.2, 8.9, 9.6, 10.5, 11.5);
      case 72.5:
        return const StandardBBPB024(7.1, 7.6, 8.3, 9.0, 9.8, 10.6, 11.6);
      case 73.0:
        return const StandardBBPB024(7.2, 7.7, 8.4, 9.1, 9.9, 10.8, 11.8);
      case 73.5:
        return const StandardBBPB024(7.2, 7.8, 8.5, 9.2, 10.0, 10.9, 11.9);
      case 74.0:
        return const StandardBBPB024(7.3, 7.9, 8.6, 9.3, 10.1, 11.0, 12.1);
      case 74.5:
        return const StandardBBPB024(7.4, 8.0, 8.7, 9.4, 10.2, 11.2, 12.2);
      case 75.0:
        return const StandardBBPB024(7.5, 8.1, 8.8, 9.5, 10.3, 11.3, 12.3);
      case 75.5:
        return const StandardBBPB024(7.6, 8.2, 8.8, 9.6, 10.4, 11.4, 12.5);
      case 76.0:
        return const StandardBBPB024(7.6, 8.3, 8.9, 9.7, 10.6, 11.5, 12.6);
      case 76.5:
        return const StandardBBPB024(7.7, 8.3, 9.0, 9.8, 10.7, 11.6, 12.7);
      case 77.0:
        return const StandardBBPB024(7.8, 8.4, 9.1, 9.9, 10.8, 11.7, 12.8);
      case 77.5:
        return const StandardBBPB024(7.9, 8.5, 9.2, 10.0, 10.9, 11.9, 13.0);
      case 78.0:
        return const StandardBBPB024(7.9, 8.6, 9.3, 10.1, 11.0, 12.0, 13.1);
      case 78.5:
        return const StandardBBPB024(8.0, 8.7, 9.4, 10.2, 11.1, 12.1, 13.2);
      case 79.0:
        return const StandardBBPB024(8.1, 8.7, 9.5, 10.3, 11.2, 12.2, 13.3);
      case 79.5:
        return const StandardBBPB024(8.2, 8.8, 9.5, 10.4, 11.3, 12.3, 13.4);
      case 80.0:
        return const StandardBBPB024(8.2, 8.9, 9.6, 10.4, 11.4, 12.4, 13.6);
      case 80.5:
        return const StandardBBPB024(8.3, 9.0, 9.7, 10.5, 11.5, 12.5, 13.7);
      case 81.0:
        return const StandardBBPB024(8.4, 9.1, 9.8, 10.6, 11.6, 12.6, 13.8);
      case 81.5:
        return const StandardBBPB024(8.5, 9.1, 9.9, 10.7, 11.7, 12.7, 13.9);
      case 82.0:
        return const StandardBBPB024(8.5, 9.2, 10.0, 10.8, 11.8, 12.8, 14.0);
      case 82.5:
        return const StandardBBPB024(8.6, 9.3, 10.1, 10.9, 11.9, 13.0, 14.2);
      case 83.0:
        return const StandardBBPB024(8.7, 9.4, 10.2, 11.0, 12.0, 13.1, 14.3);
      case 83.5:
        return const StandardBBPB024(8.8, 9.5, 10.3, 11.2, 12.1, 13.2, 14.4);
      case 84.0:
        return const StandardBBPB024(8.9, 9.6, 10.4, 11.3, 12.2, 13.3, 14.6);
      case 84.5:
        return const StandardBBPB024(9.0, 9.7, 10.5, 11.4, 12.4, 13.5, 14.7);
      case 85.0:
        return const StandardBBPB024(9.1, 9.8, 10.6, 11.5, 12.5, 13.6, 14.9);
      case 85.5:
        return const StandardBBPB024(9.2, 9.9, 10.7, 11.6, 12.6, 13.7, 15.0);
      case 86.0:
        return const StandardBBPB024(9.3, 10.0, 10.8, 11.7, 12.8, 13.9, 15.2);
      case 86.5:
        return const StandardBBPB024(9.4, 10.1, 11.0, 11.9, 12.9, 14.0, 15.3);
      case 87.0:
        return const StandardBBPB024(9.5, 10.2, 11.1, 12.0, 13.0, 14.2, 15.5);
      case 87.5:
        return const StandardBBPB024(9.6, 10.4, 11.2, 12.1, 13.2, 14.3, 15.6);
      case 88.0:
        return const StandardBBPB024(9.7, 10.5, 11.3, 12.2, 13.3, 14.5, 15.8);
      case 88.5:
        return const StandardBBPB024(9.8, 10.6, 11.4, 12.4, 13.4, 14.6, 15.9);
      case 89.0:
        return const StandardBBPB024(9.9, 10.7, 11.5, 12.5, 13.5, 14.7, 16.1);
      case 89.5:
        return const StandardBBPB024(10.0, 10.8, 11.6, 12.6, 13.7, 14.9, 16.2);
      case 90.0:
        return const StandardBBPB024(10.1, 10.9, 11.8, 12.7, 13.8, 15.0, 16.4);
      case 90.5:
        return const StandardBBPB024(10.2, 11.0, 11.9, 12.8, 13.9, 15.1, 16.5);
      case 91.0:
        return const StandardBBPB024(10.3, 11.1, 12.0, 13.0, 14.1, 15.3, 16.7);
      case 91.5:
        return const StandardBBPB024(10.4, 11.2, 12.1, 13.1, 14.2, 15.4, 16.8);
      case 92.0:
        return const StandardBBPB024(10.5, 11.3, 12.2, 13.2, 14.3, 15.6, 17.0);
      case 92.5:
        return const StandardBBPB024(10.6, 11.4, 12.3, 13.3, 14.4, 15.7, 17.1);
      case 93.0:
        return const StandardBBPB024(10.7, 11.5, 12.4, 13.4, 14.6, 15.8, 17.3);
      case 93.5:
        return const StandardBBPB024(10.7, 11.6, 12.5, 13.5, 14.7, 16.0, 17.4);
      case 94.0:
        return const StandardBBPB024(10.8, 11.7, 12.6, 13.7, 14.8, 16.1, 17.6);
      case 94.5:
        return const StandardBBPB024(10.9, 11.8, 12.7, 13.8, 14.9, 16.3, 17.7);
      case 95.0:
        return const StandardBBPB024(11.0, 11.9, 12.8, 13.9, 15.1, 16.4, 17.9);
      case 95.5:
        return const StandardBBPB024(11.1, 12.0, 12.9, 14.0, 15.2, 16.5, 18.0);
      case 96.0:
        return const StandardBBPB024(11.2, 12.1, 13.1, 14.1, 15.3, 16.7, 18.2);
      case 96.5:
        return const StandardBBPB024(11.3, 12.2, 13.2, 14.3, 15.5, 16.8, 18.4);
      case 97.0:
        return const StandardBBPB024(11.4, 12.3, 13.3, 14.4, 15.6, 17.0, 18.5);
      case 97.5:
        return const StandardBBPB024(11.5, 12.4, 13.4, 14.5, 15.7, 17.1, 18.7);
      case 98.0:
        return const StandardBBPB024(11.6, 12.5, 13.5, 14.6, 15.9, 17.3, 18.9);
      case 98.5:
        return const StandardBBPB024(11.7, 12.6, 13.6, 14.8, 16.0, 17.5, 19.1);
      case 99.0:
        return const StandardBBPB024(11.8, 12.7, 13.7, 14.9, 16.2, 17.6, 19.2);
      case 99.5:
        return const StandardBBPB024(11.9, 12.8, 13.9, 15.0, 16.3, 17.8, 19.4);
      case 100.0:
        return const StandardBBPB024(12.0, 12.9, 14.0, 15.2, 16.5, 18.0, 19.6);
      case 100.5:
        return const StandardBBPB024(12.1, 13.0, 14.1, 15.3, 16.6, 18.1, 19.8);
      case 101.0:
        return const StandardBBPB024(12.2, 13.2, 14.2, 15.4, 16.8, 18.3, 20.0);
      case 101.5:
        return const StandardBBPB024(12.3, 13.3, 14.4, 15.6, 16.9, 18.5, 20.2);
      case 102.0:
        return const StandardBBPB024(12.4, 13.4, 14.5, 15.7, 17.1, 18.7, 20.4);
      case 102.5:
        return const StandardBBPB024(12.5, 13.5, 14.6, 15.9, 17.3, 18.8, 20.6);
      case 103.0:
        return const StandardBBPB024(12.6, 13.6, 14.8, 16.0, 17.4, 19.0, 20.8);
      case 103.5:
        return const StandardBBPB024(12.7, 13.7, 14.9, 16.2, 17.6, 19.2, 21.0);
      case 104.0:
        return const StandardBBPB024(12.8, 13.9, 15.0, 16.3, 17.8, 19.4, 21.2);
      case 104.5:
        return const StandardBBPB024(12.9, 14.0, 15.2, 16.5, 17.9, 19.6, 21.5);
      case 105.0:
        return const StandardBBPB024(13.0, 14.1, 15.3, 16.6, 18.1, 19.8, 21.7);
      case 105.5:
        return const StandardBBPB024(13.2, 14.2, 15.4, 16.8, 18.3, 20.0, 21.9);
      case 106.0:
        return const StandardBBPB024(13.3, 14.4, 15.6, 16.9, 18.5, 20.2, 22.1);
      case 106.5:
        return const StandardBBPB024(13.4, 14.5, 15.7, 17.1, 18.6, 20.4, 22.4);
      case 107.0:
        return const StandardBBPB024(13.5, 14.6, 15.9, 17.3, 18.8, 20.6, 22.6);

      case 107.5:
        return const StandardBBPB024(13.6, 14.7, 16.0, 17.4, 19.0, 20.8, 22.8);
      case 108.0:
        return const StandardBBPB024(13.7, 14.9, 16.2, 17.6, 19.2, 21.0, 23.1);
      case 108.5:
        return const StandardBBPB024(13.8, 15.0, 16.3, 17.8, 19.4, 21.2, 23.3);
      case 109.0:
        return const StandardBBPB024(14.0, 15.1, 16.5, 17.9, 19.6, 21.4, 23.6);
      case 109.5:
        return const StandardBBPB024(14.1, 15.3, 16.6, 18.1, 19.8, 21.7, 23.8);
      case 110.0:
        return const StandardBBPB024(14.2, 15.4, 16.8, 18.3, 20.0, 21.9, 24.1);
      default:
        return null;
    }
  }

  static StandardBBPB024? calculateGirl(double height) {
    switch (height) {
      case 45.0:
        return const StandardBBPB024(1.9, 2.1, 2.3, 2.5, 2.7, 3.0, 3.3);
      case 45.5:
        return const StandardBBPB024(2.0, 2.1, 2.3, 2.5, 2.8, 3.1, 3.4);
      case 46.0:
        return const StandardBBPB024(2.0, 2.2, 2.4, 2.6, 2.9, 3.2, 3.5);
      case 46.5:
        return const StandardBBPB024(2.1, 2.3, 2.5, 2.7, 3.0, 3.3, 3.6);
      case 47.0:
        return const StandardBBPB024(2.2, 2.4, 2.6, 2.8, 3.1, 3.4, 3.7);
      case 47.5:
        return const StandardBBPB024(2.2, 2.4, 2.6, 2.9, 3.2, 3.5, 3.8);
      case 48.0:
        return const StandardBBPB024(2.3, 2.5, 2.7, 3.0, 3.3, 3.6, 4.0);
      case 48.5:
        return const StandardBBPB024(2.4, 2.6, 2.8, 3.1, 3.4, 3.7, 4.1);
      case 49.0:
        return const StandardBBPB024(2.4, 2.6, 2.9, 3.2, 3.5, 3.8, 4.2);
      case 49.5:
        return const StandardBBPB024(2.5, 2.7, 3.0, 3.3, 3.6, 3.9, 4.3);
      case 50.0:
        return const StandardBBPB024(2.6, 2.8, 3.1, 3.4, 3.7, 4.0, 4.5);
      case 50.5:
        return const StandardBBPB024(2.7, 2.9, 3.2, 3.5, 3.8, 4.2, 4.6);
      case 51.0:
        return const StandardBBPB024(2.8, 3.0, 3.3, 3.6, 3.9, 4.3, 4.8);
      case 51.5:
        return const StandardBBPB024(2.8, 3.1, 3.4, 3.7, 4.0, 4.4, 4.9);
      case 52.0:
        return const StandardBBPB024(2.9, 3.2, 3.5, 3.8, 4.2, 4.6, 5.1);
      case 52.5:
        return const StandardBBPB024(3.0, 3.3, 3.6, 3.9, 4.3, 4.7, 5.2);
      case 53.0:
        return const StandardBBPB024(3.1, 3.4, 3.7, 4.0, 4.4, 4.9, 5.4);
      case 53.5:
        return const StandardBBPB024(3.2, 3.5, 3.8, 4.2, 4.6, 5.0, 5.5);
      case 54.0:
        return const StandardBBPB024(3.3, 3.6, 3.9, 4.3, 4.7, 5.2, 5.7);
      case 54.5:
        return const StandardBBPB024(3.4, 3.7, 4.0, 4.4, 4.8, 5.3, 5.9);
      case 55.0:
        return const StandardBBPB024(3.5, 3.8, 4.2, 4.5, 5.0, 5.5, 6.1);
      case 55.5:
        return const StandardBBPB024(3.6, 3.9, 4.3, 4.7, 5.1, 5.7, 6.3);
      case 56.0:
        return const StandardBBPB024(3.7, 4.0, 4.4, 4.8, 5.3, 5.8, 6.4);
      case 56.5:
        return const StandardBBPB024(3.8, 4.1, 4.5, 5.0, 5.4, 6.0, 6.6);
      case 57.0:
        return const StandardBBPB024(3.9, 4.3, 4.6, 5.1, 5.6, 6.1, 6.8);
      case 57.5:
        return const StandardBBPB024(4.0, 4.4, 4.8, 5.2, 5.7, 6.3, 7.0);
      case 58.0:
        return const StandardBBPB024(4.1, 4.5, 4.9, 5.4, 5.9, 6.5, 7.1);
      case 58.5:
        return const StandardBBPB024(4.2, 4.6, 5.0, 5.5, 6.0, 6.6, 7.3);
      case 59.0:
        return const StandardBBPB024(4.3, 4.7, 5.1, 5.6, 6.2, 6.8, 7.5);
      case 59.5:
        return const StandardBBPB024(4.4, 4.8, 5.3, 5.7, 6.3, 6.9, 7.7);
      case 60.0:
        return const StandardBBPB024(4.5, 4.9, 5.4, 5.9, 6.4, 7.1, 7.8);
      case 60.5:
        return const StandardBBPB024(4.6, 5.0, 5.5, 6.0, 6.6, 7.3, 8.0);
      case 61.0:
        return const StandardBBPB024(4.7, 5.1, 5.6, 6.1, 6.7, 7.4, 8.2);
      case 61.5:
        return const StandardBBPB024(4.8, 5.2, 5.7, 6.3, 6.9, 7.6, 8.4);
      case 62.0:
        return const StandardBBPB024(4.9, 5.3, 5.8, 6.4, 7.0, 7.7, 8.5);
      case 62.5:
        return const StandardBBPB024(5.0, 5.4, 5.9, 6.5, 7.1, 7.8, 8.7);
      case 63.0:
        return const StandardBBPB024(5.1, 5.5, 6.0, 6.6, 7.3, 8.0, 8.8);
      case 63.5:
        return const StandardBBPB024(5.2, 5.6, 6.2, 6.7, 7.4, 8.1, 9.0);
      case 64.0:
        return const StandardBBPB024(5.3, 5.7, 6.3, 6.9, 7.5, 8.3, 9.1);
      case 64.5:
        return const StandardBBPB024(5.4, 5.8, 6.4, 7.0, 7.6, 8.4, 9.3);
      case 65.0:
        return const StandardBBPB024(5.5, 5.9, 6.5, 7.1, 7.8, 8.6, 9.5);
      case 65.5:
        return const StandardBBPB024(5.5, 6.0, 6.6, 7.2, 7.9, 8.7, 9.6);
      case 66.0:
        return const StandardBBPB024(5.6, 6.1, 6.7, 7.3, 8.0, 8.8, 9.8);
      case 66.5:
        return const StandardBBPB024(5.7, 6.2, 6.8, 7.4, 8.1, 9.0, 9.9);
      case 67.0:
        return const StandardBBPB024(5.8, 6.3, 6.9, 7.5, 8.3, 9.1, 10.0);
      case 67.5:
        return const StandardBBPB024(5.9, 6.4, 7.0, 7.6, 8.4, 9.2, 10.2);
      case 68.0:
        return const StandardBBPB024(6.0, 6.5, 7.1, 7.7, 8.5, 9.4, 10.3);
      case 68.5:
        return const StandardBBPB024(6.1, 6.6, 7.2, 7.9, 8.6, 9.5, 10.5);
      case 69.0:
        return const StandardBBPB024(6.1, 6.7, 7.3, 8.0, 8.7, 9.6, 10.6);
      case 69.5:
        return const StandardBBPB024(6.2, 6.8, 7.4, 8.1, 8.8, 9.7, 10.7);
      case 70.0:
        return const StandardBBPB024(6.3, 6.9, 7.5, 8.2, 9.0, 9.9, 10.9);
      case 70.5:
        return const StandardBBPB024(6.4, 6.9, 7.6, 8.3, 9.1, 10.0, 11.0);
      case 71.0:
        return const StandardBBPB024(6.5, 7.0, 7.7, 8.4, 9.2, 10.1, 11.1);
      case 71.5:
        return const StandardBBPB024(6.5, 7.1, 7.7, 8.5, 9.3, 10.2, 11.3);
      case 72.0:
        return const StandardBBPB024(6.6, 7.2, 7.8, 8.6, 9.4, 10.3, 11.4);
      case 72.5:
        return const StandardBBPB024(6.7, 7.3, 7.9, 8.7, 9.5, 10.5, 11.5);
      case 73.0:
        return const StandardBBPB024(6.8, 7.4, 8.0, 8.8, 9.6, 10.6, 11.7);
      case 73.5:
        return const StandardBBPB024(6.9, 7.4, 8.1, 8.9, 9.7, 10.7, 11.8);
      case 74.0:
        return const StandardBBPB024(6.9, 7.5, 8.2, 9.0, 9.8, 10.8, 11.9);
      case 74.5:
        return const StandardBBPB024(7.0, 7.6, 8.3, 9.1, 9.9, 10.9, 12.0);
      case 75.0:
        return const StandardBBPB024(7.1, 7.7, 8.4, 9.1, 10.0, 11.0, 12.2);
      case 75.5:
        return const StandardBBPB024(7.1, 7.8, 8.5, 9.2, 10.1, 11.1, 12.3);
      case 76.0:
        return const StandardBBPB024(7.2, 7.8, 8.5, 9.3, 10.2, 11.2, 12.4);
      case 76.5:
        return const StandardBBPB024(7.3, 7.9, 8.6, 9.4, 10.3, 11.4, 12.5);
      case 77.0:
        return const StandardBBPB024(7.4, 8.0, 8.7, 9.5, 10.4, 11.5, 12.6);
      case 77.5:
        return const StandardBBPB024(7.4, 8.1, 8.8, 9.6, 10.5, 11.6, 12.8);
      case 78.0:
        return const StandardBBPB024(7.5, 8.2, 8.9, 9.7, 10.6, 11.7, 12.9);
      case 78.5:
        return const StandardBBPB024(7.6, 8.2, 9.0, 9.8, 10.7, 11.8, 13.0);
      case 79.0:
        return const StandardBBPB024(7.7, 8.3, 9.1, 9.9, 10.8, 11.9, 13.1);
      case 79.5:
        return const StandardBBPB024(7.7, 8.4, 9.1, 10.0, 10.9, 12.0, 13.3);
      case 80.0:
        return const StandardBBPB024(7.8, 8.5, 9.2, 10.1, 11.0, 12.1, 13.4);
      case 80.5:
        return const StandardBBPB024(7.9, 8.6, 9.3, 10.2, 11.2, 12.3, 13.5);
      case 81.0:
        return const StandardBBPB024(8.0, 8.7, 9.4, 10.3, 11.3, 12.4, 13.7);
      case 81.5:
        return const StandardBBPB024(8.1, 8.8, 9.5, 10.4, 11.4, 12.5, 13.8);
      case 82.0:
        return const StandardBBPB024(8.1, 8.8, 9.6, 10.5, 11.5, 12.6, 13.9);
      case 82.5:
        return const StandardBBPB024(8.2, 8.9, 9.7, 10.6, 11.6, 12.8, 14.1);
      case 83.0:
        return const StandardBBPB024(8.3, 9.0, 9.8, 10.7, 11.8, 12.9, 14.2);
      case 83.5:
        return const StandardBBPB024(8.4, 9.1, 9.9, 10.9, 11.9, 13.1, 14.4);
      case 84.0:
        return const StandardBBPB024(8.5, 9.2, 10.1, 11.0, 12.0, 13.2, 14.5);
      case 84.5:
        return const StandardBBPB024(8.6, 9.3, 10.2, 11.1, 12.1, 13.3, 14.7);
      case 85.0:
        return const StandardBBPB024(8.7, 9.4, 10.3, 11.2, 12.3, 13.5, 14.9);
      case 85.5:
        return const StandardBBPB024(8.8, 9.5, 10.4, 11.3, 12.4, 13.6, 15.0);
      case 86.0:
        return const StandardBBPB024(8.9, 9.7, 10.5, 11.5, 12.6, 13.8, 15.2);
      case 86.5:
        return const StandardBBPB024(9.0, 9.8, 10.6, 11.6, 12.7, 13.9, 15.4);
      case 87.0:
        return const StandardBBPB024(9.1, 9.9, 10.7, 11.7, 12.8, 14.1, 15.5);
      case 87.5:
        return const StandardBBPB024(9.2, 10.0, 10.9, 11.8, 13.0, 14.2, 15.7);
      case 88.0:
        return const StandardBBPB024(9.3, 10.1, 11.0, 12.0, 13.1, 14.4, 15.9);
      case 88.5:
        return const StandardBBPB024(9.4, 10.2, 11.1, 12.1, 13.2, 14.5, 16.0);
      case 89.0:
        return const StandardBBPB024(9.5, 10.3, 11.2, 12.2, 13.4, 14.7, 16.2);
      case 89.5:
        return const StandardBBPB024(9.6, 10.4, 11.3, 12.3, 13.5, 14.8, 16.4);
      case 90.0:
        return const StandardBBPB024(9.7, 10.5, 11.4, 12.5, 13.7, 15.0, 16.5);
      case 90.5:
        return const StandardBBPB024(9.8, 10.6, 11.5, 12.6, 13.8, 15.1, 16.7);
      case 91.0:
        return const StandardBBPB024(9.9, 10.7, 11.7, 12.7, 13.9, 15.3, 16.9);
      case 91.5:
        return const StandardBBPB024(10.0, 10.8, 11.8, 12.8, 14.1, 15.5, 17.0);
      case 92.0:
        return const StandardBBPB024(10.1, 10.9, 11.9, 13.0, 14.2, 15.6, 17.2);
      case 92.5:
        return const StandardBBPB024(10.1, 11.0, 12.0, 13.1, 14.3, 15.8, 17.4);
      case 93.0:
        return const StandardBBPB024(10.2, 11.1, 12.1, 13.2, 14.5, 15.9, 17.5);
      case 93.5:
        return const StandardBBPB024(10.3, 11.2, 12.2, 13.3, 14.6, 16.1, 17.7);
      case 94.0:
        return const StandardBBPB024(10.4, 11.3, 12.3, 13.5, 14.7, 16.2, 17.9);
      case 94.5:
        return const StandardBBPB024(10.5, 11.4, 12.4, 13.6, 14.9, 16.4, 18.0);
      case 95.0:
        return const StandardBBPB024(10.6, 11.5, 12.6, 13.7, 15.0, 16.5, 18.2);
      case 95.5:
        return const StandardBBPB024(10.7, 11.6, 12.7, 13.8, 15.2, 16.7, 18.4);
      case 96.0:
        return const StandardBBPB024(10.8, 11.7, 12.8, 14.0, 15.3, 16.8, 18.6);
      case 96.5:
        return const StandardBBPB024(10.9, 11.8, 12.9, 14.1, 15.4, 17.0, 18.7);
      case 97.0:
        return const StandardBBPB024(11.0, 12.0, 13.0, 14.2, 15.6, 17.1, 18.9);
      case 97.5:
        return const StandardBBPB024(11.1, 12.1, 13.1, 14.4, 15.7, 17.3, 19.1);
      case 98.0:
        return const StandardBBPB024(11.2, 12.2, 13.3, 14.5, 15.9, 17.5, 19.3);
      case 98.5:
        return const StandardBBPB024(11.3, 12.3, 13.4, 14.6, 16.0, 17.6, 19.5);
      case 99.0:
        return const StandardBBPB024(11.4, 12.4, 13.5, 14.8, 16.2, 17.8, 19.6);
      case 99.5:
        return const StandardBBPB024(11.5, 12.5, 13.6, 14.9, 16.3, 18.0, 19.8);
      case 100.0:
        return const StandardBBPB024(11.6, 12.6, 13.7, 15.0, 16.5, 18.1, 20.0);
      case 100.5:
        return const StandardBBPB024(11.7, 12.7, 13.9, 15.2, 16.6, 18.3, 20.2);
      case 101.0:
        return const StandardBBPB024(11.8, 12.8, 14.0, 15.3, 16.8, 18.5, 20.4);
      case 101.5:
        return const StandardBBPB024(11.9, 13.0, 14.1, 15.5, 17.0, 18.7, 20.6);
      case 102.0:
        return const StandardBBPB024(12.0, 13.1, 14.3, 15.6, 17.1, 18.9, 20.8);
      case 102.5:
        return const StandardBBPB024(12.1, 13.2, 14.4, 15.8, 17.3, 19.0, 21.0);
      case 103.0:
        return const StandardBBPB024(12.3, 13.3, 14.5, 15.9, 17.5, 19.2, 21.3);
      case 103.5:
        return const StandardBBPB024(12.4, 13.5, 14.7, 16.1, 17.6, 19.4, 21.5);
      case 104.0:
        return const StandardBBPB024(12.5, 13.6, 14.8, 16.2, 17.8, 19.6, 21.7);
      case 104.5:
        return const StandardBBPB024(12.6, 13.7, 15.0, 16.4, 18.0, 19.8, 21.9);
      case 105.0:
        return const StandardBBPB024(12.7, 13.8, 15.1, 16.5, 18.2, 20.0, 22.2);
      case 105.5:
        return const StandardBBPB024(12.8, 14.0, 15.3, 16.7, 18.4, 20.2, 22.4);
      case 106.0:
        return const StandardBBPB024(13.0, 14.1, 15.4, 16.9, 18.5, 20.5, 22.6);
      case 106.5:
        return const StandardBBPB024(13.1, 14.3, 15.6, 17.1, 18.7, 20.7, 22.9);
      case 107.0:
        return const StandardBBPB024(13.2, 14.4, 15.7, 17.2, 18.9, 20.9, 23.1);
      case 107.5:
        return const StandardBBPB024(13.3, 14.5, 15.9, 17.4, 19.1, 21.1, 23.4);
      case 108.0:
        return const StandardBBPB024(13.5, 14.7, 16.0, 17.6, 19.3, 21.3, 23.6);
      case 108.5:
        return const StandardBBPB024(13.6, 14.8, 16.2, 17.8, 19.5, 21.6, 23.9);
      case 109.0:
        return const StandardBBPB024(13.7, 15.0, 16.4, 18.0, 19.7, 21.8, 24.2);
      case 109.5:
        return const StandardBBPB024(13.9, 15.1, 16.5, 18.1, 20.0, 22.0, 24.4);
      case 110.0:
        return const StandardBBPB024(14.0, 15.3, 16.7, 18.3, 20.2, 22.3, 24.7);
      default:
        return null;
    }
  }
}
