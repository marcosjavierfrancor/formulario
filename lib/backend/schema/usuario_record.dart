import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_record.g.dart';

abstract class UsuarioRecord
    implements Built<UsuarioRecord, UsuarioRecordBuilder> {
  static Serializer<UsuarioRecord> get serializer => _$usuarioRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  String get apellido;

  @nullable
  String get password;

  @nullable
  String get edad;

  @nullable
  String get email;

  @nullable
  String get cpassword;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsuarioRecordBuilder builder) => builder
    ..nombre = ''
    ..apellido = ''
    ..password = ''
    ..edad = ''
    ..email = ''
    ..cpassword = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsuarioRecord._();
  factory UsuarioRecord([void Function(UsuarioRecordBuilder) updates]) =
      _$UsuarioRecord;

  static UsuarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsuarioRecordData({
  String nombre,
  String apellido,
  String password,
  String edad,
  String email,
  String cpassword,
}) =>
    serializers.toFirestore(
        UsuarioRecord.serializer,
        UsuarioRecord((u) => u
          ..nombre = nombre
          ..apellido = apellido
          ..password = password
          ..edad = edad
          ..email = email
          ..cpassword = cpassword));
