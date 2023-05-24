class Car {
  late int id;
  late int serialNo;
  late String brand;
  late String model;
  late String plate;
  late String gear;
  late bool isRented;
  late int yearProd;
  late int hourlyPrice;
  late int dailyPrice;
  late int weeklyPrice;
  late int monthlyPrice;
  late int sixMonthPrice;
  late int annualPrice;

  Car.fromMap(Map<String, dynamic> data) {
    assert(data['id'] != null);
    assert(data['serialNo'] != null);
    assert(data['brand'] != null);
    assert(data['model'] != null);
    assert(data['yearProd'] != null);
    assert(data['plate'] != null);
    assert(data['gear'] != null);
    assert(data['isRented'] != null);

    id = data['id'];
    serialNo = data['serialNo'];
    brand = data['brand'];
    model = data['model'];
    yearProd = data['yearProd'];
    plate = data['plate'];
    gear = data['gear'];
    isRented = data['isRented'];
    hourlyPrice = 150;
    dailyPrice = 300;
    weeklyPrice = 1200;
    monthlyPrice = 4000;
    sixMonthPrice = 20000;
    annualPrice = 38000;
  }

  Map<String, dynamic> carToMap() {
    return {
      'id': id,
      'serialNo': serialNo,
      'brand': brand,
      'model': model,
      'yearProd': yearProd,
      'plate': plate,
      'gear': gear,
      'isRented': isRented,
      'hourlyPrice': hourlyPrice,
      'dailyPrice': dailyPrice,
      'weeklyPrice': weeklyPrice,
      'monthlyPrice': monthlyPrice,
      'sixMonthPrice': sixMonthPrice,
      'annualPrice': annualPrice,
    };
  }
}
