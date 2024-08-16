import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:wishlist/features/feature.dart';
import 'package:wishlist/repositories/repositories.dart';
import 'package:wishlist/shared/shared.dart';

@RoutePage()
class WishScreen extends StatefulWidget {
  final int wishId;

  const WishScreen({super.key, required this.wishId});

  @override
  State<WishScreen> createState() => _WishItemState();
}

class _WishItemState extends State<WishScreen> {
  final _wishItemBloc = WishItemBloc(GetIt.I<AbstractWishRepository>());

  @override
  void initState() {
    _wishItemBloc.add(LoadWishItem(wishId: widget.wishId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('WISH ITEM'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              AutoRouter.of(context).back();
            },
          ),
        ),
        body: CustomRefreshIndicator(
          onRefresh: () async {
            final compliter = Completer();
            _wishItemBloc
                .add(LoadWishItem(wishId: widget.wishId, compliter: compliter));
            return compliter.future;
          },
          child: BlocBuilder(
              bloc: _wishItemBloc,
              builder: (context, state) {
                if (state is WishItemLoaded) {
                  return ListView(
                    children: [
                      Center(
                        child: WishItem(wish: state.wishItem),
                      )
                    ],
                  );
                }
                if (state is WishItemLoadingError) {}

                return Center(
                    child: CircularProgressIndicator(
                  color: brandColor,
                ));
              }),
        ));
  }
}
