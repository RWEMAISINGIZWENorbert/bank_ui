
class LatestPeople {
   final String imgName;
   final String userName;

   LatestPeople({
    required this.imgName,
    required this.userName
   });

  
  static List<LatestPeople> initLatestPeople(){
     List<LatestPeople> data  = [];
   
   data.add(LatestPeople(imgName: 'assets/im.jpg', userName: 'rwema'));
   data.add(LatestPeople(imgName: 'assets/im.jpg', userName: 'rwema'));
   data.add(LatestPeople(imgName: 'assets/im.jpg', userName: 'rwema'));
   data.add(LatestPeople(imgName: 'assets/im.jpg', userName: 'rwema'));

    return data;
    
  }
}