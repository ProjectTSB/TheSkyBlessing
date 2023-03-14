#> asset:artifact/0035.malleus_maleficarum/trigger/3.main
#
# 神器のメイン処理部
# @within function asset:artifact/0035.malleus_maleficarum/trigger/2.check_condition

#> private
# @private
    #declare tag MalleusMaleficarumInit
    #declare tag MalleusMaleficarumEntity

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# エンダーパールwithアーマースタンド召喚
    execute anchored eyes run summon ender_pearl ^ ^ ^1 {Tags:[MalleusMaleficarumInit,MalleusMaleficarumEntity],Passengers:[{id:"minecraft:armor_stand",Tags:[MalleusMaleficarumIndicator,MalleusMaleficarumInit],NoGravity:1b,Invisible:1b}]}

# ベクトル取得用AEC召喚
    execute positioned 0.0 0.0 0.0 rotated as @s run summon area_effect_cloud ^ ^ ^1 {NoGravity:1b,Duration:1,Tags:[MalleusMaleficarumInit]}

# AECのベクトル取得
    execute positioned 0.0 0.0 0.0 as @e[type=area_effect_cloud,tag=MalleusMaleficarumInit,distance=..2] run data modify storage asset:temp 0035.Pos set from entity @s Pos

# Ownerセット
    execute as @e[type=ender_pearl,tag=MalleusMaleficarumInit] at @s run data modify entity @s Owner set from entity @e[type=armor_stand,tag=MalleusMaleficarumInit,distance=..2,limit=1]

# エンダーパールのmotionセット
    execute as @e[type=ender_pearl,tag=MalleusMaleficarumInit] run data modify entity @s Motion set from storage asset:temp 0035.Pos

# 命中したことを管理するscheduleをセット
    schedule function asset:artifact/0035.malleus_maleficarum/trigger/3.1.entity_manager 1t replace

# 初期設定用タグ削除
    execute positioned as @s run tag @e[tag=MalleusMaleficarumInit,distance=..3] remove MalleusMaleficarumInit