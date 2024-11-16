import 'package:flutter/material.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../ongoing_delivered_to_customer/ongoing_delivered_to_customer_widget.dart';
import '../ongoing_delivered_to_laundry/ongoing_delivered_to_laundry_widget.dart';
import '../pickup_order_details/pickup_order_details_widget.dart';

class PackedOrdersWidget extends StatefulWidget {
  const PackedOrdersWidget({Key? key}) : super(key: key);

  @override
  _PackedOrdersWidgetState createState() => _PackedOrdersWidgetState();
}

class _PackedOrdersWidgetState extends State<PackedOrdersWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 50, 0),
                      child: InkWell(
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Color(0xFF1F4444),
                          size: 24,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                        child: Text(
                          'Packed Orders',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Lato',
                            color: Color(0xFF073131),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: StreamBuilder<List<OrdersRecord>>(
                      stream: queryOrdersRecord(
                          queryBuilder: (obj) => obj.where('admin_order_status', isEqualTo: "Packed").where('assigned_worker', isNull: true)),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.primaryColor,
                              ),
                            ),
                          );
                        }

                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }

                        if (currentUserDocument.acceptedOrder != null && currentUserDocument.acceptedOrder != "") {
                          OrdersRecord.getDocumentOnce(OrdersRecord.collection.doc(currentUserDocument.acceptedOrder))
                              .then((ordersRecord) => Future.delayed(
                                  Duration.zero,
                                  () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => (ordersRecord.adminOrderStatus == '' || ordersRecord.adminOrderStatus == null)
                                                ? OngoingDeliveredToLaundryWidget(
                                                    documentReference: OrdersRecord.collection.doc(currentUserDocument.acceptedOrder),
                                                  )
                                                : (ordersRecord.adminOrderStatus == 'Packed')
                                                    ? PickupOrderDetailsWidget(
                                                        documentReference: OrdersRecord.collection.doc(currentUserDocument.acceptedOrder) as DocumentReference<Object>)
                                                    : (ordersRecord.adminOrderStatus == 'OutForDelivery')
                                                        ? OngoingDeliveredToCustomerWidget(
                                                            documentReference: OrdersRecord.collection.doc(currentUserDocument.acceptedOrder) as DocumentReference<Object>)
                                                        : ordersRecord.adminOrderStatus == 'Received' && ordersRecord.assignedWorker == currentUserUid
                                                            ? OngoingDeliveredToLaundryWidget(documentReference: ordersRecord.reference)
                                                            : Container(
                                                                child: Text('Something Went Wrong'),
                                                              )),
                                      )));
                          return Container();
                        }

                        List<OrdersRecord> _ordersRecords = snapshot.data!;

                        if (currentUserDocument.acceptedOrder == null || currentUserDocument.acceptedOrder == "") {
                          return ListView.builder(
                            itemCount: _ordersRecords.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    height: MediaQuery.of(context).size.height * 0.16,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.9,
                                          height: MediaQuery.of(context).size.height * 0.05,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                  child: Text(
                                                    'Order Id :    ${_ordersRecords[index].reference.id}',
                                                    style: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Open Sans',
                                                      color: FlutterFlowTheme.primaryColor,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                                                  child: Text(
                                                    'Rp.${_ordersRecords[index].totalCost}',
                                                    style: FlutterFlowTheme.bodyText1.override(
                                                      fontFamily: 'Lato',
                                                      color: Color(0xFF818181),
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          thickness: 0.5,
                                          color: Color(0xFF818181),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                              child: Text(
                                                '${DateFormat('dd-MM-yyyy').format(_ordersRecords[index].dateTime)}   |  ${_ordersRecords[index].timeSlot}',
                                                style: FlutterFlowTheme.bodyText1.override(
                                                  fontFamily: 'Lato',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => PickupOrderDetailsWidget(
                                                    documentReference: _ordersRecords[index].reference,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              'View Order Details',
                                              style: FlutterFlowTheme.bodyText1.override(
                                                fontFamily: 'Lato',
                                                color: FlutterFlowTheme.secondaryColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }

                        Future.delayed(Duration.zero, () => Navigator.pop(context));
                        return Container();
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
