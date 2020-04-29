int Posx1= 150;
int Posy1= 50;
int Posx2= 50;
int Posy2= 150;
int Posx3= 250;
int Posy3= 250;
int Posx4= 275;
int Posy4= 75;
int Posx5= 150;
int Posy5= 200;
int Posx6= 225;
int Posy6= 150;
int Posx7= 113;
int Posy7= 262;
float angulo1, angulo2, angulo3, angulo4, angulo5, angulo6, angulo7= 0;
int control=0;
boolean espejo;
PImage image;
boolean toggle;

void setup() {
  size(900, 600);
  image=loadImage("imagen2.png");
}


void draw() {
  background(205);
  tint(0);
  image(image,400,20,415,485.738);
  //if(toggle){
  //  negative();
  //}
  noStroke();
  fill(235, 122, 52);
  transladar();
  triangulo_1();
  triangulo_2();
  triangulo_3();
  triangulo_4();
  triangulo_5();
  cuadrado();
  paralelogramo();
}

void keyReleased(){
  if((dist(Posx1,Posy1,mouseX,mouseY)<20) && (keyPressed)){ 
    if (key=='j'){
     angulo1 = angulo1 + radians(15);
     delay(100);
     }
    if (key=='l'){
     angulo1 = angulo1 - radians(15);
     delay(100);
    }  
  }
  if((dist(Posx2,Posy2,mouseX,mouseY)<20) && (keyPressed)){ 
    if (key=='j'){
     angulo2 = angulo2 + radians(15);
     delay(100);
     }
    if (key=='l'){
     angulo2 = angulo2 - radians(15);
     delay(100);
    }  
  }
  if((dist(Posx3,Posy3,mouseX,mouseY)<20) && (keyPressed)){ 
    if (key=='j'){
     angulo3 = angulo3 + radians(15);
     delay(100);
     }
    if (key=='l'){
     angulo3 = angulo3 - radians(15);
     delay(100);
    }  
  }
  if((dist(Posx4,Posy4,mouseX,mouseY)<20) && (keyPressed)){ 
    if (key=='j'){
     angulo4 = angulo4 + radians(15);
     delay(100);
     }
    if (key=='l'){
     angulo4 = angulo4 - radians(15);
     delay(100);
    }  
  }
  if((dist(Posx5,Posy5,mouseX,mouseY)<20) && (keyPressed)){ 
    if (key=='j'){
     angulo5 = angulo5 + radians(15);
     delay(100);
     }
    if (key=='l'){
     angulo5 = angulo5 - radians(15);
     delay(100);
    }  
  }
  if((dist(Posx6,Posy6,mouseX,mouseY)<20) && (keyPressed)){ 
    if (key=='j'){
     angulo6 = angulo6 + radians(15);
     delay(100);
     }
    if (key=='l'){
     angulo6 = angulo6 - radians(15);
     delay(100);
    }  
  }
  if((dist(Posx7,Posy7,mouseX,mouseY)<20) && (keyPressed)){ 
    if (key=='j'){
     angulo7 = angulo7 + radians(15);
     delay(100);
     }
    if (key=='l'){
      angulo7 = angulo7 - radians(15);
      delay(100);
    }
    if (key=='i'){
     espejo = true;
     delay(100);
    }
        if (key=='k'){
     espejo = false;
     delay(100);
    }
  }    
}


void transladar(){
  keyReleased();
    if((dist(Posx1,Posy1,mouseX,mouseY)<20) && (mousePressed)){
      control= 1;
      if(control==1){
        Posx1 = mouseX;
        Posy1 = mouseY;
      }
    }
    if((dist(Posx2,Posy2,mouseX,mouseY)<50) && (mousePressed)){
      control=2;
      if(control==2){
        Posx2 = mouseX;
        Posy2 = mouseY;
      }  
    }
    if((dist(Posx3,Posy3,mouseX,mouseY)<50) && (mousePressed)){
      control=3;
      if(control==3){
        Posx3 = mouseX;
        Posy3 = mouseY;
      }
    }
    if((dist(Posx4,Posy4,mouseX,mouseY)<50) && (mousePressed)){
      control=4;
      if(control==4){
        Posx4 = mouseX;
        Posy4 = mouseY;
      }  
    }
    if((dist(Posx5,Posy5,mouseX,mouseY)<50) && (mousePressed)){
      control=5;
      if(control==5){
        Posx5 = mouseX;
        Posy5 = mouseY;
      }
    }
    if((dist(Posx6,Posy6,mouseX,mouseY)<50) && (mousePressed)){
      control=6;
      if(control==6){
        Posx6 = mouseX;
        Posy6 = mouseY;
      }
    }
    if((dist(Posx7,Posy7,mouseX,mouseY)<50) && (mousePressed)){
      control=7;
      if(control==7){
        Posx7 = mouseX;
        Posy7 = mouseY;
      }
    }       
}

void triangulo_1(){
    fill(201, 58, 58);
    push();
    translate(Posx1,Posy1);
    rotate(angulo1);
    triangle( -150, -50, 150, -50, 0, 100);
    circle(0,0,50);
    pop(); 
}

void triangulo_2(){
    fill(180, 201, 58);
    push();
    translate(Posx2,Posy2);
    rotate(angulo2);
    triangle( -50, -150, -50, 150, 100, 0);
    circle(0,0,50);
    pop(); 
}

void triangulo_3(){
    fill(58, 201, 77);
    push();
    translate(Posx3,Posy3);
    rotate(angulo3);
    triangle( 50, 50, 50, -100, -100, 50);
    circle(0,0,50);
    pop(); 
}

void triangulo_4(){
    fill(58, 201, 184);
    push();
    translate(Posx4,Posy4);
    rotate(angulo4);
    triangle( -50, 0, 25, 75, 25, -75);
    circle(0,0,50);
    pop(); 
}

void triangulo_5(){
    fill(58, 65, 201);
    push();
    translate(Posx5,Posy5);
    rotate(angulo5);
    triangle( -75, 25, 0, -50, 75, 25);
    circle(0,0,50);
    pop(); 
}

void cuadrado(){
    fill(158, 58, 201);
    push();
    translate(Posx6,Posy6);
    rotate(angulo6);
    quad( -75, 0, 0, -75, 75, 0, 0, 75);
    circle(0,0,50);
    pop(); 
}

void paralelogramo(){

   fill(201, 58, 101);
   push();
   translate(Posx7,Posy7);
   rotate(angulo7);
   if(espejo== true){
   quad( -113, -37, -38, 38, 112, 38, 37, -37);
   } 
   if (espejo == false){
   quad( -113, 38, -38, -37, 112, -37, 37, 38);
   }
   circle(0,0,50);
   pop(); 
}

//void negative (){
  
//  loadPixels();
//  for (int i=10000; i<width * height ;i++){
//    //lectura pixel a pixel 
//    color c = pixels[i];
//    pixels[i]=color(255-red(c),255-green(c),255-blue(c));
//  }
//  updatePixels();
//}

//void keyPressed(){
//  toggle=!toggle;
//}