





import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      theme: ThemeData(primarySwatch: Colors.pink),
      home:  ProfileDetails(),
    );
   
    }}
    class ProfileDetails extends StatefulWidget {
   
    
      @override
      _ProfileDetailsState createState() => _ProfileDetailsState();
    }
    
    class _ProfileDetailsState extends State<ProfileDetails>
    
 {
  
//    File? pickedImage; 

// pickImage(ImageSource imageType) async {
    
//       final photo = await ImagePicker().pickImage(source: imageType);
//       if (photo == null) return;
//       final tempImage = File(photo.path);
//       setState(() {
//         pickedImage = tempImage;
//       });

     
//   }



     
   bool isObscurePassword=true;
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar:PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
            
              title: Center(
                child: Text('Profile Details',style: TextStyle(
                  color: Colors.pinkAccent, 
                  ),
                ),
              ),
               backgroundColor: Colors.white,
          
              )
                
              
              
            ),



            
            body: Container(
              padding: EdgeInsets.only(left: 15,top: 20,right: 15),
              child: GestureDetector(
                onTap: (){
                  FocusScope.of(context).unfocus();
                },
                child: ListView(
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width:130 ,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(width:4,color:Colors.white),
                              boxShadow: [
                                BoxShadow(
                                  
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1)
                                )
                              ],
shape: BoxShape.circle,
image: DecorationImage(
  fit: BoxFit.cover,
  
  image:
  //  pickedImage !=null?Image.file(pickedImage!);  
    AssetImage   ('womyn3.jpg')),


                            ),
                          ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 4,
                      color: Colors.white
                    ),
                    color: Colors.pinkAccent
                  ) ,
                  child:InkWell(
                    onTap: (){
                      showModalBottomSheet(context: context, builder: (builder)=> bottomsheet());
 },
                    child: Icon(
                      Icons.camera_enhance,
                      color: Colors.white,
                      
                    ),
                  ) ,
                ))
                        ],
                        
                      ),
                    
                    ),
                    SizedBox(height:20),
              buildTextField("Full Name", "Alexa", false),
               buildTextField("Email", "Alexa@abc.com", false),
                buildTextField("Address", "your city", false),
                  buildTextField("About", "Type something about yourself....", false),
                    
                   ElevatedButton(onPressed: (){}, 
                   child: Text("UPDATE" , style: TextStyle(fontWeight:FontWeight.bold,fontSize: 30 ),),
                   )
                    
                  ],
                ),
              ),
            ),

          );
  
      }





}





      Widget bottomsheet(){
return Container(
  height: 100.0,
  
  margin: EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 20,
  ),
  child: Column(
    children:<Widget> [
      Text(
        "choose profile photo",
        style: TextStyle(
          fontSize: 20.0,
          
        ),
        
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
TextButton.icon(onPressed: (){
//  this.pickImage(ImageSource.camera);
}, icon:Icon(Icons.camera), label:Text("Camera")
),
          TextButton.icon(onPressed: (){
        //  this.pickImage(ImageSource.gallery);
          }, icon: Icon(Icons.image), label:Text("Gallery"))
        ],
      )
    ],
  ),


);



      }
  Widget buildTextField(String labelText, String placeholder, bool isPasswordTextField){
  return Padding(padding: EdgeInsets.only(bottom: 30),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:<Widget> [
      
      TextField(

        cursorColor: Colors.pinkAccent,

decoration: InputDecoration(
 
      labelText:labelText,
      labelStyle: TextStyle(
color: Colors.pinkAccent,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: placeholder,

      hintStyle: TextStyle(
        fontSize: 15,
         fontWeight: FontWeight.bold,
         color: Colors.grey,
      )

),
      ),
    ],
    
  ),
 
  );
  
  
  
//   return Padding(padding: EdgeInsets.only(bottom: 30),
//     child:Column(
//       children: <Widget>[
//         TextFormField(
//           controller: TextEditingController(),
//           decoration: new InputDecoration(
//             fillColor: Colors.pinkAccent,
//             focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color:Colors.pinkAccent,width:2.0 ),
//               borderRadius: BorderRadius.circular(25.0),
              

            
//             ),
//               labelText:'enter name'
//           ),
//           keyboardType: TextInputType.name,

//         ),
//         SizedBox(height: 20,),
//           TextFormField(
//           controller: TextEditingController(),
//           decoration: new InputDecoration(
//             fillColor: Colors.pinkAccent,
//             focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color:Colors.pinkAccent,width:2.0 ),
//               borderRadius: BorderRadius.circular(25.0),
              

            
//             ),
//               labelText:'enter email id'
//           ),
//           keyboardType: TextInputType.emailAddress,

//         ),
//         SizedBox(height: 20,),
//  TextFormField(
//           controller: TextEditingController(),
//           decoration: new InputDecoration(
//             fillColor: Colors.pinkAccent,
//             focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color:Colors.pinkAccent,width:2.0 ),
//               borderRadius: BorderRadius.circular(25.0),
              

            
//             ),
//               labelText:'your address'
//           ),
//           keyboardType: TextInputType.streetAddress,

//         ),
//         SizedBox(height: 20,),

//       ],
//     ) ,
    
    
//     );
  }
      
    

