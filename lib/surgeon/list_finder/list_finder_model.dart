import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_finder_widget.dart' show ListFinderWidget;
import 'package:flutter/material.dart';

class ListFinderModel extends FlutterFlowModel<ListFinderWidget> {
  ///  Local state fields for this page.

  List<dynamic> listShowData = [];
  void addToListShowData(dynamic item) => listShowData.add(item);
  void removeFromListShowData(dynamic item) => listShowData.remove(item);
  void removeAtIndexFromListShowData(int index) => listShowData.removeAt(index);
  void insertAtIndexInListShowData(int index, dynamic item) =>
      listShowData.insert(index, item);
  void updateListShowDataAtIndex(int index, Function(dynamic) updateFn) =>
      listShowData[index] = updateFn(listShowData[index]);

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Finder)] action in ListFinder widget.
  ApiCallResponse? apiResulteho;

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
