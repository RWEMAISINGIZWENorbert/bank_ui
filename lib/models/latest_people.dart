
class LatestPeople {
   final String img_name;
   final String user_name;

   LatestPeople({
    required this.img_name,
    required this.user_name
   });

  
  static List<LatestPeople> initLatestPeople(){
     List<LatestPeople> data  = [];
   
   data.add(LatestPeople(img_name: 'assets/im.jpg', user_name: 'rwema'));
   data.add(LatestPeople(img_name: 'assets/im.jpg', user_name: 'rwema'));
   data.add(LatestPeople(img_name: 'assets/im.jpg', user_name: 'rwema'));
   data.add(LatestPeople(img_name: 'assets/im.jpg', user_name: 'rwema'));

    return data;
    
  }
}