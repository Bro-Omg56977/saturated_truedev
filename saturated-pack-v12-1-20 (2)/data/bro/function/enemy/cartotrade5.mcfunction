#not gonna lie... stolen from Nova. i just liked the idea of it too much
data modify entity @s Offers.Recipes prepend value {buyB:{id:"minecraft:heart_pottery_sherd",count:1,components:{"minecraft:item_name":'{"bold":true,"text":"Favor Tablet"}',"minecraft:lore":['{"bold":true,"text":"A documented favor"}']}},buy:{id:"minecraft:map",count:1},sell:{id:"minecraft:stone",count:1},maxUses:1}

loot replace entity @s weapon.mainhand loot bro:chests/villantis_explorer5

data modify entity @s Offers.Recipes[0].sell merge from entity @s HandItems[0]

execute as @e[tag=villagercartographer] run tag @s add villager
execute as @e[tag=villagercartographer] run tag @s remove villagercartographer