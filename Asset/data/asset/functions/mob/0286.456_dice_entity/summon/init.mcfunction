#> asset:mob/0286.456_dice_entity/summon/init
#
#
#
# @within function asset:mob/0286.456_dice_entity/summon/2.summon

# 乱数決定生成
    # 疑似乱数取得
        execute store result score @s Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation @s Temporary %= $3 Const
    # 0~2の値を4~6になるように4加算
        scoreboard players add @s Temporary 4
    # 保持
        scoreboard players operation @s CU.RandomCount = @s Temporary

# リセット
    scoreboard players reset @s Temporary