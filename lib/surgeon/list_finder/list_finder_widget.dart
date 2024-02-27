import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'list_finder_model.dart';
export 'list_finder_model.dart';

class ListFinderWidget extends StatefulWidget {
  const ListFinderWidget({
    super.key,
    this.historia,
    this.apellido,
    this.tratamentios,
    this.diagnostic,
    this.createdAt,
    this.hospital,
  });

  final String? historia;
  final String? apellido;
  final String? tratamentios;
  final String? diagnostic;
  final String? createdAt;
  final String? hospital;

  @override
  State<ListFinderWidget> createState() => _ListFinderWidgetState();
}

class _ListFinderWidgetState extends State<ListFinderWidget>
    with TickerProviderStateMixin {
  late ListFinderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      loop: true,
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.5, 1.5),
        ),
      ],
    ),
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(-2.0, -2.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListFinderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResulteho = await FinderCall.call(
        surgeonId: FFAppState().SurgeonID,
        historia: widget.historia,
        apellido: widget.apellido,
        tratamentios: widget.tratamentios,
        diagnostic: widget.diagnostic,
        hospital: widget.hospital,
      );
      if ((_model.apiResulteho?.succeeded ?? true)) {
        setState(() {
          _model.listShowData =
              (_model.apiResulteho?.jsonBody ?? '').toList().cast<dynamic>();
        });
        setState(() {
          _model.isLoading = false;
        });
      } else {
        context.pushNamed(
          'LoginCirujano',
          extra: <String, dynamic>{
            kTransitionInfoKey: const TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 150),
            ),
          },
        );
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Text(
                          'RESULTADOS',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (_model.isLoading == true)
                  Text(
                    'Cargando..',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation']!),
                Flexible(
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.7,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    25.0, 0.0, 25.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    final list = _model.listShowData.toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: list.length,
                                      itemBuilder: (context, listIndex) {
                                        final listItem = list[listIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      getJsonField(
                                                        listItem,
                                                        r'''$.apellido''',
                                                      ).toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                    Text(
                                                      getJsonField(
                                                        listItem,
                                                        r'''$.historia''',
                                                      ).toString(),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0xFF09C5A3),
                                                                fontSize: 10.0,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      const SizedBox(width: 10.0)),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed(
                                                      'singlePatients',
                                                      queryParameters: {
                                                        'data': serializeParam(
                                                          getJsonField(
                                                            listItem,
                                                            r'''$''',
                                                            true,
                                                          ),
                                                          ParamType.JSON,
                                                          true,
                                                        ),
                                                        'resultTest':
                                                            serializeParam(
                                                          getJsonField(
                                                            listItem,
                                                            r'''$.surveyScores''',
                                                          ),
                                                          ParamType.JSON,
                                                        ),
                                                        'childPatients':
                                                            serializeParam(
                                                          getJsonField(
                                                            listItem,
                                                            r'''$.childPatients''',
                                                          ),
                                                          ParamType.JSON,
                                                        ),
                                                        'diagnosticos':
                                                            serializeParam(
                                                          getJsonField(
                                                            listItem,
                                                            r'''$.diagnostic''',
                                                          ),
                                                          ParamType.JSON,
                                                        ),
                                                        'tratamientos':
                                                            serializeParam(
                                                          getJsonField(
                                                            listItem,
                                                            r'''$.tratamentios''',
                                                          ),
                                                          ParamType.JSON,
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
                                                              milliseconds:
                                                                  150),
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: const Icon(
                                                    Icons.arrow_forward,
                                                    color: Color(0xFF399B22),
                                                    size: 28.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Divider(
                                              thickness: 1.0,
                                              color: Color(0xFF1A2D29),
                                            ),
                                          ],
                                        );
                                      },
                                    ).animateOnPageLoad(animationsMap[
                                        'listViewOnPageLoadAnimation']!);
                                  },
                                ),
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
          ),
        ),
      ),
    );
  }
}
