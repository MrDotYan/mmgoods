import "package:lottie/lottie.dart";
import 'package:flutter/material.dart';

class LottieAnimation extends StatelessWidget {
  const LottieAnimation({super.key, this.type = 'loading'});

  final String type;

  Widget _buildAnimation(String type) {
    switch (type) {
      case 'loading':
        return Lottie.asset('lib/assets/lottie/loading.json');
      case 'file_empty':
        return Lottie.asset('lib/assets/lottie/file_empty.json');
      case 'no_coupon':
        return Lottie.asset('lib/assets/lottie/no_coupon.json');
      case 'no_wifi':
        return Lottie.asset('lib/assets/lottie/no_wifi.json');
      case 'no_friend_request':
        return Lottie.asset('lib/assets/lottie/no_friend_request.json');
      case 'no_message':
        return Lottie.asset('lib/assets/lottie/no_message.json');
      // /no_search_result
      case 'no_search_result':
        return Lottie.asset('lib/assets/lottie/no_search_result.json');
      //no_login
      case 'no_login':
        return Lottie.asset('lib/assets/lottie/no_login.json');
      case 'no_goods':
        return Lottie.asset('lib/assets/lottie/no_goods.json');
      //no_goods
      //no_search_result_content
      case 'no_search_result_content':
        return Lottie.asset('lib/assets/lottie/no_search_result_content.json');
      case 'no_network_link':
        return Lottie.asset('lib/assets/lottie/no_network_link.json');
      //no_network_link
      case 'no_order_list':
        return Lottie.asset('lib/assets/lottie/no_order_list.json');
      // no_order_list
      case 'get_order_success':
        return Lottie.asset('lib/assets/lottie/get_order_success.json');
      // get_order_success
      //no_address
      case 'no_address':
        return Lottie.asset('lib/assets/lottie/no_address.json');
      //page_refresh_fail
      case 'page_refresh_fail':
        return Lottie.asset('lib/assets/lottie/page_refresh_fail.json');
      default:
        return Lottie.asset('lib/assets/lottie/loading.json');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildAnimation(type),
    );
  }
}
