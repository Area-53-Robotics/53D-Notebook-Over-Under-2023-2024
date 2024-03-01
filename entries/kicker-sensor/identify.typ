#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1.1 - Sensor",
  type: "identify",
  start_date: datetime(year: 2024, month: 2, day: 2),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2024, month: 2, day: 2),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Identify the use cases for a sensor on the kicker (Ajibola & Ishika)"),
    (true, "Build the new kicker improvements and optical sensor mounting (Jin & Makhi)"),
    (true, "Build the flex wheel intake (Eric and Rory)"),
    (true, "Test the flex wheel intake (Everyone)"),
  )
)

#grid(
  columns: 2,
  [
    When evaluating robots at signature events, a trend we noticed among other teams was sensors on their robots, specifically on their kickers. Sensors can detect if a triball has been placed on a robot. When the sensor detects a triball, the kicker is programmed to pull down and fire. This prevents any dry firing on the robot. Dry firing converts potential energy to friction all over our robot which wears our robot down.
  ],

  figure(
    image("./identify/96504C.png", height: 25%),
    caption: [96504C Exotek's robot at the Sugar Rush signature event has a distance sensor on their robot. The sensor detects and fires when the triball reaches a specific distance from the sensor.]
  )
)

#tablex(
  columns: 2,

  cellx(colspan: 2, fill: gray)[Distance Sensor],
  
  image("./identify/distance-sensor.png"),

  [
    - The V5 Distance Sensor sends out a pulse of classroom-safe laser light and measures the amount of time it takes for the pulse to be reflected. This allows for a calculation of distance.
    - The V5 Distance Sensor can also be used to detect an object and determine the relative size of the object. The approximate size of an object is reported as small, medium, or large.
    - The sensor's Class 1 Laser is similar to the lasers used on modern cell phones for head detection. The laser allows the sensor to have a very narrow field of view, so detection is always directly in front of the sensor.
  ]
)

#tablex(
  columns: 2,

  cellx(colspan: 2, fill: gray)[Optical Sensor],

  image("./identify/optical-sensor.png"),

  [
    - The sensor's color detection works best when the object is closer than 100 millimeters (mm) or approximately 3.9 inches.
    - The proximity sensor measures reflected lR light intensity. This will cause the values to change with ambient light and object reflectivity
  ]
)

#nb_admonition(type: "note")[
  Unfortunately our team does not have any distance sensors, only optical sensors. Therefore, we will have to use an optical sensor.
]