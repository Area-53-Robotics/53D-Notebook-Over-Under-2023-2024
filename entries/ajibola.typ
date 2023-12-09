#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *

#create_entry(
  title: "Ajibola",
  type: "program",
  start_date: datetime(year: 2023, month: 12, day: 8),
  end_date: datetime(year: 2023, month: 12, day: 16),
  [
    #nb_heading([Drivetrain Type], level: 1)

    It's joever

    ```cpp
    // Ommitted old chassis configuration
    // ...

    // Define PID constants

    // forward/backward PID
    inline lemlib::ChassisController_t lateralController {
        8, // kP
        30, // kD
        1, // smallErrorRange
        100, // smallErrorTimeout
        3, // largeErrorRange
        500, // largeErrorTimeout
        5 // slew rate
    };

    // turning PID
    inline lemlib::ChassisController_t angularController {
        4, // kP
        40, // kD
        1, // smallErrorRange
        100, // smallErrorTimeout
        3, // largeErrorRange
        500, // largeErrorTimeout
        0 // slew rate
    };
    
    ```
  ],
)
