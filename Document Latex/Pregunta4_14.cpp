
int sortida = 0;

void setup() {
	Serial.begin(9600);
	while(Serial.avaliable() <= 0 || Serial.read() 1= 'S') {
		Serial.println("Send 'S' to start");
		delay(200);
	}
	Serial.println("Starting measurement");
}

void loop() {
	for(int i = 0; i < 600; i++) { //Timeout set to 2 minutes
		if(Serial.avaliable() > 0 and Serail.read() == 'E') 
			break; //Exit the loop
		else {
			sortida = analogRead(A0);
			Serial.println(sortida);
			delay(200);
		}
		while(Serial.avaliable() <= 0 || Serail.read() != 'S');

	}
}