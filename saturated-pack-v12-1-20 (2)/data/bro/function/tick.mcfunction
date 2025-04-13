kill @e[type=item,predicate=bro:item_deleter]
execute as @e[tag=sat.aquaboss.keyinteract,type=marker] run function bro:aqua_other/simple_particle
execute as @e[tag=sat.altar.interaction.marker,type=marker] run function bro:pale_other/simple_particle
execute as @e[tag=sat.altar.interaction.marker.activated,type=marker] run function bro:pale_other/simple_particle_more