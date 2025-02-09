#include "traffic_light_controller.h"
#include <stdio.h>

TrafficLightController controller;

void init_traffic_light_controller() {
    controller.state = RED;
    controller.timer = 0;
    printf("Traffic light initialized to RED.\n");
}

void update_traffic_light_state() {
    switch (controller.state) {
        case RED:
            if (controller.timer >= 10) { // Stay RED for 10 seconds
                controller.state = GREEN;
                controller.timer = 0;
                printf("Traffic light changed to GREEN.\n");
            }
            break;
        case GREEN:
            if (controller.timer >= 15) { // Stay GREEN for 15 seconds
                controller.state = YELLOW;
                controller.timer = 0;
                printf("Traffic light changed to YELLOW.\n");
            }
            break;
        case YELLOW:
            if (controller.timer >= 5) { // Stay YELLOW for 5 seconds
                controller.state = RED;
                controller.timer = 0;
                printf("Traffic light changed to RED.\n");
            }
            break;
    }
    controller.timer++;
}