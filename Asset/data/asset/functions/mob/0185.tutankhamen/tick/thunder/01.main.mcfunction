#> asset:mob/0185.tutankhamen/tick/thunder/01.main
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/04.attack_branch

# 雷を落とすAECを5個呼ぶ
    execute if entity @s[scores={55.Tick=0}] run function asset:mob/0185.tutankhamen/tick/thunder/02.summon_thunder1

    execute if entity @s[scores={55.Tick=1..10}] at @e[type=area_effect_cloud,tag=55.SkillThunderMaker,distance=..64,limit=5] run function asset:mob/0185.tutankhamen/tick/thunder/04.thunder_position_vfx

# 雷を落とす
    execute if entity @s[scores={55.Tick=19..27}] unless score @s 55.Tick matches 120 unless score @s 55.Tick matches 122 unless score @s 55.Tick matches 124 unless score @s 55.Tick matches 126 run function asset:mob/0185.tutankhamen/tick/thunder/05.vfx_and_damage1

# リセット
    execute if entity @s[scores={55.Tick=27..}] run function asset:mob/0185.tutankhamen/tick/05.reset