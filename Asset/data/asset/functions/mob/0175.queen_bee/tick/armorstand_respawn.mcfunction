#> asset:mob/0175.queen_bee/tick/armorstand_respawn
#
#
#
# @within function asset:mob/0175.queen_bee/tick/2.tick


# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=4V.ArmorStand] at @s unless entity @e[type=ravager,tag=4V.Angel,distance=..0.1] run kill @s
# 見た目用のアマスタを召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["4V.ArmorStand","4V.ArmorStandThis","Object","Uninterferable"],ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:20052}}]}
# 位置をあわせる
    tp @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] @s
# タグを消す
    tag @e[type=armor_stand,tag=4V.ArmorStandThis,distance=..0.01] remove 4V.ArmorStandThis
# スコアも一応戻す
    scoreboard players set @s 4V.Tick -30

# スキル発動中に移動した場合困るので消す
    tag @s remove 4V.SkillTackle
    tag @s remove 4V.SkillSummon
    tag @s remove 4V.SkillNeedle

# 強制的にテレポする
    function asset:mob/0175.queen_bee/tick/teleport