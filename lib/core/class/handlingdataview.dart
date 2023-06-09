import 'package:ecommarce/core/class/statusrequest.dart';
import 'package:flutter/material.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(child: Text("Loading"))
        : statusRequest == StatusRequest.offlinefailure
            ? const Center(child: Text("Offline Failure"))
            : statusRequest == StatusRequest.serverfailure
                ? const Center(child: Text("Server Failure"))
                : statusRequest == StatusRequest.failure
                    ? const Center(
                        child: Text(
                        "No Data",
                        style: TextStyle(fontSize: 30),
                      ))
                    : widget;
  }
}
