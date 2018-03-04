#include <LiquidCrystal.h>

int Contrast = 20;
LiquidCrystal lcd(7, 8, 9, 10, 11, 12);
//char canada[351] = "O Canada!#Our home and #native land!#True* patriot&# love*# in all of us# command.*#With glowing&# hearts we see&# thee rise,#The True North# strong and free*#From&# far and wide,#O Canada,*# we stand on# guard for thee.*#God %#keep%$ our land&# glorious and# free!&#O Canada,*# we stand on# guard for thee.*#O Canada,&# we stand on# guard for thee.#";


// SONG
String ocanada[] = {
"O Canada! Our  ",
"home and native",
"land! True     ",
"patriot love in",
"all of us      ",
"command. With  ",
"glowing hearts ",
"we see thee    ",
"rise, The True ",
"North strong an",
"free! From far ",
"and wide, O    ",
"Canada, we stan",
"on guard for   ",
"thee. God keep ",
"our land       ",
"glorious and   ",
"free! O Canada,",
"we stand on    ",
"guard for thee.",
"O Canada, we   ",
"stand on guard ",
"for thee.      ",
};
int ocanada_length = 23;

int delay_time[23] = {5000, 2800, 3000, 4000, 2200, 2900, 2500, 2000, 2500, 1500, 4100,2400,2000,2000,4500,2500,3500,5300,2400,5500,4500,2000,4000};

void print_song(String song[], int len, int delay_time[]){
  delay(11000);
  lcd.setCursor(0, 1);
  lcd.print(song[0]);
  
  for(int i = 1; i < len; i++){
    lcd.setCursor(0, 0);
    lcd.print(song[i-1]);
    lcd.setCursor(0, 1);
    lcd.print(song[i]);
    delay(delay_time[i - 1]);
    
  }
}


void setup(){
  analogWrite(6, Contrast);
  lcd.begin(16, 2);
  lcd.noDisplay();
  lcd.display();
  print_song(ocanada, ocanada_length, delay_time);
}

void loop() {
}
