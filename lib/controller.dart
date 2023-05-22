class DataController {
  late String customerName;
  late String customerSurname;
  late String tcNo;
  late String licenseNo;
  late String plate;
  late DateTime licenseDate;
  late DateTime exitDate;
  late DateTime entryDate;

  static final DataController _singleton = DataController._internal();

  factory DataController() {
    return _singleton;
  }

  DataController._internal() {
    customerName = '';
    customerSurname = '';
    tcNo = '';
    licenseNo = '';
    plate = '';
    licenseDate = DateTime.now();
    exitDate = DateTime.now();
    entryDate = DateTime.now();
  }
}
