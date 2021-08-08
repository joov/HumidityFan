# Circuit

## Arduino

The circuit was designed using [KiCad](https://www.kicad.org/). The layout was done using [freerouting](https://github.com/freerouting/freerouting) as described [here](https://techexplorations.com/blog/kicad/blog-kicad-5-how-to-use-the-freerouting-autorouter)

I printed the boards with [Aisler](https://aisler.net) who do a pretty good job, but have a minimum batch size of 3. The file you have to use is `HumidityFan.kicad_pcb`.

## Outer sensor

For the outer sensor you can just solder the sensor to one side of a small 7x6 breadboard (I cut mine from a bigger one), solder a  Pin PCB Mount Screw Terminal Block to the opposite side and connect the pins using silver wire (note that one pin of the DHT11 is not used).