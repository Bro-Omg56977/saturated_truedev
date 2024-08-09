#schedules the function to happen every three seconds

#no more golemancy
execute as @e[tag=golemancerstack] at @s if entity @s[tag=golemancerstack,tag=!golemancerstack2,tag=!golemancerstack3,tag=!golemancerstack4] run tag @s remove golemancerstack
execute as @e[tag=golemancerstack] at @s if entity @s[tag=golemancerstack,tag=golemancerstack2,tag=!golemancerstack3,tag=!golemancerstack4] run tag @s remove golemancerstack2
execute as @e[tag=golemancerstack] at @s if entity @s[tag=golemancerstack,tag=golemancerstack2,tag=golemancerstack3,tag=!golemancerstack4] run tag @s remove golemancerstack3
execute as @e[tag=golemancerstack] at @s if entity @s[tag=golemancerstack,tag=golemancerstack2,tag=golemancerstack3,tag=golemancerstack4] run tag @s remove golemancerstack4

#should "downgrade" a stack every second for the zombie summon
execute as @e[tag=zombieressurect] at @s if entity @s[tag=zombieressurect,tag=!zombieressurect2,tag=!zombieressurect3,tag=!zombieressurect4] run tag @s remove zombieressurect
execute as @e[tag=zombieressurect] at @s if entity @s[tag=zombieressurect,tag=zombieressurect2,tag=!zombieressurect3,tag=!zombieressurect4] run tag @s remove zombieressurect2
execute as @e[tag=zombieressurect] at @s if entity @s[tag=zombieressurect,tag=zombieressurect2,tag=zombieressurect3,tag=!zombieressurect4] run tag @s remove zombieressurect3
execute as @e[tag=zombieressurect] at @s if entity @s[tag=zombieressurect,tag=zombieressurect2,tag=zombieressurect3,tag=zombieressurect4] run tag @s remove zombieressurect4

#same as above, but for the stray
execute as @e[tag=skeletonanimate] at @s if entity @s[tag=skeletonanimate,tag=!skeletonanimate2,tag=!skeletonanimate3,tag=!skeletonanimate4] run tag @s remove skeletonanimate
execute as @e[tag=skeletonanimate] at @s if entity @s[tag=skeletonanimate,tag=skeletonanimate2,tag=!skeletonanimate3,tag=!skeletonanimate4] run tag @s remove skeletonanimate2
execute as @e[tag=skeletonanimate] at @s if entity @s[tag=skeletonanimate,tag=skeletonanimate2,tag=skeletonanimate3,tag=!skeletonanimate4] run tag @s remove skeletonanimate3
execute as @e[tag=skeletonanimate] at @s if entity @s[tag=skeletonanimate,tag=skeletonanimate2,tag=skeletonanimate3,tag=skeletonanimate4] run tag @s remove skeletonanimate4

#same as above, but for the pillager
execute as @e[tag=pillageranimate] at @s if entity @s[tag=pillageranimate,tag=!pillageranimate2,tag=!pillageranimate3,tag=!pillageranimate4] run tag @s remove pillageranimate
execute as @e[tag=pillageranimate] at @s if entity @s[tag=pillageranimate,tag=pillageranimate2,tag=!pillageranimate3,tag=!pillageranimate4] run tag @s remove pillageranimate2
execute as @e[tag=pillageranimate] at @s if entity @s[tag=pillageranimate,tag=pillageranimate2,tag=pillageranimate3,tag=!pillageranimate4] run tag @s remove pillageranimate3
execute as @e[tag=pillageranimate] at @s if entity @s[tag=pillageranimate,tag=pillageranimate2,tag=pillageranimate3,tag=pillageranimate4] run tag @s remove pillageranimate4