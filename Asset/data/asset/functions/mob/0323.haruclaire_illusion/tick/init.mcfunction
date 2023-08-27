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
    execute if entity @s[tag=8Z.WarpStart] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/2_warp_start/play
    execute if entity @s[tag=8Z.WarpSlash] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/3_warp_slash/play
    execute if entity @s[tag=8Z.Laser0] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/4_laser_0/play
    execute if entity @s[tag=8Z.Laser1] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/5_laser_1/play
    execute if entity @s[tag=8Z.Laser2] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/6_laser_2/play
    execute if entity @s[tag=8Z.Charge] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/7_charge/play
    execute if entity @s[tag=8Z.ChargeSlash0] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/8_charge_slash_0/play
    execute if entity @s[tag=8Z.ChargeSlash1] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/9_charge_slash_1/play
    execute if entity @s[tag=8Z.RainStart] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/10_rain_start/play
    execute if entity @s[tag=8Z.RainShot0] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/11_rain_shot_0/play
    execute if entity @s[tag=8Z.RainShot1] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/12_rain_shot_1/play
    execute if entity @s[tag=8Z.RainLaser] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/13_rain_laser/play
    execute if entity @s[tag=8Z.Spear] as @e[type=item_display,tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/animations/14_spear/play