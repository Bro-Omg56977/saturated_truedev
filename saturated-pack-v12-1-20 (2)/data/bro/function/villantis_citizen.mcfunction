give @s potion[potion_contents={custom_color:16701605,custom_effects:[{id:regeneration,duration:3000,amplifier:3,show_particles:0b}]},custom_name='["",{"text":"Partial Villantis Citizenship Potion","italic":false}]',lore=['["",{"text":"a re-usable potion that puts the consumer into the Villantis team","italic":false}]'],custom_data={satvillantispotion:1b}]
execute as @s run team leave @s
execute as @s run team join villantis @s
tag @s[tag=!villantis] add villantis
advancement revoke @s only bro:villantistest