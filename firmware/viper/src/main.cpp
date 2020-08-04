#include "Plotter.h"
#include <Arduino.h>

double x = 0;
double l = 0;

Plotter p;

void setup() {
    p.Begin(); // start plotter

    p.AddTimeGraph("Some Sin Wave", 500, "Thhe wave", x);
    p.AddTimeGraph("Loops/100 ms", 500, "Loops", l);
}

double pre_millis = 0;

void loop() {
    double current_millis = millis();

    // Dont overload the serial comms
    if (current_millis - pre_millis >= 100) {
        x = 10 * sin(2.0 * PI * (current_millis / 5000.0));

        tone(9, abs(x * 444), 0);

        p.Plot(); // usually called within loop()

        pre_millis = current_millis;
        l = 0;
    } else {
        l++;
    }
}