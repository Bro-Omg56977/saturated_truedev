#tickfunction literally stolen from ultris. thanks limesplatus

#insert all of the randomizers here. also function starts after this
execute if score @s sat.fireworktick.0 matches 1 run scoreboard objectives add sat.fireworktick.1 dummy
execute if score @s sat.fireworktick.0 matches 1 run scoreboard players add @s sat.fireworktick.1 1

#particle. dunno what part this is as of writing
execute if score @s sat.fireworktick.0 matches 1 run execute at @s run particle flame ~ ~ ~ 0 0 0 .005 1 force @a[distance=..64]

#randomizer1
execute if score @s sat.fireworktick.0 matches 1 run scoreboard objectives add sat.fireworkrandomizer.0 dummy
execute if score @s sat.fireworktick.0 matches 1 run execute store result score @s sat.fireworkrandomizer.0 run random value 1..8

execute if score @s sat.fireworktick.0 matches 1 run kill @e[distance=..0.01,type=item,limit=1]

#randomized directions
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 1 at @s run tp @s ~ ~ ~ 0 ~
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 2 at @s run tp @s ~ ~ ~ 45 ~
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 3 at @s run tp @s ~ ~ ~ 90 ~
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 4 at @s run tp @s ~ ~ ~ 135 ~

execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 5 at @s run tp @s ~ ~ ~ 180 ~
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 6 at @s run tp @s ~ ~ ~ 225 ~
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 7 at @s run tp @s ~ ~ ~ 270 ~
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 8 at @s run tp @s ~ ~ ~ 315 ~


#randomizes... again. should work even with the same scoreboard. im not... actually sure
execute store result score @s sat.fireworkrandomizer.0 run random value 1..6

execute if score @s sat.fireworktick.0 matches 1 run kill @e[distance=..0.01,type=item,limit=1]

#randomized directions yet again. scoreboard.
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 1 at @s run tp @s ~ ~ ~ ~ 30
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 2 at @s run tp @s ~ ~ ~ ~ 20
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 3 at @s run tp @s ~ ~ ~ ~ 10

execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 4 at @s run tp @s ~ ~ ~ ~ -10
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 5 at @s run tp @s ~ ~ ~ ~ -20
execute if score @s sat.fireworktick.0 matches 1 if score @s sat.fireworkrandomizer.0 matches 6 at @s run tp @s ~ ~ ~ ~ -30


#i deleted something here but forgot what it was
execute if score @s sat.fireworktick.0 matches 1 run kill @e[distance=..0.01,type=item,limit=1]


#tired of randomized stuff? too bad!!!
#add yet another scoreboard here
execute if score @s sat.fireworktick.0 matches 1 run scoreboard objectives add sat.fireworkrandomizer.1 dummy
execute store result score @s sat.fireworkrandomizer.1 run random value 1..3

execute if score @s sat.fireworktick.0 matches 1..10 if score @s sat.fireworkrandomizer.1 matches 1 if block ^ ^ ^ air at @s run tp @s ^ ^ ^.2
execute if score @s sat.fireworktick.0 matches 1..10 if score @s sat.fireworkrandomizer.1 matches 2 if block ^ ^ ^ air at @s run tp @s ^ ^ ^.4
execute if score @s sat.fireworktick.0 matches 1..10 if score @s sat.fireworkrandomizer.1 matches 3 if block ^ ^ ^ air at @s run tp @s ^ ^ ^.6

#randomizes score again
execute store result score @s sat.fireworkrandomizer.1 run random value 1..3

execute if score @s sat.fireworktick.0 matches 1..10 if score @s sat.fireworkrandomizer.1 matches 1 if block ^ ^ ^ air at @s run tp @s ^ ^ ^.1
execute if score @s sat.fireworktick.0 matches 1..10 if score @s sat.fireworkrandomizer.1 matches 2 if block ^ ^ ^ air at @s run tp @s ^ ^ ^.2
execute if score @s sat.fireworktick.0 matches 1..10 if score @s sat.fireworkrandomizer.1 matches 3 if block ^ ^ ^ air at @s run tp @s ^ ^ ^.3

#particle
execute if score @s sat.fireworktick.1 matches 64.. at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 .15 2 force @a[distance=..64]

#i know this is the end of the function but as of writing this i have no idea how to do it
execute if score @s sat.fireworktick.1 matches 128 at @s run function bro:magic/superfire/fire_firework_end
execute if score @s sat.fireworktick.1 matches 128.. at @s run kill @s

#repeats the functino
execute if score @s sat.fireworktick.0 matches 1 run function bro:magic/superfire/fire_firework_tick