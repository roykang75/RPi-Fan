#include<stdio.h>
#include<wiringPi.h>

#define SWITCH1 4  //switch

int main(int argc, char* argv[]){
    int data;
    if(wiringPiSetup()==-1){
        return 1;
    }

    pinMode(SWITCH1,OUTPUT);

    if(argc == 1){
        fputs("\n옵션을 입력하지 않으셨습니다.\n", stderr);
        return 1;
    }else{
        data = (int)argv[1][0];
    }

    if(data=='o'){
        digitalWrite(SWITCH1,1);
        printf("\nCooling Pan is ON\n");
    }

    if(data=='x'){
        digitalWrite(SWITCH1,0);
        printf("\nCooling Pan is OFF\n");
    }

    return 0;
}


