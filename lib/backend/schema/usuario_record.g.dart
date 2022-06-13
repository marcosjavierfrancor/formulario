// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuarioRecord> _$usuarioRecordSerializer =
    new _$UsuarioRecordSerializer();

class _$UsuarioRecordSerializer implements StructuredSerializer<UsuarioRecord> {
  @override
  final Iterable<Type> types = const [UsuarioRecord, _$UsuarioRecord];
  @override
  final String wireName = 'UsuarioRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsuarioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellido;
    if (value != null) {
      result
        ..add('apellido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.edad;
    if (value != null) {
      result
        ..add('edad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpassword;
    if (value != null) {
      result
        ..add('cpassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UsuarioRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuarioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apellido':
          result.apellido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cpassword':
          result.cpassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsuarioRecord extends UsuarioRecord {
  @override
  final String nombre;
  @override
  final String apellido;
  @override
  final String password;
  @override
  final String edad;
  @override
  final String email;
  @override
  final String cpassword;
  @override
  final DocumentReference<Object> reference;

  factory _$UsuarioRecord([void Function(UsuarioRecordBuilder) updates]) =>
      (new UsuarioRecordBuilder()..update(updates)).build();

  _$UsuarioRecord._(
      {this.nombre,
      this.apellido,
      this.password,
      this.edad,
      this.email,
      this.cpassword,
      this.reference})
      : super._();

  @override
  UsuarioRecord rebuild(void Function(UsuarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuarioRecordBuilder toBuilder() => new UsuarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioRecord &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        password == other.password &&
        edad == other.edad &&
        email == other.email &&
        cpassword == other.cpassword &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombre.hashCode), apellido.hashCode),
                        password.hashCode),
                    edad.hashCode),
                email.hashCode),
            cpassword.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsuarioRecord')
          ..add('nombre', nombre)
          ..add('apellido', apellido)
          ..add('password', password)
          ..add('edad', edad)
          ..add('email', email)
          ..add('cpassword', cpassword)
          ..add('reference', reference))
        .toString();
  }
}

class UsuarioRecordBuilder
    implements Builder<UsuarioRecord, UsuarioRecordBuilder> {
  _$UsuarioRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _apellido;
  String get apellido => _$this._apellido;
  set apellido(String apellido) => _$this._apellido = apellido;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _edad;
  String get edad => _$this._edad;
  set edad(String edad) => _$this._edad = edad;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _cpassword;
  String get cpassword => _$this._cpassword;
  set cpassword(String cpassword) => _$this._cpassword = cpassword;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsuarioRecordBuilder() {
    UsuarioRecord._initializeBuilder(this);
  }

  UsuarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _apellido = $v.apellido;
      _password = $v.password;
      _edad = $v.edad;
      _email = $v.email;
      _cpassword = $v.cpassword;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuarioRecord;
  }

  @override
  void update(void Function(UsuarioRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsuarioRecord build() {
    final _$result = _$v ??
        new _$UsuarioRecord._(
            nombre: nombre,
            apellido: apellido,
            password: password,
            edad: edad,
            email: email,
            cpassword: cpassword,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
