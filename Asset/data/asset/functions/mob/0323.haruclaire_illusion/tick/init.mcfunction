#> asset:mob/0323.haruclaire_illusion/tick/init
#
# Mobのtick時の処理
#
# @within function asset:mob/0323.haruclaire_illusion/tick/2.tick

# animated javaモデル召喚
        execute rotated ~ 0 run function animated_java:haruclaire_illusion/summon

# アニメーション再生    
    execute if entity @s[tag=8Z.Upper] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/0_upper/play
    execute if entity @s[tag=8Z.Lower] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/1_lower/play