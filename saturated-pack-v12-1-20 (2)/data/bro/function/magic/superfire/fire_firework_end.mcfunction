#summons something that damages nearby ppl
summon firework_rocket ~ ~1 ~ {FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{shape:"small_ball",has_twinkle:1b,has_trail:1b,colors:[I;15805440],fade_colors:[I;9708589]},{shape:small_ball,has_twinkle:1b,has_trail:1b,colors:[I;16748585],fade_colors:[I;8993824]}]}}}}
kill @s[type=marker]
#stops the ticking
scoreboard players set @s sat.fireworktick.0 0
scoreboard players set @s sat.fireworktick.1 0