import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'choose_test_model.dart';
export 'choose_test_model.dart';

class ChooseTestWidget extends StatefulWidget {
  const ChooseTestWidget({
    super.key,
    this.defaultActive,
  });

  final List<String>? defaultActive;

  @override
  State<ChooseTestWidget> createState() => _ChooseTestWidgetState();
}

class _ChooseTestWidgetState extends State<ChooseTestWidget> {
  late ChooseTestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseTestModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 35.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 5.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15.0, 10.0, 15.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.switchValue1 == true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'IKDC');
                                                });
                                              }
                                              if (_model.switchValue2 == true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'Marx');
                                                });
                                              }
                                              if (_model.switchValue3 == true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'ACL RSI');
                                                });
                                              }
                                              if (_model.switchValue5 == true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'Kujala');
                                                });
                                              }
                                              if (_model.switchValue7 == true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'WOMAC');
                                                });
                                              }
                                              if (_model.switchValue8 == true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'KOOS');
                                                });
                                              }
                                              if (_model.switchValue10 ==
                                                  true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'KSS');
                                                  FFAppState().selKssTest =
                                                      true;
                                                });
                                              }
                                              if (_model.switchValue11 ==
                                                  true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'SATISFACCIÓN');
                                                });
                                              }
                                              if (_model.switchValue4 == true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'Tegner');
                                                });
                                              }
                                              if (_model.switchValue6 == true) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'HAD');
                                                });
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'PCS');
                                                });
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'TSK');
                                                });
                                              }
                                              if (_model.switchValue9!) {
                                                setState(() {
                                                  FFAppState()
                                                      .addToSelectedTestForPatientsSurgeons(
                                                          'WOMET');
                                                });
                                              }
                                              Navigator.pop(context);
                                            },
                                            text: 'Guardar',
                                            options: FFButtonOptions(
                                              height: 30.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Colors.white,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: const Color(0xFF399B22),
                                                  ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Color(0xFF399B22),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'IKDC',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue1 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'IKDC')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue1 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Marx',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue2 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'Marx')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue2 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'ACL RSI',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue3 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'ACL RSI')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue3 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tegner',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue4 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'Tegner')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue4 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Kujala',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue5 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'Kujala')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue5 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Psicológicos',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue6 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'Psicológicos')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue6 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'WOMAC',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue7 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'WOMAC')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue7 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'KOOS',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue8 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'KOOS')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue8 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'WOMET',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue9 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'WOMET')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue9 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'KSS',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue10 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'KSS')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue10 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SATISFACCIÓN',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Switch.adaptive(
                                    value: _model.switchValue11 ??= functions
                                            .isActive(
                                                widget.defaultActive!.toList(),
                                                'SATISFACCIÓN')
                                            .toString() ==
                                        '1',
                                    onChanged: (newValue) async {
                                      setState(() =>
                                          _model.switchValue11 = newValue);
                                    },
                                    activeColor: const Color(0xFF09C5A3),
                                    activeTrackColor: const Color(0xFF1A2D29),
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
