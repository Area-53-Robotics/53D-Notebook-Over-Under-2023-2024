#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1 - Driver Control",
  type: "program",
  start_date: datetime(year: 2023, month: 9, day: 15),
  attendance: "Ajibola, Ishika, Eric",
  [
    #nb_todo(date: datetime(year: 2023, month: 9, day: 15), schedule: "")[
      + Program a versatile driver control system for the drivetrain. (Ajibola and Ishika)
      + Test the speed output of the drivetrain (Eric)
    ]

    Because basic tank drive code does not change between seasons, it did not take long for us to program the tank drive configuration for our drivetrain.

    ```cpp
      // Integer variable to store the value of Axis 3
      short int LYAxis;
      // Integer variable to store the value of Axis 2
      short int RYAxis;

      // Main drivetrain function called during each loop of driver control
      void SetDriveMotors() {
        // Update Joystick Values
        LYAxis = Controller.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y);
        RYAxis = Controller.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y);
        
        // Sets the motors to move based on the joystick input values
        LMotors.move(LYAxis);
        RMotors.move(RYAxis);
      }
    ```

    #nb_admonition(type: "note")[
      PROS #footnote([See "PROS" glossary entry]) takes joystick input from the closed interval [-127, 127], and controls motors using the same interval.
    ]

    After verifying that the basic tank drive code worked as intended, we brainstormed some programming features that could help our driver drive more effectively while on the field.

    #nb_admonition(type: "brainstorm", title: "Mini-Brainstorm: Driver Control")[
      - Reverse Function (Suggested by Ishika)
      - Drive Curve (Suggested by Makhi)
      - Deadzone (Suggested by Ajibola)
    ]

    #nb_heading([Reverse Function], level: 1)
    There are multiple times throughout the match where the bot may be facing the driver instead of away from the driver, such as when travelling to our non-offensive zone or when we are getting pushed by another team. During these instances, it becomes harder for the driver to quickly reorient themselves. To assist the driver in doing this, we decided to make a function that temporarily reverses the mapping of the joystick values to the controller.

    ```cpp
      // Boolean variable to keep track of whether the robot is moving in reverse or not
      bool isReverse = false;

      // Reverses the direction of the drivetrain
      void DirectionToggle() {
          isReverse = !isReverse;
          ControllerDisplay();
      }

      // Main drivetrain function called during each loop of driver control
      void SetDriveMotors() {
        // Update Joystick Values
        LYAxis = Controller.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y);
        RYAxis = Controller.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y);

        // Sets the motors to move based on the joystick input values
        if (!isReverse) {
            LMotors.move(LYAxis);
            RMotors.move(RYAxis);
        } else if (isReverse) {
            LMotors.move(RYAxis * -1);
            RMotors.move(LYAxis * -1);
        }
      }
    ```

    #nb_heading([Drive Curve], level: 1)
    The purpose of a drive curve is to give the driver more precise control over the power output of the drivetrain. Normally, the relationship between the position of the joystick and the power output to the drivetrain is linear:

    #align(center)[#image("./linear-control.svg", width: 50%)]

    However, this default value mapping does not make the best use of the joysticks because the driver will not need fine control of the speed of the motors when moving the robot at full speed. By using an exponential curve mapping instead of a linear mapping, we shift that control to when the robot is moving at slower speeds, which is more useful to the driver. In other words, larger changes in the joystick input result in smaller changes in real speed when driving slowly, but when the joystick is pushed to a high speed, the drivetrain jumps to full speed faster.

    To create the drive curve, we used the following formula created by Team 5225A The E-Bots PiLons #footnote([https://www.vexforum.com/t/vexcode-joystick-curving/76987]):

    #nb_admonition(type: "equation")[
      If:
      - $x$ is an integer from [-127, 127] representing the joystick input
      - $t$ is a constant value representing the severity of the curve

      #text(size: 15pt)[
        $ ( e^(-t/10) + e^( (abs(x)-127)/10) * (1-e^(t/10)) )x $
      ]
    ]

    The graph below is an exponential curve with a t-value of 20 compared to a linear graph.

    #align(center)[#image("./exponential-control.svg", width: 50%)]

    We implemented this into our code by creating a function that takes in the joystick value as a parameter and outputs the curved value as a float.

    ```cpp
      // Returns the curved output based off of the joystick value input as a parameter
      float GetCurveOutput(int input) {
          return (std::exp(-20/12.7)+std::exp((std::abs(input)-127)/12.7)*(1-std::exp(-20/12.7))) * input;
      }
    ```

    #nb_heading([Deadzone], level: 1)
    Very early into the Spin Up season last year, 53D encountered a problem with controller drift. Controller drift is when the controller joystick stops responding accurately to the driver's input. In our case, the problem was that even when the controller was at rest, the joystick was returning small input values when it should have been returning 0. This made it hard for our driver to get into exact positions because the robot would slowly drift out of those positions. To mitigate this issue this year, we implemented a deadzone where if the reported input value of the joystick was within the interval [-10, 10], the robot would treat the input as if it were 0, and would not move. Here is the code we used to do it:

    ```cpp
      if(abs(LYAxis) <= 10) LYAxis = 0;
      if(abs(RYAxis) <= 10) RYAxis = 0;
    ```

    #nb_heading([Final Drive Function], level: 1)
    Here is the completed tank drive function with the additional features:

    ```cpp
      // Integer variable to store the value of Axis 3
      short int LYAxis;
      // Integer variable to store the value of Axis 2
      short int RYAxis;
      // Boolean variable to keep track of whether the robot is moving in reverse or not
      bool isReverse = false;

      // Reverses the direction of the drivetrain
      void DirectionToggle() {
          isReverse = !isReverse;
          ControllerDisplay();
      }

      // Returns the curved output based off of the joystick value input as a parameter
      float GetCurveOutput(int input) {
          return (std::exp(-20/12.7)+std::exp((std::abs(input)-127)/12.7)*(1-std::exp(-20/12.7))) * input;
      }

      // Main drivetrain function called during each loop of driver control
      void SetDriveMotors() {
          // Update Joystick Values
          LYAxis = Controller.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y);
          RYAxis = Controller.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y);
          
          // Deadzone
          if(abs(LYAxis) <= 10) LYAxis = 0;
          if(abs(RYAxis) <= 10) RYAxis = 0;

          // Sets the motors to move based on the joystick input values
          if (!isReverse) {
              LMotors.move(GetCurveOutput(LYAxis));
              RMotors.move(GetCurveOutput(RYAxis));
          } else if (isReverse) {
              LMotors.move(GetCurveOutput(RYAxis) * -1);
              RMotors.move(GetCurveOutput(LYAxis) * -1);
          }
      }
    ```
  ]
)