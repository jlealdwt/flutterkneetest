import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'diagnostic_model.dart';
export 'diagnostic_model.dart';

class DiagnosticWidget extends StatefulWidget {
  const DiagnosticWidget({
    super.key,
    required this.name,
    required this.lastname,
    required this.hospital,
    required this.history,
  });

  final String? name;
  final String? lastname;
  final String? hospital;
  final String? history;

  @override
  State<DiagnosticWidget> createState() => _DiagnosticWidgetState();
}

class _DiagnosticWidgetState extends State<DiagnosticWidget> {
  late DiagnosticModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiagnosticModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultkvq = await BackCall.call(
        typeUser: 'surveys',
        operations: 'getLadoFormData',
        surgeonId: null,
      );
      if ((_model.apiResultkvq?.succeeded ?? true)) {
        setState(() {
          _model.diagnosticos = getJsonField(
            (_model.apiResultkvq?.jsonBody ?? ''),
            r'''$.diagnostic''',
            true,
          )!
              .toList()
              .cast<dynamic>();
          _model.tratamientos = getJsonField(
            (_model.apiResultkvq?.jsonBody ?? ''),
            r'''$.tratamentios''',
            true,
          )!
              .toList()
              .cast<dynamic>();
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
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Text(
                          'LADO',
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Container(
                            width: 100.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.3,
                                        decoration: const BoxDecoration(),
                                        child: Text(
                                          'LADO',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.5,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        FlutterFlowRadioButton(
                                          options: ['DER', 'IZQ'].toList(),
                                          onChanged: (val) async {
                                            setState(() {});
                                            setState(() {
                                              FFAppState().IsLadoFail = false;
                                            });
                                          },
                                          controller: _model
                                                  .radioButtonValueController ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 32.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor: const Color(0xFF399B22),
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.end,
                                        ),
                                      ].addToEnd(const SizedBox(width: 15.0)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(width: 40.0))
                        .around(const SizedBox(width: 40.0)),
                  ),
                ),
                if (FFAppState().IsLadoFail == true)
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: Text(
                        'Debe seleccionar una rodilla',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFFFF0003),
                            ),
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlutterFlowDropDown<String>(
                        multiSelectController:
                            _model.dropDownValueController1 ??=
                                FormFieldController<List<String>>(
                                    _model.dropDownValue1 ??= List<String>.from(
                          FFAppState().diagnosticTratamentDefault,
                        )),
                        options: _model.tratamientos
                            .map((e) => e.toString())
                            .toList(),
                        width: 300.0,
                        height: 52.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        searchTextStyle:
                            FlutterFlowTheme.of(context).bodyMedium,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'DIAGNÓSTICO',
                        searchHintText: 'Buscar Ítem',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 28.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 5.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: true,
                        onMultiSelectChanged: (val) =>
                            setState(() => _model.dropDownValue1 = val),
                      ),
                    ]
                        .divide(const SizedBox(width: 40.0))
                        .around(const SizedBox(width: 40.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlutterFlowDropDown<String>(
                        multiSelectController:
                            _model.dropDownValueController2 ??=
                                FormFieldController<List<String>>(
                                    _model.dropDownValue2 ??= List<String>.from(
                          FFAppState().diagnosticTratamentDefault,
                        )),
                        options: _model.diagnosticos
                            .map((e) => e.toString())
                            .toList(),
                        width: 300.0,
                        height: 52.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        searchTextStyle:
                            FlutterFlowTheme.of(context).bodyMedium,
                        textStyle: FlutterFlowTheme.of(context).bodyMedium,
                        hintText: 'TRATAMIENTOS',
                        searchHintText: 'Buscar Ítem',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 28.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 5.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: true,
                        isMultiSelect: true,
                        onMultiSelectChanged: (val) =>
                            setState(() => _model.dropDownValue2 = val),
                      ),
                    ]
                        .divide(const SizedBox(width: 40.0))
                        .around(const SizedBox(width: 40.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          if (_model.radioButtonValue == null) {
                            setState(() {
                              FFAppState().IsLadoFail = true;
                            });
                            return;
                          }

                          context.pushNamed(
                            'SelectTestForPatients',
                            queryParameters: {
                              'name': serializeParam(
                                widget.name,
                                ParamType.String,
                              ),
                              'lastname': serializeParam(
                                widget.lastname,
                                ParamType.String,
                              ),
                              'hospital': serializeParam(
                                widget.hospital,
                                ParamType.String,
                              ),
                              'history': serializeParam(
                                widget.history,
                                ParamType.String,
                              ),
                              'lado': serializeParam(
                                _model.radioButtonValue,
                                ParamType.String,
                              ),
                              'diagnostico': serializeParam(
                                _model.dropDownValue1,
                                ParamType.String,
                                true,
                              ),
                              'tratamiento': serializeParam(
                                _model.dropDownValue2,
                                ParamType.String,
                                true,
                              ),
                              'fechaDiagnostico': serializeParam(
                                null,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 150),
                              ),
                            },
                          );
                        },
                        text: 'Siguiente',
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.5,
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
                          elevation: 5.0,
                          borderSide: const BorderSide(
                            color: Color(0xFF399B22),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(width: 40.0))
                        .around(const SizedBox(width: 40.0)),
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
