import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'questions_page2_widget.dart' show QuestionsPage2Widget;
import 'package:flutter/material.dart';

class QuestionsPage2Model extends FlutterFlowModel<QuestionsPage2Widget> {
  ///  Local state fields for this page.

  bool activeSlider = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Backend Call - API (AddResult)] action in Button widget.
  ApiCallResponse? apiResulti48;
  // Stores action output result for [Backend Call - API (loginPatiens)] action in Button widget.
  ApiCallResponse? apiResultxu0;

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
