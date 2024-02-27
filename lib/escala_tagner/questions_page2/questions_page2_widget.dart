import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'questions_page2_model.dart';
export 'questions_page2_model.dart';

class QuestionsPage2Widget extends StatefulWidget {
  const QuestionsPage2Widget({
    super.key,
    required this.listQuestion,
    required this.allQuestion,
  });

  final dynamic listQuestion;
  final List<dynamic>? allQuestion;

  @override
  State<QuestionsPage2Widget> createState() => _QuestionsPage2WidgetState();
}

class _QuestionsPage2WidgetState extends State<QuestionsPage2Widget>
    with TickerProviderStateMixin {
  late QuestionsPage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'sliderOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionsPage2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Text(
                  getJsonField(
                    widget.listQuestion,
                    r'''$.title''',
                  ).toString(),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ),
              Slider(
                activeColor: FlutterFlowTheme.of(context).primary,
                inactiveColor: FlutterFlowTheme.of(context).alternate,
                min: 0.0,
                max: 10.0,
                value: _model.sliderValue ??= 0.0,
                divisions: 10,
                onChanged: (newValue) async {
                  newValue = double.parse(newValue.toStringAsFixed(0));
                  setState(() => _model.sliderValue = newValue);
                  setState(() {
                    _model.activeSlider = true;
                  });
                },
              ).animateOnPageLoad(animationsMap['sliderOnPageLoadAnimation']!),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        functions
                            .explode(getJsonField(
                              widget.listQuestion,
                              r'''$.options''',
                            ).toString())
                            .first,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Text(
                        functions
                            .explode(getJsonField(
                              widget.listQuestion,
                              r'''$.options''',
                            ).toString())
                            .last,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              if (_model.activeSlider == true)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        FFAppState().totalFormCompleted =
                            FFAppState().totalFormCompleted + 1;
                      });
                      if (FFAppState().totalFormCompleted ==
                          widget.allQuestion?.length) {
                        setState(() {
                          FFAppState().addToPatientResponse(
                              _model.sliderValue!.toString());
                        });
                        setState(() {
                          FFAppState().totalFormCompleted = 0;
                        });
                        _model.apiResulti48 = await AddResultCall.call(
                          patientId: FFAppState().petientId,
                          selectionsList: FFAppState().patientResponse,
                          surveryFile: FFAppState().fileTest,
                          surveryName: FFAppState().titleTest,
                        );
                        if ((_model.apiResulti48?.succeeded ?? true)) {
                          await Future.delayed(
                              const Duration(milliseconds: 2000));
                          setState(() {
                            FFAppState().patientResponse = [];
                          });
                          _model.apiResultxu0 = await LoginPatiensCall.call(
                            password: FFAppState().codePatients,
                          );
                          if ((_model.apiResultxu0?.succeeded ?? true)) {
                            setState(() {
                              FFAppState().jsonTestCompleted =
                                  LoginPatiensCall.completeSurverys(
                                (_model.apiResultxu0?.jsonBody ?? ''),
                              )!
                                      .toList()
                                      .cast<dynamic>();
                            });
                            setState(() {
                              FFAppState().totalB =
                                  FFAppState().jsonTestCompleted.length;
                            });
                            if (FFAppState().totalA <= FFAppState().totalB) {
                              context.goNamed('TestFinished');
                            } else {
                              context.pushNamed(
                                'EscalaTagner',
                                queryParameters: {
                                  'questionsCompleted': serializeParam(
                                    getJsonField(
                                      (_model.apiResultxu0?.jsonBody ?? ''),
                                      r'''$.completedSurveys''',
                                    ),
                                    ParamType.JSON,
                                  ),
                                  'nameTest': serializeParam(
                                    getJsonField(
                                      (_model.apiResultxu0?.jsonBody ?? ''),
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
                          FFAppState().addToPatientResponse(
                              _model.sliderValue!.toString());
                        });
                        if (Navigator.of(context).canPop()) {
                          context.pop();
                        }
                        context.pushNamed(
                          'QuestionsPage2',
                          queryParameters: {
                            'listQuestion': serializeParam(
                              widget.allQuestion?[
                                  FFAppState().totalFormCompleted],
                              ParamType.JSON,
                            ),
                            'allQuestion': serializeParam(
                              widget.allQuestion,
                              ParamType.JSON,
                              true,
                            ),
                          }.withoutNulls,
                        );
                      }

                      setState(() {});
                    },
                    text: 'Siguiente',
                    icon: const Icon(
                      Icons.navigate_next,
                      size: 30.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFF399B22),
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 5.0,
                      borderSide: const BorderSide(
                        color: Color(0xFF399B22),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              if (_model.activeSlider == false)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Siguiente',
                    icon: const Icon(
                      Icons.navigate_next,
                      size: 30.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFF6F876F),
                                fontWeight: FontWeight.bold,
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Color(0xFF6F876F),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['buttonOnPageLoadAnimation']!),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
