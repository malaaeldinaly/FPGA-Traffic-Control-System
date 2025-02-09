#include <stdio.h>
#include <unistd.h>
#include "traffic_light_controller.h"

int main() {
    // Initialize the traffic light controller
    init_traffic_light_controller();

    // Main loop to update the traffic light state
    while (1) {
        update_traffic_light_state();
        sleep(1); // Wait for 1 second before updating the state again
    }

    return 0;
}