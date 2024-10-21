#make it float and then makes it literally dissapear
execute as @e[tag=bromannequin] run effect give @s levitation 10 0 true
execute as @e[tag=bromannequin] run schedule function bro:mannequin/vanish2 5s replace