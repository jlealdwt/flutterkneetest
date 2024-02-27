import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'preview_patienst_widget.dart' show PreviewPatienstWidget;
import 'package:flutter/material.dart';

class PreviewPatienstModel extends FlutterFlowModel<PreviewPatienstWidget> {
  ///  Local state fields for this page.

  dynamic resultPeticion;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (testQuestionsData)] action in PreviewPatienst widget.
  ApiCallResponse? apiResulta97;

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
