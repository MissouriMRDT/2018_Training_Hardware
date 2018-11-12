/* DriveBoard_Training
 * This code is meant to talk you through how to implement some basic controls on the rover
 * This code will takea command from RoveComm, parse the message, and send the data to the two motor controllers using Serial
 * Note: the implementation of some of these functions will change this year 
 *        As we have some embedded libraries in development that will change the user interface
 *        In general, the ideas will remain the same
 */

//the RoveWare library contains the commands fror RoveComm, our rover UDP communications standard
#include "RoveWare.h"

/////Set Constants/////
//We will be sending a Serial command to the motor controllers with a value from (0, 255)
//     The constants here define what those values mean
const byte DRIVE_MAX_FORWARD = 255; //if we send 255, the motor will drive forward  at full speed
const byte DRIVE_MAX_REVERSE = 0;   //if we send 0  , the motor will drive backward at full speed
const byte DRIVE_ZERO        = 127; //if we send 127, the motor will stop

/////Set up variables/////
//We will use these variables to store the speed given from RoveComm
byte left_drive_speed        = DRIVE_ZERO;
byte right_drive_speed       = DRIVE_ZERO;

/////Instantiate Classes/////
RoveCommEthernetUdp roveComm; //RoveComm gives us access to all the RoveComm communications funcitons
RoveWatchdog        Watchdog; //Watchdog is a timer interrupt. If we do not recieve any drive commands for a certain amt of time, it will stop all motors

/////Function Calls/////
void roveEstopDriveMotors(); //Stops motors in case of EStop

/////Setup/////
//This code will only run once
void setup() {
  //Setup Serial
  //We are using Serial 4, 6 to communicate to the drive motors
  //9600 sets the baud rate
  Serial4.begin(9600);
  Serial6.begin(9600);
    
  //We use this serial to commnicate back to your computer for debugging
  Serial.begin(9600);
  
  //Delay helps the baords process the commands
  delay(10);//(10ms)
  //Initialise roveComm with IP Address(192, 168, 1, XXX)
  roveComm.begin(ROVE_FIRST_OCTET, ROVE_SECOND_OCTET, ROVE_THIRD_OCTET, DRIVEBOARD_FOURTH_OCTET); 
  delay(10);
  //Set up Wathdog
  Watchdog.begin(roveEstopDriveMotors, 150); //Will trip after 150ms and run roveEstopDriveMotors()
  Watchdog.clear();
  delay(100);
  
  //Send msg to computer telling us everything is workingwwa
  Serial.println("Initialised");
}

//Loop function
//Thi function will run run forever
void loop() {
  //Setup rovecomm variables
  //Note this will change in RoveComm 2
  uint16_t data_id   = 0;
  size_t   data_size = 0;
  uint8_t  data_value[4];
  //Read the rovecomm message (if it exists) and poplate the variables (Pass-by-reference
  //We care about the variables data_id and data_value)
  roveComm.read(&data_id, &data_size, &data_value);
  
  //Switch case on the data ID allows us to do different things depending n DataId
  switch (data_id) 
  {     
    case DRIVE_LEFT_RIGHT: //const DRIVE_LEFT_RIGHT is defined in RoveManifest.h
    {     
      //get the speed from the value	
      int32_t speed            = *(int32_t*)(data_value);  
	  //Parse the speed into left/right speeds
      int16_t left_speed_temp  =  (int16_t) (speed >> 16); // 2 high bytes contain RED's left speed  as int16
      int16_t right_speed_temp =  (int16_t)  speed;        // 2 low  bytes contain RED's right speed as int16
    
      left_speed_temp   = -left_speed_temp; // Left motors were wired backwards, so we reverse the leftspeed  
	  
	  //Map the rovecomm values from their max/min to the max/min we are snding to the motor controllers
	  //RED Span=(-1000, 1000); MC span=(0, 255)
	  //                  map(value          ,  -1000          , 1000           , 0                , 255              );
      left_drive_speed  = map(left_speed_temp,  RED_MIN_REVERSE, RED_MAX_FORWARD, DRIVE_MIN_REVERSE, DRIVE_MAX_FORWARD); 
      right_drive_speed = map(right_speed_temp, RED_MIN_REVERSE, RED_MAX_FORWARD, DRIVE_MIN_REVERSE, DRIVE_MAX_FORWARD); 
      
      //Clear watchdog timer if we get a message	  
      Watchdog.clear();
      break;  
    }
  }
  
  //Print telemetry to Computer for Debugging
  Serial.print("Driving: ");
  Serial.print(left_drive_speed);
  Serial.print(", ");
  Serial.println(right_drive_speed);
  
  //Send motor speed values to MoCos
  Serial4.write(left_drive_speed);
  Serial6.write(right_drive_speed);
  delay(10);
}

void roveEstopDriveMotors() 
{ 
  //Set speed to 127 (0 speed)
  left_drive_speed  = DRIVE_ZERO;
  right_drive_speed = DRIVE_ZERO;
  
  //Stop Motors
  Serial4.write(DRIVE_ZERO);
  Serial6.write(DRIVE_ZERO);
  
  //Clear Watchdog
  Watchdog.clear();
  //Send Telemetry
  Serial.println("WatchDog Triggered");
}
