# stacks up summoner stacks
tag @s[tag=golemancerstack3] add golemancerstack4
tag @s[tag=golemancerstack2] add golemancerstack3
tag @s[tag=golemancerstack] add golemancerstack2
tag @s add golemancerstack
execute as @e[tag=golemancerstack4] run team join golemancy
execute as @e[tag=golemancerstack4] if entity @s[tag=golemancerstack4] run function bro:magic/basic/summoner_remove
