#> asset:artifact/0290.carefully_collector/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0290.carefully_collector/trigger/2.check_condition
#> private
# @private
#declare tag CarefullyCollect

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 判定
        execute if block ~ ~ ~ chest run scoreboard players set @s Temporary 1
        execute if block ~ ~ ~ trapped_chest run scoreboard players set @s Temporary 2
    # summon
        summon item ~ ~ ~ {Tags:[CarefullyCollect],Item:{id:"minecraft:barrier",Count:1b}}

    # データ処理
        data modify storage asset:temp block set from block ~ ~ ~

        data modify storage asset:temp chest.Count set value 1b
        data modify storage asset:temp chest.id set from storage asset:temp block.id
        data modify storage asset:temp chest.tag.BlockEntityTag.Items set from storage asset:temp block.Items
        data modify storage asset:temp chest.tag.BlockEntityTag.Lock set from storage asset:temp block.Lock
        data modify storage asset:temp chest.tag.display.Name set from storage asset:temp block.CustomName
        # //反映
        data modify entity @e[type=item,tag=CarefullyCollect,distance=..0,limit=1] Item set from storage asset:temp chest

    # 演出
        execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 0.408 0.894 0.29 0.5 ~ ~ ~ 0.4 0.4 0.4 0 250 normal @a
        playsound entity.arrow.hit_player player @a ~ ~ ~ 1 1.5 1

    # リセット
        setblock ~ ~ ~ air
        scoreboard players reset @s Temporary
        data remove storage asset:temp block
        data remove storage asset:temp chest
        tag @e[type=item,tag=CarefullyCollect,distance=..0] remove CarefullyCollect