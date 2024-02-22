import 'quationTest.dart';
 class Qut {
int Question_num=0;
   List<Qtest>_GROUPqution = [
     Qtest(
       Qt: 'Saturn’s rings are composed primarily of ice and rock particles',
       Qi: 'images/img-1.jpg',
       Qa: true,
     ),
     Qtest(
         Qt: 'Lions are the only cat species that roar.',
         Qi: 'images/img-2.jpg',
         Qa: true
     ),
     Qtest(
         Qt: 'There are approximately 20,000 species of spiders in the United States',
         Qi: 'images/img-3.jpg',
         Qa: false
     ),
     Qtest(
         Qt: 'Less than five percent of the planet’s oceans have actually been explored',
         Qi: 'images/img-4.jpg',
         Qa: true

     ),
     Qtest(
         Qt: 'Butterflies taste things with their wings',
         Qi: 'images/img-5.jpg',
         Qa: false
     ),
     Qtest(
         Qt: 'Scotland’s national animal is a unicorn.',
         Qi: 'images/img-6.jpg',
         Qa: true
     ),
     Qtest(
         Qt: 'he sun is not a star',
         Qi: 'images/img-7.jpg',
         Qa: false
     ),
     Qtest(
         Qt: 'Sharks are mammals',
         Qi: 'images/img-8.jpg',
         Qa: false
     )

   ];
   void next(){
     if(Question_num<_GROUPqution.length-1){
       Question_num++;}}
   String GetqutTX()
   {
     return _GROUPqution[Question_num].qutionTEST;
   }
String GetqutIM()
{
  return _GROUPqution[Question_num].quationIMG;
}
bool GetqutAR(){

  return _GROUPqution[Question_num].quationANSWER;
}
bool Iffinsh(){
if(Question_num >=_GROUPqution.length-1){
  return true;

}
else{
  return false;
}
}
void agin(){
     Question_num=0;
}
   }


