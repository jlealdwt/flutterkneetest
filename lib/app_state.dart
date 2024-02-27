import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _SurgeonID = '628e8cb6166d454482c4260c';
  String get SurgeonID => _SurgeonID;
  set SurgeonID(String value) {
    _SurgeonID = value;
  }

  List<String> _selectedTestForPatientsSurgeons = [];
  List<String> get selectedTestForPatientsSurgeons =>
      _selectedTestForPatientsSurgeons;
  set selectedTestForPatientsSurgeons(List<String> value) {
    _selectedTestForPatientsSurgeons = value;
  }

  void addToSelectedTestForPatientsSurgeons(String value) {
    _selectedTestForPatientsSurgeons.add(value);
  }

  void removeFromSelectedTestForPatientsSurgeons(String value) {
    _selectedTestForPatientsSurgeons.remove(value);
  }

  void removeAtIndexFromSelectedTestForPatientsSurgeons(int index) {
    _selectedTestForPatientsSurgeons.removeAt(index);
  }

  void updateSelectedTestForPatientsSurgeonsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectedTestForPatientsSurgeons[index] =
        updateFn(_selectedTestForPatientsSurgeons[index]);
  }

  void insertAtIndexInSelectedTestForPatientsSurgeons(
      int index, String value) {
    _selectedTestForPatientsSurgeons.insert(index, value);
  }

  bool _IsLadoFail = false;
  bool get IsLadoFail => _IsLadoFail;
  set IsLadoFail(bool value) {
    _IsLadoFail = value;
  }

  int _totalFormCompleted = 0;
  int get totalFormCompleted => _totalFormCompleted;
  set totalFormCompleted(int value) {
    _totalFormCompleted = value;
  }

  List<String> _patientResponse = [];
  List<String> get patientResponse => _patientResponse;
  set patientResponse(List<String> value) {
    _patientResponse = value;
  }

  void addToPatientResponse(String value) {
    _patientResponse.add(value);
  }

  void removeFromPatientResponse(String value) {
    _patientResponse.remove(value);
  }

  void removeAtIndexFromPatientResponse(int index) {
    _patientResponse.removeAt(index);
  }

  void updatePatientResponseAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _patientResponse[index] = updateFn(_patientResponse[index]);
  }

  void insertAtIndexInPatientResponse(int index, String value) {
    _patientResponse.insert(index, value);
  }

  String _petientId = '';
  String get petientId => _petientId;
  set petientId(String value) {
    _petientId = value;
  }

  List<dynamic> _allFiles = [];
  List<dynamic> get allFiles => _allFiles;
  set allFiles(List<dynamic> value) {
    _allFiles = value;
  }

  void addToAllFiles(dynamic value) {
    _allFiles.add(value);
  }

  void removeFromAllFiles(dynamic value) {
    _allFiles.remove(value);
  }

  void removeAtIndexFromAllFiles(int index) {
    _allFiles.removeAt(index);
  }

  void updateAllFilesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _allFiles[index] = updateFn(_allFiles[index]);
  }

  void insertAtIndexInAllFiles(int index, dynamic value) {
    _allFiles.insert(index, value);
  }

  String _titleTest = '';
  String get titleTest => _titleTest;
  set titleTest(String value) {
    _titleTest = value;
  }

  String _fileTest = '';
  String get fileTest => _fileTest;
  set fileTest(String value) {
    _fileTest = value;
  }

  String _codePatients = '';
  String get codePatients => _codePatients;
  set codePatients(String value) {
    _codePatients = value;
  }

  int _totalA = 0;
  int get totalA => _totalA;
  set totalA(int value) {
    _totalA = value;
  }

  int _totalB = 0;
  int get totalB => _totalB;
  set totalB(int value) {
    _totalB = value;
  }

  List<dynamic> _jsonTestCompleted = [];
  List<dynamic> get jsonTestCompleted => _jsonTestCompleted;
  set jsonTestCompleted(List<dynamic> value) {
    _jsonTestCompleted = value;
  }

  void addToJsonTestCompleted(dynamic value) {
    _jsonTestCompleted.add(value);
  }

  void removeFromJsonTestCompleted(dynamic value) {
    _jsonTestCompleted.remove(value);
  }

  void removeAtIndexFromJsonTestCompleted(int index) {
    _jsonTestCompleted.removeAt(index);
  }

  void updateJsonTestCompletedAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _jsonTestCompleted[index] = updateFn(_jsonTestCompleted[index]);
  }

  void insertAtIndexInJsonTestCompleted(int index, dynamic value) {
    _jsonTestCompleted.insert(index, value);
  }

  bool _selKssTest = false;
  bool get selKssTest => _selKssTest;
  set selKssTest(bool value) {
    _selKssTest = value;
  }

  bool _completedTestKss = false;
  bool get completedTestKss => _completedTestKss;
  set completedTestKss(bool value) {
    _completedTestKss = value;
  }

  String _oldPatientsIdMongo = '';
  String get oldPatientsIdMongo => _oldPatientsIdMongo;
  set oldPatientsIdMongo(String value) {
    _oldPatientsIdMongo = value;
  }

  List<String> _diagnosticTratamentDefault = [];
  List<String> get diagnosticTratamentDefault => _diagnosticTratamentDefault;
  set diagnosticTratamentDefault(List<String> value) {
    _diagnosticTratamentDefault = value;
  }

  void addToDiagnosticTratamentDefault(String value) {
    _diagnosticTratamentDefault.add(value);
  }

  void removeFromDiagnosticTratamentDefault(String value) {
    _diagnosticTratamentDefault.remove(value);
  }

  void removeAtIndexFromDiagnosticTratamentDefault(int index) {
    _diagnosticTratamentDefault.removeAt(index);
  }

  void updateDiagnosticTratamentDefaultAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _diagnosticTratamentDefault[index] =
        updateFn(_diagnosticTratamentDefault[index]);
  }

  void insertAtIndexInDiagnosticTratamentDefault(int index, String value) {
    _diagnosticTratamentDefault.insert(index, value);
  }
}
