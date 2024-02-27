import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_test_for_patients_widget.dart' show SelectTestForPatientsWidget;
import 'package:flutter/material.dart';

class SelectTestForPatientsModel
    extends FlutterFlowModel<SelectTestForPatientsWidget> {
  ///  Local state fields for this page.

  List<dynamic> typeSetTest = [];
  void addToTypeSetTest(dynamic item) => typeSetTest.add(item);
  void removeFromTypeSetTest(dynamic item) => typeSetTest.remove(item);
  void removeAtIndexFromTypeSetTest(int index) => typeSetTest.removeAt(index);
  void insertAtIndexInTypeSetTest(int index, dynamic item) =>
      typeSetTest.insert(index, item);
  void updateTypeSetTestAtIndex(int index, Function(dynamic) updateFn) =>
      typeSetTest[index] = updateFn(typeSetTest[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (BACK)] action in SelectTestForPatients widget.
  ApiCallResponse? apiResultb76;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (addPatients)] action in Button widget.
  ApiCallResponse? apiResult94v;

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
