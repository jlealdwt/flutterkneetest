import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  List<dynamic> respuestaApi = [];
  void addToRespuestaApi(dynamic item) => respuestaApi.add(item);
  void removeFromRespuestaApi(dynamic item) => respuestaApi.remove(item);
  void removeAtIndexFromRespuestaApi(int index) => respuestaApi.removeAt(index);
  void insertAtIndexInRespuestaApi(int index, dynamic item) =>
      respuestaApi.insert(index, item);
  void updateRespuestaApiAtIndex(int index, Function(dynamic) updateFn) =>
      respuestaApi[index] = updateFn(respuestaApi[index]);

  String? staTus = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (loginPatiens)] action in Button widget.
  ApiCallResponse? respuestaloginPatient;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
