$playsound ac_lib:music.$(name)$(beat) record @a ~ ~ ~ 1.5 1
execute if data storage ac_lib:music {data:{temp:{song:{particles:"true"}}}} run particle minecraft:note ~ ~1 ~ .5 .5 .5 1 3 force @a