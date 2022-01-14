#> asset:mob/0185.tutankhamen/tick/thunder/05.vfx_and_damage1
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/thunder/01.main

# 実行者はAEC、各スコアで分岐
    execute if score @s 55.Tick matches 99 as @e[type=area_effect_cloud,tag=55.SkillThunderMaker,distance=..40,sort=random,limit=1] at @s run function asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2
    execute if score @s 55.Tick matches 101 as @e[type=area_effect_cloud,tag=55.SkillThunderMaker,distance=..40,sort=random,limit=1] at @s run function asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2
    execute if score @s 55.Tick matches 103 as @e[type=area_effect_cloud,tag=55.SkillThunderMaker,distance=..40,sort=random,limit=1] at @s run function asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2
    execute if score @s 55.Tick matches 105 as @e[type=area_effect_cloud,tag=55.SkillThunderMaker,distance=..40,sort=random,limit=1] at @s run function asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2
    execute if score @s 55.Tick matches 107 as @e[type=area_effect_cloud,tag=55.SkillThunderMaker,distance=..40,sort=random,limit=1] at @s run function asset:mob/0185.tutankhamen/tick/thunder/06.vfx_and_damage2