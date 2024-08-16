import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:wishlist/app/router.gr.dart';
import 'package:wishlist/features/feature.dart';
import 'package:wishlist/repositories/repositories.dart';
import 'package:wishlist/shared/shared.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _wishListBloc = WishListBloc(GetIt.I<AbstractWishRepository>());

  @override
  void initState() {
    _wishListBloc.add(LoadWishList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void onTapCard(int id) {
      AutoRouter.of(context).push(WishRoute(wishId: id));
    }

    return Scaffold(
      body: CustomRefreshIndicator(
          onRefresh: () async {
            final compliter = Completer();
            _wishListBloc.add(LoadWishList(compliter: compliter));
            return compliter.future;
          },
          child: BlocBuilder(
              bloc: _wishListBloc,
              builder: (context, state) {
                if (state is WishListLoaded) {
                  return GridView.builder(
                    padding: const EdgeInsets.only(
                        top: appBarHeight + 10,
                        left: 10,
                        right: 10,
                        bottom: appBottomNavigationBarHeight),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 2.6,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: state.wishList.length,
                    itemBuilder: (context, index) {
                      final wish = state.wishList[index];

                      return WishCard(
                        wish: wish,
                        onTap: () => onTapCard(wish.id),
                      );
                    },
                  );
                }

                if (state is WishListLoadingError) {
                  return CustomErrorWidget(onUpdate: () {
                    _wishListBloc.add(LoadWishList());
                  });
                }

                return Center(
                    child: CircularProgressIndicator(
                  color: brandColor,
                ));
              })),
    );
  }
}
