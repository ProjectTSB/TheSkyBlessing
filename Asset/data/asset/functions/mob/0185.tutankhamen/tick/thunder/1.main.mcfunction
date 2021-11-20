#> asset:mob/0185.tutankhamen/tick/thunder/1.main
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/4.attack_branch

# 雷を落とすAECを5個呼ぶ
    execute if score @s 55.Tick matches 100 run function asset:mob/0185.tutankhamen/tick/thunder/2.summon_thunder1

    execute if score @s 55.Tick matches 101..110 at @e[type=area_effect_cloud,tag=55.SkillThunderMaker,distance=..64,limit=5] run function asset:mob/0185.tutankhamen/tick/thunder/4.thunder_position_vfx

# 攻撃
    execute if score @s 55.Tick matches 119..127 unless score @s 55.Tick matches 120 unless score @s 55.Tick matches 122 unless score @s 55.Tick matches 124 unless score @s 55.Tick matches 126 run function asset:mob/0185.tutankhamen/tick/thunder/5.vfx_and_damage1

# リセット
    execute if score @s 55.Tick matches 127.. run function asset:mob/0185.tutankhamen/tick/5.reset