import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'diagnostic_widget.dart' show DiagnosticWidget;
import 'package:flutter/material.dart';

class DiagnosticModel extends FlutterFlowModel<DiagnosticWidget> {
  ///  Local state fields for this page.

  List<dynamic> tratamientos = [];
  void addToTratamientos(dynamic item) => tratamientos.add(item);
  void removeFromTratamientos(dynamic item) => tratamientos.remove(item);
  void removeAtIndexFromTratamientos(int index) => tratamientos.removeAt(index);
  void insertAtIndexInTratamientos(int index, dynamic item) =>
      tratamientos.insert(index, item);
  void updateTratamientosAtIndex(int index, Function(dynamic) updateFn) =>
      tratamientos[index] = updateFn(tratamientos[index]);

  List<dynamic> diagnosticos = [];
  void addToDiagnosticos(dynamic item) => diagnosticos.add(item);
  void removeFromDiagnosticos(dynamic item) => diagnosticos.remove(item);
  void removeAtIndexFromDiagnosticos(int index) => diagnosticos.removeAt(index);
  void insertAtIndexInDiagnosticos(int index, dynamic item) =>
      diagnosticos.insert(index, item);
  void updateDiagnosticosAtIndex(int index, Function(dynamic) updateFn) =>
      diagnosticos[index] = updateFn(diagnosticos[index]);

  bool isInvalidLado = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (BACK)] action in Diagnostic widget.
  ApiCallResponse? apiResultkvq;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
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

  String? get radioButtonValue => radioButtonValueController?.value;
}
