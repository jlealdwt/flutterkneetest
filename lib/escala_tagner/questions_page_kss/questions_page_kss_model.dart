import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'questions_page_kss_widget.dart' show QuestionsPageKssWidget;
import 'package:flutter/material.dart';

class QuestionsPageKssModel extends FlutterFlowModel<QuestionsPageKssWidget> {
  ///  Local state fields for this page.

  bool slick = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (AddResult)] action in Container widget.
  ApiCallResponse? apiResulti48;

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
