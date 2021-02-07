particle minecraft:crit ~ ~-0.5 ~ 0 0 0 0.5 10
playsound minecraft:ui.button.click player @a ~ ~ ~ 1 2
replaceitem entity @p weapon.mainhand minecraft:lingering_potion{display:{Name:'{"text":"Switch Gamemode","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"ゲームモードを切り替える。","color":"white","italic":false}']},HideFlags:32,ItemName:Switch_Gamemode,CustomPotionColor:7925247} 1
gamerule sendCommandFeedback false
execute if entity @p[gamemode=survival,distance=..2] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["U.Tools_Creative"]}
execute if entity @p[gamemode=creative,distance=..2] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["U.Tools_Survival"]}
kill @s