// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PricingRecord> _$pricingRecordSerializer =
    new _$PricingRecordSerializer();

class _$PricingRecordSerializer implements StructuredSerializer<PricingRecord> {
  @override
  final Iterable<Type> types = const [PricingRecord, _$PricingRecord];
  @override
  final String wireName = 'PricingRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PricingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cloths_list',
      serializers.serialize(object.clothsList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'cloths_price_list',
      serializers.serialize(object.clothsPriceList,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType.nullable(Object)])),
    ];

    return result;
  }

  @override
  PricingRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PricingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cloths_list':
          result.clothsList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'cloths_price_list':
          result.clothsPriceList.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
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

class _$PricingRecord extends PricingRecord {
  @override
  final BuiltList<String> clothsList;
  @override
  final BuiltList<int> clothsPriceList;
  @override
  final DocumentReference<Object?> reference;

  factory _$PricingRecord([void Function(PricingRecordBuilder)? updates]) =>
      (new PricingRecordBuilder()..update(updates))._build();

  _$PricingRecord._(
      {required this.clothsList,
      required this.clothsPriceList,
      required this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        clothsList, r'PricingRecord', 'clothsList');
    BuiltValueNullFieldError.checkNotNull(
        clothsPriceList, r'PricingRecord', 'clothsPriceList');
    BuiltValueNullFieldError.checkNotNull(
        reference, r'PricingRecord', 'reference');
  }

  @override
  PricingRecord rebuild(void Function(PricingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PricingRecordBuilder toBuilder() => new PricingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PricingRecord &&
        clothsList == other.clothsList &&
        clothsPriceList == other.clothsPriceList &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clothsList.hashCode);
    _$hash = $jc(_$hash, clothsPriceList.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PricingRecord')
          ..add('clothsList', clothsList)
          ..add('clothsPriceList', clothsPriceList)
          ..add('reference', reference))
        .toString();
  }
}

class PricingRecordBuilder
    implements Builder<PricingRecord, PricingRecordBuilder> {
  _$PricingRecord? _$v;

  ListBuilder<String>? _clothsList;
  ListBuilder<String> get clothsList =>
      _$this._clothsList ??= new ListBuilder<String>();
  set clothsList(ListBuilder<String>? clothsList) =>
      _$this._clothsList = clothsList;

  ListBuilder<int>? _clothsPriceList;
  ListBuilder<int> get clothsPriceList =>
      _$this._clothsPriceList ??= new ListBuilder<int>();
  set clothsPriceList(ListBuilder<int>? clothsPriceList) =>
      _$this._clothsPriceList = clothsPriceList;

  DocumentReference<Object?>? _reference;
  DocumentReference<Object?>? get reference => _$this._reference;
  set reference(DocumentReference<Object?>? reference) =>
      _$this._reference = reference;

  PricingRecordBuilder() {
    PricingRecord._initializeBuilder(this);
  }

  PricingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clothsList = $v.clothsList.toBuilder();
      _clothsPriceList = $v.clothsPriceList.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PricingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PricingRecord;
  }

  @override
  void update(void Function(PricingRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PricingRecord build() => _build();

  _$PricingRecord _build() {
    _$PricingRecord _$result;
    try {
      _$result = _$v ??
          new _$PricingRecord._(
              clothsList: clothsList.build(),
              clothsPriceList: clothsPriceList.build(),
              reference: BuiltValueNullFieldError.checkNotNull(
                  reference, r'PricingRecord', 'reference'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clothsList';
        clothsList.build();
        _$failedField = 'clothsPriceList';
        clothsPriceList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PricingRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
