class albumModel{
  int? id,userId;
  String?title;

  albumModel({this.id,this.userId,this.title});

  albumModel fromJson(Map m1)
  {
    id=m1['id'];
    userId=m1['userId'];
    title=m1['title'];

    albumModel p1=albumModel(id:id,title:title,userId: userId);
    return p1;
  }
}
