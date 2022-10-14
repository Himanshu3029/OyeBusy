// ignore: file_names
// ignore_for_file: must_be_immutable, file_names, duplicate_ignore

import 'package:app/Conrtoller/PaymentController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Payment extends StatelessWidget {
  PaymentController payment = Get.put(PaymentController());

  Payment({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back)),
              const Text(
                "Payment",
                style: TextStyle(fontSize: 20),
              ),
              const Spacer(),
            ],
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.money_outlined),
            title: Text("Pay after Service (Cash/UPI/Wallet)",
                style: TextStyle(fontSize: 15)),
            trailing: Icon(Icons.arrow_drop_down),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.account_box),
            title: Text("UPI (PhonePay/GooglePay/BHIM)",
                style: TextStyle(fontSize: 15)),
            trailing: Icon(Icons.arrow_drop_down),
          ),
          const Divider(),
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Text(
                "Payment Summary",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const Divider(),
          SizedBox(
            height: 200,
            // width: MediaQuery.of(context).size.width * 0.9,
            child: GetBuilder<PaymentController>(builder: ((controller) {
              return ListView.builder(
                  itemCount: payment.list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(payment.list[index].title,
                          style: TextStyle(fontSize: 14)),
                      subtitle: Text(payment.list[index].subtitle,
                          style: TextStyle(fontSize: 12)),
                      trailing: Text("Rs.${payment.list[index].money}",
                          style: TextStyle(fontSize: 14)),
                    );
                  });
            })),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const ListTile(
            title: Text("Total Amount", style: TextStyle(fontSize: 14)),
            trailing: Text("4500", style: TextStyle(fontSize: 14)),
          ),
          const Spacer(),
          const Divider(),
          ListTile(
            title: const Text("45000"),
            subtitle: const Text(
              "View Detail",
              style: TextStyle(color: Colors.purple),
            ),
            trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                    primary: Colors.purple),
                child: const Text("Pay Now")),
          )
        ],
      ),
    );
  }
}
