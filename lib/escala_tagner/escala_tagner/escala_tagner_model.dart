import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'escala_tagner_widget.dart' show EscalaTagnerWidget;
import 'package:flutter/material.dart';

class EscalaTagnerModel extends FlutterFlowModel<EscalaTagnerWidget> {
  ///  Local state fields for this page.

  dynamic respApiQuestion;

  int preguntaActual = 0;

  String? typeForm;

  String? filesActived;

  int isLoad = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (testQuestionsData)] action in EscalaTagner widget.
  ApiCallResponse? apiResultxr8;

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
