tellraw @s "Loading Saturated Explorer maps..."
tellraw @s "Heads up, this will take a moment!"
execute as @e[type=villager,tag=villantiscartographer] run function bro:enemy/cartotrade1

tag @s add satadvancemnetbuffer
schedule function bro:enemy/cartotraderevoke 10s