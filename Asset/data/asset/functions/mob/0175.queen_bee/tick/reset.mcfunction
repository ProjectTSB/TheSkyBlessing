#> asset:mob/0175.queen_bee/tick/reset
#
#
#
# @within function asset:mob/0175.queen_bee/tick/**/**

# タグ消す
    tag @s remove 4V.SkillNeedle
    tag @s remove 4V.SkillSummon
    tag @s remove 4V.SkillTackle
# モデル戻す
    item replace entity @e[type=armor_stand,tag=4V.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stone{CustomModelData:20052}
# スコア戻す
    scoreboard players set @s 4V.Tick -50

