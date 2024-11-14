// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'admin_order_status',
      serializers.serialize(object.adminOrderStatus,
          specifiedType: const FullType(String)),
      'customer_order_status',
      serializers.serialize(object.customerOrderStatus,
          specifiedType: const FullType(String)),
      'date_time',
      serializers.serialize(object.dateTime,
          specifiedType: const FullType(DateTime)),
      'time_slot',
      serializers.serialize(object.timeSlot,
          specifiedType: const FullType(String)),
      'service_type',
      serializers.serialize(object.serviceType,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'item_rates',
      serializers.serialize(object.itemRates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'per_item_count',
      serializers.serialize(object.perItemCount,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'total_cost',
      serializers.serialize(object.totalCost,
          specifiedType: const FullType(int)),
      'customer_address',
      serializers.serialize(object.customerAddress,
          specifiedType: const FullType(String)),
      'customer_uid',
      serializers.serialize(object.customerUid,
          specifiedType: const FullType(String)),
      'assigned_worker',
      serializers.serialize(object.assignedWorker,
          specifiedType: const FullType(String)),
      'Document__Reference__Field',
      serializers.serialize(object.reference,
          specifiedType: const FullType(
              DocumentReference, const [const FullType.nullable(Object)])),
    ];

    return result;
  }

  @override
  OrdersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'admin_order_status':
          result.adminOrderStatus = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'customer_order_status':
          result.customerOrderStatus = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date_time':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'time_slot':
          result.timeSlot = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'service_type':
          result.serviceType = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'item_rates':
          result.itemRates.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'per_item_count':
          result.perItemCount.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'total_cost':
          result.totalCost = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'customer_address':
          result.customerAddress = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'customer_uid':
          result.customerUid = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'assigned_worker':
          result.assignedWorker = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$OrdersRecord extends OrdersRecord {
  @override
  final String adminOrderStatus;
  @override
  final String customerOrderStatus;
  @override
  final DateTime dateTime;
  @override
  final String timeSlot;
  @override
  final String serviceType;
  @override
  final BuiltList<String> items;
  @override
  final BuiltList<int> itemRates;
  @override
  final BuiltList<int> perItemCount;
  @override
  final int totalCost;
  @override
  final String customerAddress;
  @override
  final String customerUid;
  @override
  final String assignedWorker;
  @override
  final DocumentReference<Object?> reference;

  factory _$OrdersRecord([void Function(OrdersRecordBuilder)? updates]) =>
      (new OrdersRecordBuilder()..update(updates))._build();

  _$OrdersRecord._(
      {required this.adminOrderStatus,
      required this.customerOrderStatus,
      required this.dateTime,
      required this.timeSlot,
      required this.serviceType,
      required this.items,
      required this.itemRates,
      required this.perItemCount,
      required this.totalCost,
      required this.customerAddress,
      required this.customerUid,
      required this.assignedWorker,
      required this.reference})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        adminOrderStatus, r'OrdersRecord', 'adminOrderStatus');
    BuiltValueNullFieldError.checkNotNull(
        customerOrderStatus, r'OrdersRecord', 'customerOrderStatus');
    BuiltValueNullFieldError.checkNotNull(
        dateTime, r'OrdersRecord', 'dateTime');
    BuiltValueNullFieldError.checkNotNull(
        timeSlot, r'OrdersRecord', 'timeSlot');
    BuiltValueNullFieldError.checkNotNull(
        serviceType, r'OrdersRecord', 'serviceType');
    BuiltValueNullFieldError.checkNotNull(items, r'OrdersRecord', 'items');
    BuiltValueNullFieldError.checkNotNull(
        itemRates, r'OrdersRecord', 'itemRates');
    BuiltValueNullFieldError.checkNotNull(
        perItemCount, r'OrdersRecord', 'perItemCount');
    BuiltValueNullFieldError.checkNotNull(
        totalCost, r'OrdersRecord', 'totalCost');
    BuiltValueNullFieldError.checkNotNull(
        customerAddress, r'OrdersRecord', 'customerAddress');
    BuiltValueNullFieldError.checkNotNull(
        customerUid, r'OrdersRecord', 'customerUid');
    BuiltValueNullFieldError.checkNotNull(
        assignedWorker, r'OrdersRecord', 'assignedWorker');
    BuiltValueNullFieldError.checkNotNull(
        reference, r'OrdersRecord', 'reference');
  }

  @override
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        adminOrderStatus == other.adminOrderStatus &&
        customerOrderStatus == other.customerOrderStatus &&
        dateTime == other.dateTime &&
        timeSlot == other.timeSlot &&
        serviceType == other.serviceType &&
        items == other.items &&
        itemRates == other.itemRates &&
        perItemCount == other.perItemCount &&
        totalCost == other.totalCost &&
        customerAddress == other.customerAddress &&
        customerUid == other.customerUid &&
        assignedWorker == other.assignedWorker &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adminOrderStatus.hashCode);
    _$hash = $jc(_$hash, customerOrderStatus.hashCode);
    _$hash = $jc(_$hash, dateTime.hashCode);
    _$hash = $jc(_$hash, timeSlot.hashCode);
    _$hash = $jc(_$hash, serviceType.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, itemRates.hashCode);
    _$hash = $jc(_$hash, perItemCount.hashCode);
    _$hash = $jc(_$hash, totalCost.hashCode);
    _$hash = $jc(_$hash, customerAddress.hashCode);
    _$hash = $jc(_$hash, customerUid.hashCode);
    _$hash = $jc(_$hash, assignedWorker.hashCode);
    _$hash = $jc(_$hash, reference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersRecord')
          ..add('adminOrderStatus', adminOrderStatus)
          ..add('customerOrderStatus', customerOrderStatus)
          ..add('dateTime', dateTime)
          ..add('timeSlot', timeSlot)
          ..add('serviceType', serviceType)
          ..add('items', items)
          ..add('itemRates', itemRates)
          ..add('perItemCount', perItemCount)
          ..add('totalCost', totalCost)
          ..add('customerAddress', customerAddress)
          ..add('customerUid', customerUid)
          ..add('assignedWorker', assignedWorker)
          ..add('reference', reference))
        .toString();
  }
}

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord? _$v;

  String? _adminOrderStatus;
  String? get adminOrderStatus => _$this._adminOrderStatus;
  set adminOrderStatus(String? adminOrderStatus) =>
      _$this._adminOrderStatus = adminOrderStatus;

  String? _customerOrderStatus;
  String? get customerOrderStatus => _$this._customerOrderStatus;
  set customerOrderStatus(String? customerOrderStatus) =>
      _$this._customerOrderStatus = customerOrderStatus;

  DateTime? _dateTime;
  DateTime? get dateTime => _$this._dateTime;
  set dateTime(DateTime? dateTime) => _$this._dateTime = dateTime;

  String? _timeSlot;
  String? get timeSlot => _$this._timeSlot;
  set timeSlot(String? timeSlot) => _$this._timeSlot = timeSlot;

  String? _serviceType;
  String? get serviceType => _$this._serviceType;
  set serviceType(String? serviceType) => _$this._serviceType = serviceType;

  ListBuilder<String>? _items;
  ListBuilder<String> get items => _$this._items ??= new ListBuilder<String>();
  set items(ListBuilder<String>? items) => _$this._items = items;

  ListBuilder<int>? _itemRates;
  ListBuilder<int> get itemRates =>
      _$this._itemRates ??= new ListBuilder<int>();
  set itemRates(ListBuilder<int>? itemRates) => _$this._itemRates = itemRates;

  ListBuilder<int>? _perItemCount;
  ListBuilder<int> get perItemCount =>
      _$this._perItemCount ??= new ListBuilder<int>();
  set perItemCount(ListBuilder<int>? perItemCount) =>
      _$this._perItemCount = perItemCount;

  int? _totalCost;
  int? get totalCost => _$this._totalCost;
  set totalCost(int? totalCost) => _$this._totalCost = totalCost;

  String? _customerAddress;
  String? get customerAddress => _$this._customerAddress;
  set customerAddress(String? customerAddress) =>
      _$this._customerAddress = customerAddress;

  String? _customerUid;
  String? get customerUid => _$this._customerUid;
  set customerUid(String? customerUid) => _$this._customerUid = customerUid;

  String? _assignedWorker;
  String? get assignedWorker => _$this._assignedWorker;
  set assignedWorker(String? assignedWorker) =>
      _$this._assignedWorker = assignedWorker;

  DocumentReference<Object?>? _reference;
  DocumentReference<Object?>? get reference => _$this._reference;
  set reference(DocumentReference<Object?>? reference) =>
      _$this._reference = reference;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adminOrderStatus = $v.adminOrderStatus;
      _customerOrderStatus = $v.customerOrderStatus;
      _dateTime = $v.dateTime;
      _timeSlot = $v.timeSlot;
      _serviceType = $v.serviceType;
      _items = $v.items.toBuilder();
      _itemRates = $v.itemRates.toBuilder();
      _perItemCount = $v.perItemCount.toBuilder();
      _totalCost = $v.totalCost;
      _customerAddress = $v.customerAddress;
      _customerUid = $v.customerUid;
      _assignedWorker = $v.assignedWorker;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersRecord build() => _build();

  _$OrdersRecord _build() {
    _$OrdersRecord _$result;
    try {
      _$result = _$v ??
          new _$OrdersRecord._(
              adminOrderStatus: BuiltValueNullFieldError.checkNotNull(
                  adminOrderStatus, r'OrdersRecord', 'adminOrderStatus'),
              customerOrderStatus: BuiltValueNullFieldError.checkNotNull(
                  customerOrderStatus, r'OrdersRecord', 'customerOrderStatus'),
              dateTime: BuiltValueNullFieldError.checkNotNull(
                  dateTime, r'OrdersRecord', 'dateTime'),
              timeSlot: BuiltValueNullFieldError.checkNotNull(
                  timeSlot, r'OrdersRecord', 'timeSlot'),
              serviceType: BuiltValueNullFieldError.checkNotNull(
                  serviceType, r'OrdersRecord', 'serviceType'),
              items: items.build(),
              itemRates: itemRates.build(),
              perItemCount: perItemCount.build(),
              totalCost: BuiltValueNullFieldError.checkNotNull(
                  totalCost, r'OrdersRecord', 'totalCost'),
              customerAddress: BuiltValueNullFieldError.checkNotNull(
                  customerAddress, r'OrdersRecord', 'customerAddress'),
              customerUid: BuiltValueNullFieldError.checkNotNull(
                  customerUid, r'OrdersRecord', 'customerUid'),
              assignedWorker: BuiltValueNullFieldError.checkNotNull(assignedWorker, r'OrdersRecord', 'assignedWorker'),
              reference: BuiltValueNullFieldError.checkNotNull(reference, r'OrdersRecord', 'reference'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
        _$failedField = 'itemRates';
        itemRates.build();
        _$failedField = 'perItemCount';
        perItemCount.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrdersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
