#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1",
  type: "program",
  start_date: datetime(year: 2023, month: 10, day: 13),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2023, month: 10, day: 13),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Program the wings to be usable during driver control. (Ajibola and Ishika)"),
    (true, "Test the wings (Everyone)"),
  )
)

= PROS Documentation
Neither of the programmers on our team had experience programming pneumatics with PROS#glossary-footnote[PROS] V4, so we used the PROS API #footnote[https://purduesigbots.github.io/pros-doxygen-docs/classpros_1_1adi_1_1DigitalOut.html] to learn how to program them.

Pneumatic pistons only have two states:
- a "deactivated" state represented by the integer ```cpp 0``` or the boolean ```cpp false```
- an "activated" state represented by the integer ```cpp 1``` or the boolean ```cpp true```

We learned that by initializing the pneumatic piston as a ```cpp pros::adi::DigitalOut``` class, we can utilize the "activated" and "deactivated" behavior to program the pneumatics.

#align(center)[*53D_OverUnder/src/global.cpp*]
```cpp
// Initializes a DigitalOut object to control the pneumatic wings.
pros::adi::DigitalOut WingPistons(2);
```

#nb_admonition(type: "note")[
  Pneumatics are not programmed directly through a smart cable like motors. They are instead connected to solenoids, which programmers can actually program. As a result, we can use one solenoid to control two pistons at once, as long as we are satisfied with the trade-off of being unable to control them individually.
]

We then created a file, ```cpp wings.cpp``` to store all of the wings related variables and functions. We quickly realized after reading the PROS API that the ```cpp pros::adi::DigitalOut``` class does not have a function for users to get the current value (```cpp 0``` or ```cpp 1```) of the object. While we could theoretically make the wings toggleable without this information readily available to us, this could hinder our ability to make more advanced usages of the wings later on, such as for autonomous routines.

To solve this problem, we created a boolean variable to store whether the wings' pneumatic pistons have been activated. We plan to update this variable everytime the position of the wings is changed (ex. from  outset to inset) so we can keep track of the state of the wings.

```cpp
// Boolean variable to store whether the wings' pneumatic pistons have been activated.
bool wingPistonsActivated = false;
```

With this roadblock overcame, all that was left was to actually make the wings toggleable. we did this with the following code:

#align(center)[*53D_OverUnder/src/global.cpp*]
```cpp
void PneumaticWings() {
    // When this function is called...
    if (!wingPistonsActivated) {
        // if the pneumatic pistons were not activated before, they become activated
        WingPistons.set_value(1);
        wingPistonsActivated = true;
    } else {
        // if the pneumatic pistons were activated before, they become deactivated
        WingPistons.set_value(0);
        wingPistonsActivated = false;
    }
}
```

To make the wings usable during driver control, we used the following code to make the wings toggleable by pressing LEFT on the controller:
#align(center)[*53D_OverUnder/src/opcontrol.cpp*]
```cpp
void opcontrol() {
	while (true) {
		// ... non-relevant prior lines of code excluded

    // When LEFT is pressed on the controller, the PneumaticWings() function is called, opening/closing the wings
		if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_LEFT)) PneumaticWings();

		// Creates a 20 millisecond delay between each loop of the driver control code to prevent the starving of PROS kernel resources
		pros::delay(20);
	}
}
```