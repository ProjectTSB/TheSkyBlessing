replaceitem entity @p[distance=..2,gamemode=!creative] weapon.mainhand minecraft:lingering_potion{CustomPotionColor: 16711824, HideFlags: 32, display: {Lore: ['{"text":""}','{"text":"自身の体力と空腹度を全快する。","color":"white","italic":false}'], Name: '{"text":"Health Restore","color":"light_purple","italic":false}'}, ItemName: "Health_Restore"}
particle minecraft:dust 1 0.25 0.5 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
effect clear @p minecraft:hunger
effect clear @p minecraft:wither
effect clear @p minecraft:poison
effect give @p minecraft:instant_health 1 100 true
effect give @p minecraft:saturation 1 255 true
kill @s