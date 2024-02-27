import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'preview_patienst_model.dart';
export 'preview_patienst_model.dart';

class PreviewPatienstWidget extends StatefulWidget {
  const PreviewPatienstWidget({
    super.key,
    required this.resultApi,
  });

  final dynamic resultApi;

  @override
  State<PreviewPatienstWidget> createState() => _PreviewPatienstWidgetState();
}

class _PreviewPatienstWidgetState extends State<PreviewPatienstWidget> {
  late PreviewPatienstModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreviewPatienstModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().selKssTest == true) {
        _model.apiResulta97 = await TestQuestionsDataCall.call(
          nameTest: 'KSS',
        );
        if ((_model.apiResulta97?.succeeded ?? true)) {
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            onPressed: () async {
              await Share.share(
                getJsonField(
                  widget.resultApi,
                  r'''$.password''',
                ).toString(),
                sharePositionOrigin: getWidgetBoundingBox(context),
              );
            },
            backgroundColor: const Color(0xFF399B22),
            elevation: 8.0,
            child: Icon(
              Icons.ios_share,
              color: FlutterFlowTheme.of(context).info,
              size: 24.0,
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ESCALAS',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Container(
                          width: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Código',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      getJsonField(
                                        widget.resultApi,
                                        r'''$.password''',
                                      ).toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 16.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 1.0,
                                indent: 10.0,
                                endIndent: 10.0,
                                color: Color(0xFF399B22),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 20.0),
                                child: Builder(
                                  builder: (context) {
                                    final pp = FFAppState()
                                        .selectedTestForPatientsSurgeons
                                        .map((e) => e)
                                        .toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: pp.length,
                                      itemBuilder: (context, ppIndex) {
                                        final ppItem = pp[ppIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Text(
                                                ppItem,
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 8.0,
                  child: Container(
                    width: 150.0,
                    decoration: const BoxDecoration(),
                    child: Visibility(
                      visible: (FFAppState().selKssTest == false) ||
                          FFAppState().completedTestKss,
                      child: FlutterFlowIconButton(
                        borderColor: const Color(0xFF399B22),
                        borderRadius: 8.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        fillColor: Colors.white,
                        icon: const Icon(
                          Icons.home,
                          color: Color(0xFF399B22),
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                          context.safePop();
                          context.safePop();
                          context.safePop();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 8.0,
                  child: Container(
                    width: 150.0,
                    decoration: const BoxDecoration(),
                    child: Visibility(
                      visible: (FFAppState().selKssTest == true) &&
                          !FFAppState().completedTestKss,
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'QuestionsPageKss',
                            queryParameters: {
                              'listQuestion': serializeParam(
                                TestQuestionsDataCall.questions(
                                  (_model.apiResulta97?.jsonBody ?? ''),
                                )?.first,
                                ParamType.JSON,
                              ),
                              'allQuestions': serializeParam(
                                TestQuestionsDataCall.questions(
                                  (_model.apiResulta97?.jsonBody ?? ''),
                                ),
                                ParamType.JSON,
                                true,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Empezar ',
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF399B22),
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Color(0xFF399B22),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
