int contador=0;
PImage image;
boolean pix = true; 
Shape[]shapes;
Boton []botones;
boolean drawGrid;
boolean crea;
boolean guarda;
boolean juega;

void setup() {
  size(900, 600);
  image=loadImage("tang_4.png");
  botones= new Boton[2];
  botones[0]= new Boton(color(108,134,188),450,350,75,0,"Jugar",55);
  botones[1]= new Boton(color(108,134,188),450,450,75,0,"modo creador",15);
  shapes = new Shape[7];
  shapes[0]= new Triangle(color(201, 58, 58),150,50,50,0,1);
  shapes[1]= new Triangle(color(180, 201, 58),50,150,50,radians(-90),1);
  shapes[2]= new Triangle(color(58, 201, 77),250,250,50,radians(-45),0.7);
  shapes[3]= new Triangle(color(58, 201, 184),275,75,50,radians(90),0.5);
  shapes[4]= new Triangle(color(58, 65, 201),150,200,50,radians(180),0.5);
  shapes[5]= new Shape (color(158, 58, 201),225,150,106,radians(45));
  shapes[6]= new Quad (color(201, 58, 101),113,262,0,0);
}


void draw(){
  menu();
  if (juega || crea ){ 
    background(205);
    if (juega == true && crea == false){
    image(image,0,0,width-5,height-5);
    }
    noStroke();
    for (Shape figura : shapes){
      figura.draw();
      figura.mover();
      figura.rotar();
    }
    if (drawGrid){
      drawGrid(10);
    }
    if (juega == true && crea == false){
    cuentapixeles();
    pix = win(contador);
    if ( pix == false){
      println("GANA");
      ganador();
    }
    }
  }
}

void cuentapixeles(){
  loadPixels();
  contador=0;
  for(int i=0;i<width*height;i++){
    float r= red(pixels[i]) ;
    float g= green(pixels[i]);
    float b= blue(pixels[i]);
    if(r==0 & g==0 & b==0){
      contador++;
    }
  }
}
boolean win( float contador){
  if(contador<10) return false;
  else return true;
}

void ganador(){
  background (random (0,255), random (0,255), random(0,255));
  fill (255);
  push();
  translate(0,0);
  textSize (100);
  text("!FELICITACIONES!", 25,height/2);
  delay (200);
  pop();
}

void drawGrid(float scale) {
    push();
    strokeWeight(1);
    int i;
    for (i=0; i<=width/scale; i++) {
        stroke(0, 0, 0, 20);
        line(i*scale, 0, i*scale, height);
    }
    for (i=0; i<=height/scale; i++) {
        stroke(0, 0, 0, 20);
        line(0, i*scale, width, i*scale);
    }
    pop();
}

void keyPressed() {
    if (key == 'g' || key == 'G'){
        drawGrid = !drawGrid;
    }
    if (key == 's' || key == 'S'){
        guarda= !guarda;
    }
    if (key== ENTER){
        guarda= false;
        crea=false;  
    //    menu();
    //    print(crea, guarda);
    }
}

void keyReleased(){
    if (crea && guarda && key == 's' || key == 'S' ){
        save("data/tang_16.png"); 
        guarda= !guarda;
    }
}

void menu(){
  background(178,70,57);
  fill(255);
  textSize (100);
  rectMode(CENTER);
  text("¡TANGRAM!",175, 175);
  for (Boton bot : botones){
    bot.draw();
    bot.selec();
  }
  if (botones[0].selec == true && crea==false && juega == false){
    juega = true;
  }
  if (botones[1].selec == true  && crea==false && juega == false){
    crea = true;
  }  
}
