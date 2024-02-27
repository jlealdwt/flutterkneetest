import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'single_patients_widget.dart' show SinglePatientsWidget;
import 'package:flutter/material.dart';

class SinglePatientsModel extends FlutterFlowModel<SinglePatientsWidget> {
  ///  Local state fields for this page.

  List<String> listResultTest = [];
  void addToListResultTest(String item) => listResultTest.add(item);
  void removeFromListResultTest(String item) => listResultTest.remove(item);
  void removeAtIndexFromListResultTest(int index) =>
      listResultTest.removeAt(index);
  void insertAtIndexInListResultTest(int index, String item) =>
      listResultTest.insert(index, item);
  void updateListResultTestAtIndex(int index, Function(String) updateFn) =>
      listResultTest[index] = updateFn(listResultTest[index]);

  List<dynamic> diagnosticos = [];
  void addToDiagnosticos(dynamic item) => diagnosticos.add(item);
  void removeFromDiagnosticos(dynamic item) => diagnosticos.remove(item);
  void removeAtIndexFromDiagnosticos(int index) => diagnosticos.removeAt(index);
  void insertAtIndexInDiagnosticos(int index, dynamic item) =>
      diagnosticos.insert(index, item);
  void updateDiagnosticosAtIndex(int index, Function(dynamic) updateFn) =>
      diagnosticos[index] = updateFn(diagnosticos[index]);

  List<dynamic> tratamientos = [];
  void addToTratamientos(dynamic item) => tratamientos.add(item);
  void removeFromTratamientos(dynamic item) => tratamientos.remove(item);
  void removeAtIndexFromTratamientos(int index) => tratamientos.removeAt(index);
  void insertAtIndexInTratamientos(int index, dynamic item) =>
      tratamientos.insert(index, item);
  void updateTratamientosAtIndex(int index, Function(dynamic) updateFn) =>
      tratamientos[index] = updateFn(tratamientos[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (BACK)] action in singlePatients widget.
  ApiCallResponse? apiResultkvq;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue1;
  FormFieldController<List<String>>? dropDownValueController1;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue2;
  FormFieldController<List<String>>? dropDownValueController2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
