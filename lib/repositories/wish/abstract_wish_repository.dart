import '../repositories.dart';

abstract class AbstractWishRepository {
  Future<List<Wish>> getWishList();

  Future<Wish> getWish(int id);

  Future<Wish> createWish(Wish wish);
}
