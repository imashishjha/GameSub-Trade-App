import 'package:amazon_clone_updated/constant/global_variable.dart';
import 'package:amazon_clone_updated/features/account/widget/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  List list=[
     {
      'image': 'https://sm.ign.com/t/ign_in/screenshot/default/valorant-jett-valorant_2zbp.h720.jpg',
      'text':  'Valorant',
      'status': 'Active',
       'color': 'green'
     },
     {
      'image': 'https://images.news18.com/ibnlive/uploads/2021/10/amazon-prime-16337567583x2.jpg',
      'text':  'Amazon Prime',
      'status':'Expired',
      'color': 'red'
     },
     {
      'image': 'https://thebridge.in/wp-content/uploads/2020/09/PUBG-Mobile-feature-final.jpg',
       'text':  'PUBG Mobile',
       'status': 'Active',
       'color': 'green'
     },
     {
      'image': 'https://techunwrapped.com/wp-content/uploads/2022/01/1643059992_453_Netflix-price-catalog-which-subscription-to-choose-Know-everything.jpg',
      'text':  'Netflix',
      'status': 'Expired',
      'color': 'red'
     },
  ];
  // List<Order>? orders;
  // final AccountServices accountServices = AccountServices();

  @override
  void initState() {
    super.initState();
    // fetchOrders();
  }

  // void fetchOrders() async {
  //   orders = await accountServices.fetchMyOrders(context: context);
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    // var globalVariables = GlobalVariables;
    // return orders == null
    //     ? const Loader()
    //     : 
       return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: const Text(
                      'Account Buyouts:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      right: 15,
                    ),
                    child: const Text(
                      'See all',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              // display orders
             Container(
               height: 170,
               padding: const EdgeInsets.only(left: 10, right: 0, top: 20),
               child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                   return Column(
                     children: [
                       SingleProduct(
                        image: list[index]['image'],
                        name: list[index]['text'],
                        status: list[index]['status'],
                        ),
                     ],
                   );
               }),
               ),
        
            ],
          );
  }
}