# Humidity Fan Project

## Intention

This project is a low cost solution for rooms with high humidity like

- garden houses
- cellar rooms
- bath rooms

to get some air circlulation. It is inspired by [this](https://create.arduino.cc/projecthub/LIMPINGLIM/humidity-sensor-controlled-bathroom-exhaust-fan-27131f) project.

You have to be aquainted with:

- Using arduino
- Soldering
- 3D printing

if you want to build a device of your own

## Main components

The system consists of these main parts:

- PC case fan to get the air with high humidity out of the room
- Two humidity and temerature sensors (DHT11) to get information about inner and and outer conditions
- Arduino nano to control everything
- A board to fit all electronics onto
- A small display to see what the controller is doing

Aditionally there are a few 3D printed components to fit it all together:

- Case of arduino board, inner sensor and display
- Case for outer humidity sensor
- Adapter to fit the PC case fan to a System 125 ventilation pipe (customizable)

## Part list

Please note that I do not guarantee this part list to be exhaustive.

|part|qty|I used|remark|
|---|---|---|---|
|Arduino nano|1||I recommend the original ones|
|DHT-11 sensor|2|[these](https://www.amazon.de/gp/product/B07Q3H3Y68)|plain ones, not already soldered to board|
|MOSFET|1|[this](https://www.amazon.de/gp/product/B08GFD7F9V)||
|OLED display|1|[this](https://www.amazon.de/gp/product/B074N9VLZX)||
|2 Pin PCB Mount Screw Terminal Block|1|[a set](https://www.amazon.de/gp/product/B07MM8RJLW)|the set contains much more than you need
|3 Pin PCB Mount Screw Terminal Block|3||see above|
|PC case fan|1|[this](https://www.amazon.de/gp/product/B07GB16RK7)||
|small peace of breadboard|||approx 6x7 holes, for outer sensor||

Furthermore you need:

- the board (see [here](./Circuit)
- cases and fan adapter (see [here](./3DPrint)

Lastly there is an arduino sketch to make everything going [here](./Sketch)
