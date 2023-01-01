#> asset:mob/0120.convict/tick/2.summon/4.to_slash
#
# 斬撃攻撃へ移行する
#
# @within function asset:mob/0120.convict/tick/2.summon/2.first_tick

# 今ついているTagを削除
    tag @s remove 3C.SkillSummon

# 斬撃攻撃のTagをつける
    tag @s add 3C.SkillSlash

# スコアを変える
    scoreboard players set @s 3C.Tick 16

# ポーズ
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [177f,322f,88f]
    data modify entity @e[type=armor_stand,tag=3C.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [54f,0f,0f]
# プレイヤーを見る
    execute at @s facing entity @p eyes run function asset:mob/0120.convict/tick/move/teleport