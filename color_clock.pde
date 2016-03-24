DigitalClock digitalClock;
int temp = 0;

void setup() {
  fullScreen();
  surface.setResizable(true); 
  digitalClock = new DigitalClock(40, width/2, height/2+15);
}

void draw() {  
  if (hour()%2==0) {    
    temp = 0;
  } else {    
    temp ++;
  }    
  switch(hour()) {
  case 0:    
  case 1:
    background(color(27, 20, 100+temp/3));
    break;
  case 2:    
  case 3:
    background(color(46-temp/3, 49+temp, 146+temp/2));
    break;
  case 4:
  case 5:
    background(color(0, 187+temp, 255));
    break;
  case 6:
  case 7:
    background(color(51+temp, 255, 189-temp));
    break;
  case 8:
  case 9:
    background(color(195-temp/2, 255, 69-temp/2));
    break;
  case 10:
  case 11:
    background(color(255, 195-temp, 0+temp/2));
    break;
  case 12:
  case 13:
    background(color(255, 75-temp/2, 60));
    break;
  case 14:
  case 15:
    background(color(195-temp/2, 0, 60));
    break;
  case 16:
  case 17:
    background(color(135-temp, 12, 63));
    break;
  case 18:
  case 19:
    background(color(75-temp, 24, 69));
    break;
  case 20:
  case 21:
    background(color(24, 12+temp/2, 24+temp));
    break;
  default:
    background(color(15, 12, 24));
    break;
  }
  digitalClock.getTime();
  digitalClock.display();
}

class DigitalClock extends Clock {
  int fontSize;
  float x, y;

  DigitalClock(int _fontSize, float _x, float _y) {
    fontSize = _fontSize;
    x = _x;
    y = _y;
  }

  void getTime() {
    super.getTime();
  }

  void display() {
    textSize(fontSize);
    textAlign(CENTER);
    text (h + ":" + nf(m, 2) + ":" + nf(s, 2), x, y);
  }
}

class Clock {
  int h, m, s;
  Clock() {
  }

  void getTime() {
    h = hour();
    m = minute();
    s = second();
  }
}