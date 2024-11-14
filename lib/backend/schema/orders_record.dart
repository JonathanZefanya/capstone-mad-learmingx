import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @BuiltValueField(wireName: 'admin_order_status')
  String get adminOrderStatus;

  @BuiltValueField(wireName: 'customer_order_status')
  String get customerOrderStatus;

  @BuiltValueField(wireName: 'date_time')
  DateTime get dateTime;

  @BuiltValueField(wireName: 'time_slot')
  String get timeSlot;

  @BuiltValueField(wireName: 'service_type')
  String get serviceType;

  BuiltList<String> get items;

  @BuiltValueField(wireName: 'item_rates')
  BuiltList<int> get itemRates;

  @BuiltValueField(wireName: 'per_item_count')
  BuiltList<int> get perItemCount;

  @BuiltValueField(wireName: 'total_cost')
  int get totalCost;

  @BuiltValueField(wireName: 'customer_address')
  String get customerAddress;

  @BuiltValueField(wireName: 'customer_uid')
  String get customerUid;

  @BuiltValueField(wireName: 'assigned_worker')
  String get assignedWorker;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..adminOrderStatus = ''
    ..customerOrderStatus = ''
    ..timeSlot = ''
    ..serviceType = ''
    ..items = ListBuilder()
    ..itemRates = ListBuilder()
    ..perItemCount = ListBuilder()
    ..totalCost = 0
    ..customerAddress = ''
    ..customerUid = ''
    ..assignedWorker;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdersRecordData({
  adminOrderStatus,
  String? customerOrderStatus,
  DateTime? dateTime,
  String? timeSlot,
  String? serviceType,
  int? totalCost,
  String? customerAddress,
  String? customerUid,
  ListBuilder<String>? items,
  ListBuilder<int>? itemRates,
  ListBuilder<int>? perItemCount,
  String? assignedWorker,
}) =>
    serializers.toFirestore(
        OrdersRecord.serializer,
        OrdersRecord((o) => o
          ..adminOrderStatus = adminOrderStatus
          ..customerOrderStatus = customerOrderStatus
          ..dateTime = dateTime
          ..timeSlot = timeSlot
          ..serviceType = serviceType
          ..items = items
          ..itemRates = itemRates
          ..perItemCount = perItemCount
          ..totalCost = totalCost
          ..customerAddress = customerAddress
          ..customerUid = customerUid
          ..assignedWorker = assignedWorker));
