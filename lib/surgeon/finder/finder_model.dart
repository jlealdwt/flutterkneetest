import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'finder_widget.dart' show FinderWidget;
import 'package:flutter/material.dart';

class FinderModel extends FlutterFlowModel<FinderWidget> {
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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (BACK)] action in Finder widget.
  ApiCallResponse? apiResultkvq;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
