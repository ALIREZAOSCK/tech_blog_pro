class HashTagModel{

  String title ;

  HashTagModel({required this.title});
}

List<HashTagModel> selectedTags = [];

class BlogModel{
  late int id;
  late String imageUrl;
  late String title;
  late String writer;
  late String writerImageUrl;
  late String date;
  late String content;
  late String views;

  BlogModel(
    {
      required this.id,
      required this.imageUrl,
      required this.title,
      required this.writer,
      required this.writerImageUrl,
      required this.date,
      required this.content,
      required this.views,
      }
      );
}
