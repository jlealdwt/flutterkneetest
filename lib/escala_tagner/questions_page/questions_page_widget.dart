import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'questions_page_model.dart';
export 'questions_page_model.dart';

class QuestionsPageWidget extends StatefulWidget {
  const QuestionsPageWidget({
    super.key,
    required this.listQuestion,
    required this.allQuestions,
  });

  final dynamic listQuestion;
  final List<dynamic>? allQuestions;

  @override
  State<QuestionsPageWidget> createState() => _QuestionsPageWidgetState();
}

class _QuestionsPageWidgetState extends State<QuestionsPageWidget> {
  late QuestionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionsPageModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (_model.slick == false)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Text(
                        functions.changeKeyHad(getJsonField(
                          widget.listQuestion,
                          r'''$.title''',
                        ).toString()),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  Container(
                    decoration: const BoxDecoration(),
                    child: Visibility(
                      visible: _model.isLoaded == false,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: Builder(
                          builder: (context) {
                            final questionOptions = getJsonField(
                              widget.listQuestion,
                              r'''$.options''',
                            ).toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: questionOptions.length,
                              itemBuilder: (context, questionOptionsIndex) {
                                final questionOptionsItem =
                                    questionOptions[questionOptionsIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (_model.slick == false)
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 8.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                setState(() {
                                                  FFAppState()
                                                          .totalFormCompleted =
                                                      FFAppState()
                                                              .totalFormCompleted +
                                                          1;
                                                });
                                                if (FFAppState()
                                                        .totalFormCompleted ==
                                                    widget
                                                        .allQuestions?.length) {
                                                  setState(() {
                                                    _model.slick = true;
                                                  });
                                                  setState(() {
                                                    FFAppState()
                                                        .addToPatientResponse(
                                                            getJsonField(
                                                      questionOptionsItem,
                                                      r'''$''',
                                                    ).toString());
                                                  });
                                                  setState(() {
                                                    FFAppState()
                                                        .totalFormCompleted = 0;
                                                  });
                                                  _model.apiResulti48 =
                                                      await AddResultCall.call(
                                                    patientId:
                                                        FFAppState().petientId,
                                                    selectionsList: FFAppState()
                                                        .patientResponse,
                                                    surveryFile:
                                                        FFAppState().fileTest,
                                                    surveryName:
                                                        FFAppState().titleTest,
                                                  );
                                                  if ((_model.apiResulti48
                                                          ?.succeeded ??
                                                      true)) {
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1150));
                                                    setState(() {
                                                      FFAppState()
                                                          .patientResponse = [];
                                                    });
                                                    _model.apiResultxu0 =
                                                        await LoginPatiensCall
                                                            .call(
                                                      password: FFAppState()
                                                          .codePatients,
                                                    );
                                                    if ((_model.apiResultxu0
                                                            ?.succeeded ??
                                                        true)) {
                                                      setState(() {
                                                        FFAppState()
                                                                .jsonTestCompleted =
                                                            LoginPatiensCall
                                                                    .completeSurverys(
                                                          (_model.apiResultxu0
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!
                                                                .toList()
                                                                .cast<
                                                                    dynamic>();
                                                      });
                                                      setState(() {
                                                        FFAppState().totalB =
                                                            FFAppState()
                                                                .jsonTestCompleted
                                                                .length;
                                                      });
                                                      if (FFAppState().totalA <=
                                                          FFAppState().totalB) {
                                                        context.pushNamed(
                                                            'TestFinished');
                                                      } else {
                                                        context.pushNamed(
                                                          'EscalaTagner',
                                                          queryParameters: {
                                                            'questionsCompleted':
                                                                serializeParam(
                                                              getJsonField(
                                                                (_model.apiResultxu0
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.completedSurveys''',
                                                              ),
                                                              ParamType.JSON,
                                                            ),
                                                            'nameTest':
                                                                serializeParam(
                                                              getJsonField(
                                                                (_model.apiResultxu0
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.questionFiles''',
                                                              ),
                                                              ParamType.JSON,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    }
                                                  }
                                                } else {
                                                  setState(() {
                                                    _model.slick = true;
                                                  });
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 550));
                                                  setState(() {
                                                    FFAppState()
                                                        .addToPatientResponse(
                                                            getJsonField(
                                                      questionOptionsItem,
                                                      r'''$''',
                                                    ).toString());
                                                  });
                                                  if (Navigator.of(context)
                                                      .canPop()) {
                                                    context.pop();
                                                  }
                                                  context.pushNamed(
                                                    'QuestionsPage',
                                                    queryParameters: {
                                                      'listQuestion':
                                                          serializeParam(
                                                        widget.allQuestions?[
                                                            FFAppState()
                                                                .totalFormCompleted],
                                                        ParamType.JSON,
                                                      ),
                                                      'allQuestions':
                                                          serializeParam(
                                                        widget.allQuestions,
                                                        ParamType.JSON,
                                                        true,
                                                      ),
                                                    }.withoutNulls,
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .rightToLeft,
                                                        duration: Duration(
                                                            milliseconds: 125),
                                                      ),
                                                    },
                                                  );
                                                }

                                                setState(() {});
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Container(
                                                  width: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  15.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          functions
                                                              .newDeleteKEy(
                                                                  getJsonField(
                                                            questionOptionsItem,
                                                            r'''$''',
                                                          ).toString()),
                                                          '0',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_model.isLoaded == true)
                          const Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: custom_widgets.WidgetLoadin(
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_model.slick == true)
                          const Expanded(
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: custom_widgets.WidgetLoadin(
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
