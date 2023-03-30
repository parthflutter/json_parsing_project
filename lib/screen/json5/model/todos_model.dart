class todosModel{
  int? id,userId;
  String?title;

  todosModel({this.id,this.userId,this.title});

  todosModel fromJson(Map m1)
  {
    id=m1['id'];
    userId=m1['userId'];
    title=m1['title'];


    todosModel p1=todosModel(id:id,title:title,userId: userId);
    return p1;
  }
}
