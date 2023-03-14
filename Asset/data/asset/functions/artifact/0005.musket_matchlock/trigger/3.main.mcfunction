#> asset:artifact/0005.musket_matchlock/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0005.musket_matchlock/trigger/2.check_condition

#> private
# @private
    #declare tag 5.MatchlockInit
    #declare tag 5.SpreadMarker

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# 火薬消費
    clear @s gunpowder 1

# エンダーパールwithアーマースタンド召喚
    execute anchored eyes run summon snowball ^ ^ ^1 {Tags:["5.MatchlockInit","5.MatchlockEntity"],Item:{Count:1b,id:"minecraft:blackstone"},Passengers:[{id:"minecraft:marker",Tags:["5.MatchlockIndicator","5.MatchlockInit"]}]}

# Ownerセット
    scoreboard players operation @e[type=marker,tag=5.MatchlockInit,distance=..3,limit=1] 5.OwnerId = @s UserID

# 5.SpreadMarkerを視点50m先の0.86m以内のランダムな位置に移動させる
    summon marker ^ ^ ^1 {Tags:["5.SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 20f
    data modify storage lib: Argument.Spread set value 0.35f
    execute as @e[type=marker,tag=5.SpreadMarker,limit=1] run function lib:forward_spreader/circle

# 5.MatchlockIndicatorを進行方向に向ける
    execute as @e[type=marker,tag=5.MatchlockInit,distance=..3,limit=1] at @s facing entity @e[type=marker,tag=5.SpreadMarker,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 雪玉のmotionセット
    data modify storage lib: Argument.VectorMagnitude set value 5.0
    execute as @e[type=snowball,tag=5.MatchlockInit,distance=..3] at @s facing entity @e[type=marker,tag=5.SpreadMarker,limit=1] feet run function lib:motion/

# 命中したことを管理するscheduleをセット
    schedule function asset:artifact/0005.musket_matchlock/trigger/3.1.entity_manager 1t replace

# 反動
    tp @s ~ ~ ~ ~ ~-10

# 飛翔時間スコアセット
    scoreboard players set @e[type=marker,tag=5.MatchlockInit,distance=..3,limit=1] 5.FlyingDuration 10

# 音/particle
    playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 1
    execute anchored eyes run particle cloud ^ ^ ^1 0.2 0.2 0.2 0.2 15 normal

# reset
    tag @e[tag=5.MatchlockInit,distance=..3] remove 5.MatchlockInit
    data remove storage lib: Argument
    kill @e[type=marker,tag=5.SpreadMarker]
