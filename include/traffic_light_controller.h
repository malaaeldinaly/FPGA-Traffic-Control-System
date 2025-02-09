#ifndef TRAFFIC_LIGHT_CONTROLLER_H
#define TRAFFIC_LIGHT_CONTROLLER_H

typedef enum {
    RED,
    GREEN,
    YELLOW
} TrafficLightState;

typedef struct {
    TrafficLightState state;
    int timer;
} TrafficLightController;

void init_traffic_light_controller();
void update_traffic_light_state();

#endif // TRAFFIC_LIGHT_CONTROLLER_H