replaceitem entity @p[distance=..2,gamemode=!creative] weapon.mainhand minecraft:lingering_potion{display:{Name:'{"text":"Banish","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"全てのモンスターを消し去る。","color":"white","italic":false}','[{"text":"⚠","color":"red","italic":false},{"text":"取り扱い注意","color":"white","italic":false},{"text":"⚠","color":"red","italic":false}]']},HideFlags:32,ItemName:Banish,CustomPotionColor:16227} 
particle minecraft:dust 0.25 0.25 1 1 ~ ~-0.5 ~ 0.25 0.5 0.25 0 10
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
difficulty peaceful 
schedule function useful_tools:return_to_normal 2t
kill @s