# Display particles when effect, then summons a husk
execute as @e[tag=illageanimate4] at @s run playsound minecraft:block.bell.resonate ambient @s[tag=illageanimate4]
execute as @e[tag=illageanimate4] at @s run particle block{block_state:{Name:dark_oak_planks}} ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=illageanimate4] at @s run particle block{block_state:{Name:dark_oak_planks}} ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=illageanimate4] at @s run particle block{block_state:{Name:dark_oak_planks}} ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=illageanimate4] at @s run particle block{block_state:{Name:dark_oak_planks}} ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=illageanimate4] at @s run particle block{block_state:{Name:dark_oak_planks}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=illageanimate4] at @s run particle block{block_state:{Name:dark_oak_planks}} ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=illageanimate4] at @s run particle block{block_state:{Name:dark_oak_planks}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=illageanimate4] at @s run summon vindicator ~ ~ ~ {Team:"golemancy",PersistenceRequired:1b,Health:100f,Johnny:1b,PatrolLeader:1b,Patrolling:1b,Tags:["summonedbyplayer"],CustomName:"Doruuk Prime",equipment:{feet:{id:leather_boots,count:1},legs:{id:leather_leggings,count:1},chest:{id:diamond_chestplate,count:1},head:{id:leather_helmet,count:1},mainhand:{id:iron_axe,components:{enchantments:{levels:{bro:magic/basic/pillager_summon:1}}},count:1},offhand:{id:air,count:1}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000,offhand:0.000},attributes:[{id:"minecraft:max_health",base:100}]}
execute as @e[tag=illageanimate4] run schedule function bro:magic/basic/summon_distract 5 replace
execute as @e[tag=illageanimate4] run function bro:magic/basic/illagsumm_remove
