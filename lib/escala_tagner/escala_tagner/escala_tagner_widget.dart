import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'escala_tagner_model.dart';
export 'escala_tagner_model.dart';

class EscalaTagnerWidget extends StatefulWidget {
  const EscalaTagnerWidget({
    super.key,
    required this.nameTest,
    required this.questionsCompleted,
  });

  final dynamic nameTest;
  final dynamic questionsCompleted;

  @override
  State<EscalaTagnerWidget> createState() => _EscalaTagnerWidgetState();
}

class _EscalaTagnerWidgetState extends State<EscalaTagnerWidget>
    with TickerProviderStateMixin {
  late EscalaTagnerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
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
    'textOnPageLoadAnimation2': AnimationInfo(
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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EscalaTagnerModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.isLoad = 1;
      });
      await Future.delayed(const Duration(milliseconds: 550));
      _model.apiResultxr8 = await TestQuestionsDataCall.call(
        nameTest:
            functions.nextTest(widget.nameTest!, widget.questionsCompleted!),
      );
      if ((_model.apiResultxr8?.succeeded ?? true)) {
        setState(() {
          _model.respApiQuestion = (_model.apiResultxr8?.jsonBody ?? '');
          _model.typeForm = TestQuestionsDataCall.type(
            (_model.apiResultxr8?.jsonBody ?? ''),
          ).toString();
        });
        setState(() {
          FFAppState().titleTest = functions
              .idFiles(
                  FFAppState().allFiles.toList(),
                  getJsonField(
                    _model.respApiQuestion,
                    r'''$.title''',
                  ).toString().toString())
              .toString();
        });
        setState(() {
          FFAppState().fileTest = functions
              .idFilesApi(
                  FFAppState().allFiles.toList(), FFAppState().titleTest)
              .toString();
        });
        setState(() {
          _model.isLoad = 0;
        });
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
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
                if (_model.isLoad == 0)
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            getJsonField(
                              _model.respApiQuestion,
                              r'''$.title''',
                            ).toString(),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF399B22),
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 0.0),
                          child: Text(
                            getJsonField(
                              _model.respApiQuestion,
                              r'''$.subtitle''',
                            ).toString(),
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation2']!),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            if (_model.typeForm == 'slider') {
                              context.pushNamed(
                                'QuestionsPage2',
                                queryParameters: {
                                  'listQuestion': serializeParam(
                                    TestQuestionsDataCall.questions(
                                      (_model.apiResultxr8?.jsonBody ?? ''),
                                    )?.first,
                                    ParamType.JSON,
                                  ),
                                  'allQuestion': serializeParam(
                                    TestQuestionsDataCall.questions(
                                      (_model.apiResultxr8?.jsonBody ?? ''),
                                    ),
                                    ParamType.JSON,
                                    true,
                                  ),
                                }.withoutNulls,
                              );
                            } else {
                              context.pushNamed(
                                'QuestionsPage',
                                queryParameters: {
                                  'listQuestion': serializeParam(
                                    TestQuestionsDataCall.questions(
                                      (_model.apiResultxr8?.jsonBody ?? ''),
                                    )?.first,
                                    ParamType.JSON,
                                  ),
                                  'allQuestions': serializeParam(
                                    TestQuestionsDataCall.questions(
                                      (_model.apiResultxr8?.jsonBody ?? ''),
                                    ),
                                    ParamType.JSON,
                                    true,
                                  ),
                                }.withoutNulls,
                              );
                            }
                          },
                          text: 'Empezar',
                          options: FFButtonOptions(
                            width: 180.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.white,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFF399B22),
                                ),
                            elevation: 5.0,
                            borderSide: const BorderSide(
                              color: Color(0xFF399B22),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ].divide(const SizedBox(height: 30.0)),
                    ),
                  ),
                if (_model.isLoad == 1)
                  const Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, -1.0),
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: custom_widgets.WidgetLoadin(
                                width: 50.0,
                                height: 50.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
