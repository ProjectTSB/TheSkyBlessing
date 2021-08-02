#> asset:sacred_treasure/0005.musket_matchlock/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0005.musket_matchlock/2.check_condition

#> main
# @within function asset:sacred_treasure/0005.musket_matchlock/**
    #declare tag 5.MatchlockIndicator

#> private
# @private 
    #declare tag 5.MatchlockInit
    #declare tag 5.MatchlockEntity
    #declare score_holder $VectorMagnitude

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
# 火薬消費
    clear @s gunpowder 1

# エンダーパールwithアーマースタンド召喚
    execute anchored eyes run summon snowball ^ ^ ^1 {Tags:["5.MatchlockInit","5.MatchlockEntity"],Item:{Count:1b,id:"minecraft:blackstone"},Passengers:[{id:"minecraft:armor_stand",Tags:["5.MatchlockIndicator","5.MatchlockInit"],NoGravity:1b,Invisible:1b,Marker:1b,PortalCooldown:10}]}

# Ownerセット
    data modify entity @e[type=snowball,tag=5.MatchlockInit,distance=..3,limit=1] Owner set from entity @s UUID
    
# 0-0-0-0-0を視点50m先の0.86m以内のランダムな位置に移動させる
    data modify storage lib: Argument.Distance set value 10.0
    data modify storage lib: Argument.Spread set value 0.172
    function lib:forward_spreader/circle

# 5.MatchlockIndicatorを進行方向に向ける
    execute as @e[type=armor_stand,tag=5.MatchlockInit,distance=..3,limit=1] at @s facing entity 0-0-0-0-0 feet run tp @s ~ ~ ~ ~ ~

# エンダーパールのmotionセット
    scoreboard players set $VectorMagnitude Lib 950
    execute as @e[type=snowball,tag=5.MatchlockInit,distance=..3] at @s facing entity 0-0-0-0-0 feet run function lib:motion/

# 命中したことを管理するscheduleをセット
    schedule function asset:sacred_treasure/0005.musket_matchlock/3.1.entity_manager 1t replace

# 反動
    tp @s ~ ~ ~ ~ ~-10

# 音/particle
    playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1
    execute anchored eyes run particle cloud ^ ^ ^1 0.2 0.2 0.2 0.2 15 normal

# 初期設定用タグ削除
    execute positioned as @s run tag @e[tag=5.MatchlockInit,distance=..3] remove 5.MatchlockInit