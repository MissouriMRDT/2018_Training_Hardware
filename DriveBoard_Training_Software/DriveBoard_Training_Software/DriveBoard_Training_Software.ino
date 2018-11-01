#include "RoveWare.h"

const byte DRIVE_MAX_FORWARD = 255;
const byte DRIVE_MAX_REVERSE = 0;
const byte DRIVE_ZERO        = 127;

byte left_drive_speed        = DRIVE_ZERO;
byte right_drive_speed       = DRIVE_ZERO;

RoveCommEthernetUdp roveComm;
RoveWatchdog        Watchdog;

void roveEstopDriveMotors();

void setup() {
  Serial4.begin(9600);
  Serial6.begin(9600);

  Serial.begin(9600);

  delay(10);
  roveComm.begin(ROVE_FIRST_OCTET, ROVE_SECOND_OCTET, ROVE_THIRD_OCTET, DRIVEBOARD_FOURTH_OCTET); 
  delay(10);
  Watchdog.begin(roveEstopDriveMotors, 150);
  delay(10);

  Serial.println("Initialised");
}

void loop() {
  uint16_t data_id   = 0;
  size_t   data_size = 0;
  uint8_t  data_value[4];
  roveComm.read(&data_id, &data_size, &data_value);

  switch (data_id) 
  {     
    case DRIVE_LEFT_RIGHT:
    {       
      int32_t speed            = *(int32_t*)(data_value);     
      int16_t left_speed_temp  =  (int16_t) (speed >> 16); // 2 high bytes contain RED's left speed  as int16
      int16_t right_speed_temp =  (int16_t)  speed;        // 2 low  bytes contain RED's right speed as int16
    
      left_speed_temp   = -left_speed_temp; // Motors were wired backwards     
      left_drive_speed  = map(left_speed_temp,  RED_MAX_REVERSE, RED_MAX_FORWARD, DRIVE_MAX_REVERSE, DRIVE_MAX_FORWARD); 
      right_drive_speed = map(right_speed_temp, RED_MAX_REVERSE, RED_MAX_FORWARD, DRIVE_MAX_REVERSE, DRIVE_MAX_FORWARD);     
      Watchdog.clear();
      break;  
    }
  }
  Serial.print("Driving: ");
  Serial.print(left_drive_speed);
  Serial.print(", ");
  Serial.println(right_drive_speed);
  
  Serial4.write(left_drive_speed);
  Serial6.write(right_drive_speed);
  delay(1);
}

void roveEstopDriveMotors() 
{ 
  left_drive_speed  = DRIVE_ZERO;
  right_drive_speed = DRIVE_ZERO;
  
  Serial4.write(DRIVE_ZERO);
  Serial6.write(DRIVE_ZERO);
  
  Watchdog.clear();
  Serial.println("WatchDog Triggered");
}
