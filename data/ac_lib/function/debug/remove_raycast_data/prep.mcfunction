# Debug, removes leftover data from any broken raycasts. Oops.
# May need to be run twice to work.
gamerule maxCommandChainLength 1000000
schedule function ac_lib:debug/remove_raycast_data/main 5t replace