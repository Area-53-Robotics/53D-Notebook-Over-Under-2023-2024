#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1 - Gear Ratio",
  type: "select",
  start_date: datetime(year: 2023, month: 7, day: 29),
  attendance: "Ishika, Eric, Emma",
)

#nb_todo(date: datetime(year: 2023, month: 7, day: 29), schedule: "Behind Schedule")[
  + Select the best gear ratio for the tank drive using a decision matrix. (Everyone)
]

#nb_admonition(type: "select", title: "Decision Matrix")[
  *Ranking Criteria:*
  - Inches per Second - The expected speed of the drivetrain using the gear ratio.
  - RPM - The expected output RPM using the gear ratio.
  - Strength - The amount of force the drivetrain can generate using the gear ratio.
  - Maneuverability - The responsiveness of the drivetrain using the gear ratio.

  *Number Key:*
  - 4 - Excellent
  - 3 - Fair
  - 2 - Poor
  - 1 - Very Poor
  - 0 - Incapable
]

#nb_decision_matrix(
  criteria: (
    ("Inches per Second", 5),
    ("RPM", 4),
    ("Strength", 4),
    ("Maneuverability", 4),
    ),
  choices: (
    ("5:3 Ratio,\n4 Inch Wheel,\n200 RPM Motor", 4, 3, 3, 2),
    ("3:5 Ratio,\n4 Inch Wheel,\n600 RPM Motor", 4, 4, 2, 3),
    ("5:3 Ratio,\n3.25 Inch Wheel,\n200 RPM Motor", 2, 3, 3, 2),
    ("3:5 Ratio,\n3.25 Inch Wheel,\n600 RPM Motor", 3, 4, 4, 4),
    ),
)

#nb_admonition(type: "select", title: "Final Selection")[
  We decided to use a 3.25 inch wheel powered by a 600 RPM motor geared with a 3:5 gear ratio.
]

+ *Ratio* - The 3:5 Ratio contributes to a smoother motion, reduced friction, and improved torque distribution. It also offers us a versatile choice of suitable ratios and is compatible with most VEX robotics motors.
+ *Wheel Size* - The choice of a 3.25-inch wheel offers greater maneuverability due to its smaller size. The 3.25-inch wheel also strikes a balance between greater stability and smoother motion and enhances maneuverability and acceleration. 
+ *Motor* - A 600 RPM motor represents a deliberate compromise between speed and torque. The selection of this motor speed is likely driven by the specific requirements of the system. Higher RPM can deliver faster motion but may sacrifice torque, while lower RPM provides more torque at the expense of speed.


#nb_cad(folder: "drivetrain-1", sheets: 5)