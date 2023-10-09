#> asset:mob/0323.haruclaire_illusion/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0323.haruclaire_illusion/tick/1.trigger

# タイマー増加
    scoreboard players add @s 8Z.AnimationTimer 1

# 初期化
    execute if score @s 8Z.AnimationTimer matches 1 run function asset:mob/0323.haruclaire_illusion/tick/init

# 突きの場合，前方に移動
    execute if score @s 8Z.AnimationTimer matches 2 if entity @s[tag=8Z.Spear] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run tp @s ^ ^ ^0.8
    execute if score @s 8Z.AnimationTimer matches 2 if entity @s[tag=8Z.Spear] run tp @s ^ ^ ^0.8
    execute if score @s 8Z.AnimationTimer matches 4 if entity @s[tag=8Z.Spear] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run tp @s ^ ^ ^0.8
    execute if score @s 8Z.AnimationTimer matches 4 if entity @s[tag=8Z.Spear] run tp @s ^ ^ ^0.8
    
# カウンターの場合，横に移動
    execute if score @s 8Z.AnimationTimer matches 3 if entity @s[tag=8Z.Charge] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run tp @s ^1.5 ^ ^
    execute if score @s 8Z.AnimationTimer matches 3 if entity @s[tag=8Z.Charge] run tp @s ^1.5 ^ ^

# 消去
    execute if score @s 8Z.AnimationTimer matches 6.. run function asset:mob/0323.haruclaire_illusion/tick/kill
