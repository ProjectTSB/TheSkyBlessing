replaceitem entity @p[distance=..2,gamemode=!creative] weapon.mainhand minecraft:lingering_potion{display:{Name:'{"text":"Super Teleport","color":"light_purple","italic":false}',Lore:['{"text":""}','{"text":"カーソルを合わせた地点へとワープする。","color":"white","italic":false}']},HideFlags:32,ItemName:Super_Teleport,CustomPotionColor:10750207} 1
execute as @p at @s positioned ~ ~1.67 ~ run function useful_tools:warp
kill @s

