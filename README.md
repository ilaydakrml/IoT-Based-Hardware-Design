# Tinkering-Low-Power-IoT-Based-Compact-Soil-Humidity-Monitoring-Device
cant get more self explanatory than that name but i will try

There is multiple designs in this repo with different design choices so as a starter,

## Simple humidity detector
<img src="https://github.com/ellenfel/Tinkering-Low-Power-IoT-Based-Compact-Soil-Humidity-Monitoring-Device/blob/master/figures/ssforreport-sch.png"  height="400" width="600">

  Basicly we use L7805 to voltage regulator to get a constant 5V voltage. Out pin of regulator is first connected to our resistive probe then base of BC547 transistor again we paraler connect the same  Out pin of regulator to a LED and from there the collector pin of the same BC547 resistor.
  The idea here is, if current wouldn't flow throug our resistive probe; our led won't light up. which would indicate our probe is embedded in dry soil, acourding to a resistive treshold.
  We also added a 50k potentiometer between base of our transistor and ground as a way to control this threshold.

## Low Power IoT Based Compact Soil Humidity Monitoring Device

In this second design, our planning will be to achieve the following things:
 - Having Soil sensor and the Microcontroller on a single board.
 - 18650 Lithium battery-based system
 - Reverse Polarity Protection for the battery
 - USB Port to program, get a log or charge the battery
 - Low power consumption
 - Wi-Fi Connectivity
 - Small size to be fit inside a 3D printed enclosure
 - A ready to use and ready to manufacturing cheap-ish product
 - Design the PCB
 - Ability to increase the Soil probe current.
 
  So in the first design we only designed a single functinality sensor module. In this second design we are much more interested in IoT and a Single device with multiple functionalities that have much more room to grow.


<img src="https://github.com/ellenfel/Tinkering-Low-Power-IoT-Based-Compact-Soil-Humidity-Monitoring-Device/blob/master/figures/tinkered-circuit2.png">
  i know its bit of a jump just bare with me i'll explain it. Also unfortunatly kicad's shematic to pdf converter doesnt work properly so this image is all you got for now.
  For better understanding, each section of the schematic is separated as a block as per the working principle of each major component.
  
  ### Aplication Center
  
  Ic in here is the ESP-12 microcontroller. Which is programmed by the programmer. It is a widely popular, low-cost, WiFi-based microcontroller that has more than enough pins for our design. 
The R6 is a 0R Jumper used to activate the deep sleep mode. It has 4 resistors for the pull-up in the IO0, IO2, EN, and RST Pins. The C1 and R4 are used to make a time delay circuit for proper reset in each reset state or each Power ON mode. It also has a pull-down resistor in the IO15. The Soil probe is connected in the two pins, IO5 and IO4. 
TX and RX are connected further to the UART to USB bridge. The SW1 and SW2 are used for the RST and Boot mode. It has an ADC pin and is used to measure the changes in the Soil Probe depending on the changes of the Soil Moisture.

### The Sensor Probe
How the moisture sensor works is that once you turn it on your current will start flowing through  and then it will come to your current limiting resistor (which is 100 ohm). And then it will go to your probe.

Probe will be buried inside the soil  and when it is inside the soil based on the amount of moisture present in the soil the current will reach the second probe and reach to the  base pin of the transistor. so when it reaches to the transistor might fully open or partially open telling us how much moisture is present in the soil.
The probe used in this design: https://github.com/sparkfun/Soil_Moisture_Sensor

### USB to UART:
RX-TX needs to be converted to the USB port. This is required to program the module and also for getting the required LOG in the UART terminal during development time. For this, we used the widely popular CP2102 Module.

There is a Jumper that is used to disconnect the CP2102 and its circuitry from the Power rail to save battery when the Probe is used in the application and not for development purposes. However, irrespective of the RST, BOOT switches, an auto configurable logic using a transistor is set to program the board with an autoboot and reset feature.

### The USB Input Section:
This USB input section has proper ESD protection to save the device from ESD surges. The USB connector used here is 629105136821. This is the part number Wurth Elektronic Micro USB Port. An equivalent USB port can also be used here since the package is generic. An LED is used here to provide information about the availability of USB Power.

### Battery Charging Section:
An Analog device IC, LTC4054ES5-4.2#TRMPBF is used to charge the lithium battery. This is an 800mA, 4.2V battery charger. The resistor R9 is used to provide 800mA of charge current to the battery. An LED on the charge status pin indicates the charging status. During the Charging period, it will glow constantly. It will stop glowing when the battery charging is completed.

### Reverse Polarity Protection Section:
Another major part is reverse Polarity protection. For that, we have used a high-Power P-channel MOSFET to provide the no drop reverse polarity protection. This MOSFET which is the Q2 will only turn ON if the battery is connected properly. If the battery is inserted in the reverse direction, the Q2 will be turned off and disconnect the entire circuitry from the battery. Additionally, D2 is used to protect the reverse current flow into the charger, when the USB is not plugged in, the Battery leakage current will significantly decrease. The Drop voltage of this diode will obviously affect the charging characteristic, but since it will rarely be used due to high battery backup, it is OK to compensate for that.

### i will add more detailed information about pin connections and pcb fabrication in time
