replaceitem entity @p[distance=..2,gamemode=!creative] weapon.mainhand minecraft:lingering_potion{CustomPotionColor: 13893483, HideFlags: 32, display: {Lore: ['{"text":""}','{"text":"自身の経験値を0にする。","color":"white","italic":false}'], Name: '{"text":"EXP Zero","color":"light_purple","italic":false}'}, ItemName: Exp_Zero}
particle minecraft:dust 1 1 0.25 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 2
experience set @p 0 levels
experience set @p 0 points
kill @s