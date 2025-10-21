# Picks a random value between the specified minimum and maximum.
# /function ac_lib:mechanic/rng/value_range {"r_min":"x","r_max":"y"}

$execute store result score GameRef.RNG TempValue1 run random value $(r_min)..$(r_max)