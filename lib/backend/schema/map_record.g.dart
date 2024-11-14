// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MapRecord> _$mapRecordSerializer = new _$MapRecordSerializer();

class _$MapRecordSerializer implements StructuredSerializer<MapRecord> {
  @override
  final Iterable<Type> types = const [MapRecord, _$MapRecord];
  @override
  final String wireName = 'MapRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MapRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat_lng',
      serializers.serialize(object.latLng,
          specifiedType: const FullType(LatLng)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType.nullable(Object)])),
    ];

    return result;
  }

  @override
  MapRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MapRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'lat_lng':
          result.latLng = serializers.deserialize(value,
              specifiedType: const FullType(LatLng))! as LatLng;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ]))! as DocumentReference<Object?>;
          break;
      }
    }

    return result.build();
  }
}

class _$MapRecord extends MapRecord {
  @override
  final LatLng latLng;
  @override
  final DocumentReference<Object?> reference;

  factory _$MapRecord([void Function(MapRecordBuilder)? updates]) =>
      (new MapRecordBuilder()..update(updates))._build();

  _$MapRecord._({required this.latLng, required this.reference}) : super._() {
    BuiltValueNullFieldError.checkNotNull(latLng, r'MapRecord', 'latLng');
    BuiltValueNullFieldError.checkNotNull(reference, r'MapRecord', 'reference');
  }

  @override
  MapRecord rebuild(void Function(MapRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MapRecordBuilder toBuilder() => new MapRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MapRecord &&
        latLng == other.latLng &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latLng.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MapRecord')
          ..add('latLng', latLng)
          ..add('reference', reference))
        .toString();
  }
}

class MapRecordBuilder implements Builder<MapRecord, MapRecordBuilder> {
  _$MapRecord? _$v;

  LatLng? _latLng;
  LatLng? get latLng => _$this._latLng;
  set latLng(LatLng? latLng) => _$this._latLng = latLng;

  DocumentReference<Object?>? _reference;
  DocumentReference<Object?>? get reference => _$this._reference;
  set reference(DocumentReference<Object?>? reference) =>
      _$this._reference = reference;

  MapRecordBuilder() {
    MapRecord._initializeBuilder(this);
  }

  MapRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latLng = $v.latLng;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MapRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MapRecord;
  }

  @override
  void update(void Function(MapRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MapRecord build() => _build();

  _$MapRecord _build() {
    final _$result = _$v ??
        new _$MapRecord._(
            latLng: BuiltValueNullFieldError.checkNotNull(
                latLng, r'MapRecord', 'latLng'),
            reference: BuiltValueNullFieldError.checkNotNull(
                reference, r'MapRecord', 'reference'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
