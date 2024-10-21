execute as @e[tag=battlethrall] at @s run particle block{block_state:{Name:bone_block}} ~0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=battlethrall] at @s run particle block{block_state:{Name:bone_block}} ~0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=battlethrall] at @s run particle block{block_state:{Name:bone_block}} ~-0.2 ~1 ~0.2 0 0 0 0.01 10
execute as @e[tag=battlethrall] at @s run particle block{block_state:{Name:bone_block}} ~-0.2 ~1 ~-0.2 0 0 0 0.01 10
execute as @e[tag=battlethrall] at @s run particle block{block_state:{Name:bone_block}} ~ ~1 ~ 0 0 0 0.01 10
execute as @e[tag=battlethrall] at @s run particle block{block_state:{Name:bone_block}} ~ ~1.4 ~ 0 0 0 0.01 10
execute as @e[tag=battlethrall] at @s run particle block{block_state:{Name:bone_block}} ~ ~0.6 ~ 0 0 0 0.01 10
execute as @e[tag=battlethrall] at @s run teleport @s ~ -128 ~
execute as @e[tag=battlethrall] at @s run damage @s 1000

#summon skeleton ~ ~ ~ {CustomName:'[{"text":"Skeletown Resurrectionist"}]',PersistenceRequired:1b,Tags:["skeletown","resident","resurrectionist"],Team:skeletown,HandItems:[{id:bow,components:{enchantments:{levels:{"bro:enemy/heal_undead":1,"bro:enemy/summon_skeleton":1}},unbreakable:{}},count:1}],ArmorItems:[{},{},{},{id:diamond_helmet,components:{trim:{pattern:rib,material:netherite},enchantments:{levels:{"bro:enemy/summon_skeleton_armor":1,"bro:enemy/heal_undead_armor":1,protection:4}},unbreakable:{}},count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f]}

#summon bogged ~ ~ ~ {CustomName:'[{"text":"Skeletown Witchdoctor"}]',PersistenceRequired:1b,Tags:["skeletown","resident","witchdoctor"],Team:skeletown,HandItems:[{id:bow,components:{enchantments:{levels:{"bro:enemy/heal_undead":1,"bro:enemy/witchdoctor":1}},unbreakable:{}},count:1}],ArmorItems:[{},{},{},{id:diamond_helmet,components:{trim:{pattern:rib,material:netherite},enchantments:{levels:{"bro:enemy/witchdoctor_armor":1,"bro:enemy/heal_undead_armor":1,protection:4}},unbreakable:{}},count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f]}

#summon wither_skeleton ~ ~ ~ {CustomName:'[{"text":"Skeletown Berserker"}]',PersistenceRequired:1b,Tags:["skeletown","resident","berserker"],Team:skeletown,HandItems:[{id:stone_sword,components:{enchantments:{levels:{"bro:enemy/heal_undead":1,"bro:enemy/berserk":1}},unbreakable:{}},count:1}],ArmorItems:[{},{},{},{id:diamond_helmet,components:{trim:{pattern:rib,material:netherite},enchantments:{levels:{"bro:enemy/berserk_armor":1,"bro:enemy/heal_undead_armor":1,protection:4}},unbreakable:{}},count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f]}

#summon stray ~ ~ ~ {CustomName:'[{"text":"Skeletown Trickster"}]',PersistenceRequired:1b,Tags:["skeletown","resident","trickster"],Team:skeletown,HandItems:[{id:bow,components:{enchantments:{levels:{"bro:enemy/heal_undead":1,"bro:enemy/trick":1}},unbreakable:{}},count:1}],ArmorItems:[{},{},{},{id:diamond_helmet,components:{trim:{pattern:rib,material:netherite},enchantments:{levels:{"bro:enemy/trick_armor":1,"bro:enemy/heal_undead_armor":1,protection:4}},unbreakable:{}},count:1}],HandDropChances:[0f],ArmorDropChances:[0f,0f,0f,0f]}