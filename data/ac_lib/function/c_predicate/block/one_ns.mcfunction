# Checks if any 1 block by this entity's feet is a non_solid block.
execute if block ~-0.5 ~-0.51 ~-0.5 #ac_lib:non_solid run return 1
execute if block ~0.5 ~-0.51 ~-0.5 #ac_lib:non_solid run return 1
execute if block ~-0.5 ~-0.51 ~0.5 #ac_lib:non_solid run return 1
execute if block ~0.5 ~-0.51 ~0.5 #ac_lib:non_solid run return 1