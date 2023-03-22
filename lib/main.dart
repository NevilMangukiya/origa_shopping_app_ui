// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:origa/views/screens/bottom_navigation_bar/account_screens/address_screens/add_new_address.dart';
import 'package:origa/views/screens/bottom_navigation_bar/account_screens/address_screens/address_location_page(62).dart';
import 'package:origa/views/screens/bottom_navigation_bar/account_screens/address_screens/address_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/account_screens/edit_profile_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/account_screens/orders_screens/order_details_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/account_screens/settings_page/change_password_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/account_screens/settings_page/my_favorites_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/account_screens/settings_page/settings_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/active_pages/active_circle_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/active_pages/active_circle_page2.dart';
import 'package:origa/views/screens/bottom_navigation_bar/communities_screens/create_community_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/communities_screens/edit_community_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/communities_screens/family_group_page(73).dart';
import 'package:origa/views/screens/bottom_navigation_bar/communities_screens/group_members_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/communities_screens/invite_communities_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/communities_screens/invite_people_page.dart';
import 'package:origa/views/screens/bottom_navigation_bar/hot_deal_page.dart';
import 'package:origa/views/screens/cart_screens/cart_details_page.dart';
import 'package:origa/views/screens/cart_screens/cart_page.dart';
import 'package:origa/views/screens/cart_screens/checkout_page.dart';
import 'package:origa/views/screens/cart_screens/cod_page.dart';
import 'package:origa/views/screens/cart_screens/trasansaction_success_page.dart';
import 'package:origa/views/screens/category_screens/category_details_page.dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/Page_67.dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/active_circle_page(45).dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/change_circle_page(66).dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/create_circle_page(53).dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/filter_page(41).dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/grocery_category(40).dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/grocery_details_page(43).dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/group_circle_2022(47).dart';
import 'package:origa/views/screens/category_screens/grocery_categroy_screens/success_page(69).dart';
import 'package:origa/views/screens/intro_screens/intro_1.dart';
import 'package:origa/views/screens/login_screens/complete_profile_page.dart';
import 'package:origa/views/screens/login_screens/reset_password_page.dart';
import 'package:origa/views/screens/login_screens/verify_page.dart';
import 'package:origa/views/screens/menu_page.dart';
import 'models/search.dart';
import 'views/screens/bottom_navigation_bar/account_screens/my_wallet_page.dart';
import 'views/screens/bottom_navigation_bar/account_screens/orders_screens/my_orders_page.dart';
import 'views/screens/bottom_navigation_bar/top_products_screens.dart';
import 'views/screens/cart_screens/creti_card_page.dart';
import 'views/screens/category_screens/grocery_details_page.dart';
import 'views/screens/home_page.dart';
import 'views/screens/login_screens/forgot_password_page.dart';
import 'views/screens/login_screens/login_choice_page.dart';
import 'views/screens/login_screens/login_page.dart';
import 'views/screens/notification_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      routes: {
        '/': (context) => HomePage(),
        'search_page': (context) => SearchPage(),
        'intro_page1': (context) => IntroPage1(),
        'login_choice_page': (context) => LoginChoicePage(),
        'login_page': (context) => LoginPage(),
        'verify_account': (context) => VerifyPage(),
        'complete_profile_page': (context) => ProfilePage(),
        'forgot_password_page': (context) => ForgotPasswordPage(),
        'reset_password_page': (context) => ResetPage(),
        'menu_page': (context) => MenuPage(),
        'top_products_screen': (context) => TopProductScreen(),
        // 'maps_page': (context) => CurrentLocationScreen(),
        // 'maps_style_page': (context) => GoolgeMapStyling(),
        'active_circle_page': (context) => ActiveCirclePage(),
        'circle_page2': (context) => ActivePage2(),
        'category_details_page': (context) => CategoryDetailsPage(),
        'grocery_details_page': (context) => GroceryDetailPage(),
        'notification_page': (context) => NotificationPage(),
        'wallet_page': (context) => WalletPage(),
        'edit_profile_page': (context) => EditProfilePage(),
        'my_orders_page': (context) => MyOrderPage(),
        'orders_details_page': (context) => OrderDetailsPage(),
        'cart_page': (context) => CartPage(),
        'cart_details_page': (context) => CartDetailsPage(),
        'checkout_page': (context) => CheckOutPage(),
        'credit_card_page': (context) => CreditCardPage(),
        'cod_page': (context) => CODPage(),
        'transaction_page': (context) => TransactionPage(),
        'hot_deal_page': (context) => HotDealPage(),
        'grocery_category_page': (context) => GroceryCategoryPage(),
        'filter_page': (context) => FilterPage(),
        'grocery_details_page43': (context) => GroceryDetailPage2(),
        'active_circle_page45': (context) => ActiveCirclePage45(),
        'group_circle_2022': (context) => GroupCirclePage(),
        'create_circle_page': (context) => CreateCirclePage(),
        'settings_page': (context) => SettingsPage(),
        'address_page': (context) => AddressPage(),
        'address_location_page': (context) => AddressLocationPage(),
        'add_new_address_page': (context) => AddNewAddressPage(),
        'my_favorites_page': (context) => MyFavoritesPage(),
        'change_password_page': (context) => ChangePasswordPage(),
        'change_circle_page': (context) => ChangeCirclePage(),
        'page(67)': (context) => Page67(),
        'success_page': (context) => SuccessPage69(),
        'create_community_page': (context) => CreateCommunityPage(),
        'family_group_page': (context) => FamilyGroupPage(),
        'group_members_page': (context) => GroupMembersPage(),
        'invite_people_page': (context) => InvitePeoplePage(),
        'edit_community_page': (context) => EditCommunityPage(),
        'invite_communities_page': (context) => InviteCommunitiesPage(),
      },
    ),
  );
}