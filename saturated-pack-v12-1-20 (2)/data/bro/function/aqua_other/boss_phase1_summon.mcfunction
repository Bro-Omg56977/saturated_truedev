#sound effects
summon piglin_brute ~ ~ ~ {CustomName:'[{"text":"electri-psycher"}]',Health:40,Glowing:1b,PersistenceRequired:1b,Silent:1b,Tags:["sat.aquaboss.phase1"],Team:sunken,active_effects:[{id:invisibility,duration:999999,amplifier:0,show_particles:0b},{id:fire_resistance,duration:999999,amplifier:0,show_particles:0b}],HandItems:[{id:iron_sword,components:{enchantments:{"bro:magic/superelec/imbue_weapon":1,"bro:enemy/boss/aqua/phase1_weapon":1}},count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{id:chainmail_boots,components:{trim:{pattern:rib,material:copper}}},{id:chainmail_leggings,components:{trim:{pattern:rib,material:copper}}},{id:iron_chestplate,components:{trim:{pattern:rib,material:copper},enchantments:{levels:{"bro:enemy/boss/aqua/phase1_armor":1,"bro:magic/superelec/imbue_armor":1,protection:1}},unbreakable:{}},count:1},{id:chainmail_helmet,components:{trim:{pattern:rib,material:copper}}}],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:max_health,base:40f}]}
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 .5
playsound minecraft:entity.firework_rocket.blast hostile @a[distance=..32] ~ ~ ~ 1 .5
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 3 .7
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 3 2
playsound minecraft:entity.wither.hurt hostile @a[distance=..32] ~ ~ ~ 3 .5
playsound minecraft:entity.wither.hurt hostile @a[distance=..32] ~ ~ ~ 3 .5
playsound minecraft:block.end_portal.spawn hostile @a[distance=..32] ~ ~ ~ 3 .5