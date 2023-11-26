class BannerModel {
  String? imageUrl;
  String? title;
  String? discount;

  BannerModel({this.title, this.imageUrl, this.discount});
}

List<BannerModel> banners = [
  BannerModel(

    imageUrl:
    'assets/f7395f1d78e8665f814d1663ab21d77d.jpg',
  ),
  BannerModel(

    imageUrl:
    'assets/8aeab0ddc7bb31b9cd2433d26d331388.jpg',
  ),
];