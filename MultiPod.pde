#include <LiquidCrystal.h>

int Contrast = 20;
LiquidCrystal lcd(7, 8, 9, 10, 11, 12);
//char canada[351] = "O Canada!#Our home and #native land!#True* patriot&# love*# in all of us# command.*#With glowing&# hearts we see&# thee rise,#The True North# strong and free*#From&# far and wide,#O Canada,*# we stand on# guard for thee.*#God %#keep%$ our land&# glorious and# free!&#O Canada,*# we stand on# guard for thee.*#O Canada,&# we stand on# guard for thee.#";

// SONG
String imagine = {
"Imagine there's",
"no heaven It's ",
"easy if you    ",
"try No hell    ",
"below us Above ",
"us only sky    ",
"Imagine all the",
"people Living  ",
"for today...   ",
"Aha-ah...      ",
"Imagine there's",
"no countries It",
"isn't hard to  ",
"do Nothing to  ",
"kill or die    ",
"for And no     ",
"religion, too  ",
"Imagine all the",
"people Living  ",
"life in peace..",
"You...  You    ",
"may say I'm    ",
"a dreamer But  ",
"I'm not the    ",
"only one I     ",
"hope someday   ",
"you'll join us ",
"And the world  ",
"will be as     ",
"one  Imagine   ",
"no possessions ",
"wonder if you  ",
"can No need    ",
"for greed or   ",
"hunger A       ",
"brotherhood of ",
"man Imagine all",
"the people     ",
"Sharing all the",
"world... You...",
"You may say    ",
"I'm a dreamer  ",
"But I'm not    ",
"the only one   ",
"I hope someday ",
"you'll join us ",
"And the world  ",
"will live as   ",
"one.           ",
};
int imagine_length = 49;


// BOOK
String sam = 
{
"I am Daniel    ",
" I am          ",
"Sam Sam I      ",
"am  That       ",
"Sam-I-am That  ",
"Sam-I-am! I do ",
"not like That  ",
"Sam-I-am  Do   ",
"you like Green ",
"eggs and ham   ",
" I do          ",
"not like them, ",
"Sam-I-am. I do ",
"not like Green ",
"eggs and ham.  ",
" Would you     ",
"like them Here ",
"or there?      ",
"I would not    ",
"like them Here ",
"or there. I    ",
"would not like ",
"them Anywhere. ",
"do not like    ",
"Green eggs and ",
"ham. I do      ",
"not like them, ",
"Sam-I-am  Would",
"you like them  ",
"In a house?    ",
"Would you like ",
"them With a    ",
"mouse?  I      ",
"do not like    ",
"them In a      ",
"house. I do    ",
"not like them  ",
"With a mouse.  ",
"I do not       ",
"like them Here ",
"or there. I    ",
"do not like    ",
"them Anywhere. ",
"do not like    ",
"green eggs and ",
"ham. I do      ",
"not like them, ",
"Sam-I-am.  Woul",
"you eat them   ",
"In a box?      ",
"Would you eat  ",
"them With a    ",
"fox?  Not      ",
"in a box.      ",
"Not with a     ",
"fox. Not in    ",
"a house. Not   ",
"with a mouse.  ",
"I would not    ",
"eat them here  ",
"or there. I    ",
"would not eat  ",
"them anywhere. ",
"would not eat  ",
"green eggs and ",
"ham. I do      ",
"not like them, ",
"Sam-I-am.  Woul",
"you? Could you?",
"In a car?      ",
"Eat them! Eat  ",
"them! Here they",
"are.  I        ",
"woould not,    ",
"Could not, In  ",
"a car          ",
"You may like   ",
"them. You will ",
"see. You may   ",
"like them In   ",
"a tree?        ",
"I would not,   ",
"could not in   ",
"a tree. Not    ",
"in a car!      ",
"You let me     ",
"be. I do       ",
"not like them  ",
"in a box.      ",
"I do not       ",
"like them with ",
"a fox I        ",
"do not like    ",
"them in a      ",
"house I do     ",
"mot like them  ",
"with a mouse   ",
"I do not       ",
"like them here ",
"or there. I    ",
"do not like    ",
"them anywhere. ",
"do not like    ",
"green eggs and ",
"ham. I do      ",
"not like them, ",
"Sam-I-am.  A   ",
"train! A train!",
"A train! A     ",
"train! Could   ",
"you, would you ",
"On a train?    ",
" Not on        ",
"a train! Not   ",
"in a tree!     ",
"Not in a       ",
"car! Sam! Let  ",
"me be! I       ",
"would not, coul",
"not, in a      ",
"box. I could   ",
"not, would not,",
"with a fox.    ",
"I will not     ",
"eat them with  ",
"a mouse I      ",
"will not eat   ",
"them in a      ",
"house. I will  ",
"not eat them   ",
"here or there. ",
"I will not     ",
"eat them       ",
"anywhere. I do ",
"not like them, ",
"Sam-I-am.  Say!",
"In the dark?   ",
"Here in the    ",
"dark! Would you",
"could you, in  ",
"the dark?      ",
"I would not,   ",
"could not, In  ",
"the dark.      ",
"Would you, coul",
"you, In the    ",
"rain?  I       ",
"would not, coul",
"not, in the    ",
"rain. Not in   ",
"the dark. Not  ",
"on a train,    ",
"Not in a       ",
"car, Not in    ",
"a tree. I      ",
"do not like    ",
"them, Sam, you ",
"see. Not in    ",
"a house. Not   ",
"in a box.      ",
"Not with a     ",
"mouse. Not with",
"a fox. I       ",
"will not eat   ",
"them here or   ",
"there. I do    ",
"not like them  ",
"anywhere!  You ",
"do not like    ",
"Green eggs and ",
"ham?  I        ",
"do not Like    ",
"them, Sam-I-am.",
"Could you, woul",
"you, With a    ",
"goat?  I       ",
"would not, Coul",
"not. With a    ",
"goat!  Would   ",
"you, could you,",
"On a boat?     ",
" I could       ",
"not, would not,",
"on a boat.     ",
"I will not,    ",
"will not, with ",
"a goat. I      ",
"will not eat   ",
"them in the    ",
"rain. I will   ",
"not eat them   ",
"on a train.    ",
"Not in the     ",
"dark! Not in   ",
"a tree! Not    ",
"in a car!      ",
"You let me     ",
"be! I do       ",
"not like them  ",
"in a box.      ",
"I do not       ",
"like them with ",
"a fox. I       ",
"will not eat   ",
"them in a      ",
"house. I do    ",
"not like them  ",
"with a mouse.  ",
"I do not       ",
"like them here ",
"or there. I    ",
"do not like    ",
"them anywhere! ",
"I do not       ",
"like Green egss",
"And ham!       ",
"I do not       ",
"like them,     ",
"Sam-I-am.  You ",
"do not like    ",
"them. So you   ",
"say. Try them! ",
"Try them! And  ",
"you may. Try   ",
"them and you   ",
"may I say.     ",
" Sam! If       ",
"you will let   ",
"me be, I       ",
"will try them. ",
"You will see.  ",
" Say! I        ",
"like green eggs",
"and ham! I     ",
"do! I like     ",
"them, Sam-I-am!",
"And I would    ",
"eat them in    ",
"a boat! And    ",
"I would eat    ",
"them with a    ",
"goat... And I  ",
"will eat them  ",
"in the rain.   ",
"And in the     ",
"dark. And on   ",
"a train. And   ",
"in a car.      ",
"And in a       ",
"tree. They are ",
"so goodm so    ",
"goodm you see! ",
" So I          ",
"will eat them  ",
"in a box.      ",
"And I will     ",
"eat them with  ",
"a fox. And     ",
"I will eat     ",
"them in a      ",
"house. And I   ",
"will eat them  ",
"with a mouse.  ",
"And I will     ",
"eat them here  ",
"and there. Say!",
"I will eat     ",
"them anhywhere!",
"I do so        ",
"like Green eggs",
"and ham! Thank ",
"you! Thank you,",
"Sam-I-am       ",
};

int book_length = 273;

void print_line(String line, int y){
  for (int i = 0; i < 16; i++){
    lcd.setCursor(i, y);
    lcd.print(line[i]);
  }
}


void print_song(String song [], int len){
  print_line(song[0],1);
  delay(200);
  for(int i = 1; i < len; i++){
    print_line("                ", 0);
    print_line(song[i-1],0);
    print_line(song[i],1);
    delay(1000);
  }
}


void setup(){
  analogWrite(6, Contrast);
  lcd.begin(16, 2);
  print_song(ocanada, length_canada);
}

void loop() {
}
