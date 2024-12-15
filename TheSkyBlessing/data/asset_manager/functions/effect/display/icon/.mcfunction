#> asset_manager:effect/display/icon/
#
# エフェクトアイコンを作成
#
# @within function asset_manager:effect/foreach

#> Private
# @private
    #declare score_holder $Stack
    #declare score_holder $Duration

# 書き換えるので一応コピー
    data modify storage asset:effect CopiedEffect set from storage asset:effect TargetEffect
# Durationが100以下で点滅
    execute store result score $Duration Temporary run data get storage asset:effect CopiedEffect.Duration 1
    execute if score $Duration Temporary matches ..100 run scoreboard players operation $Duration Temporary %= $10 Const
    execute if score $Duration Temporary matches 8 run data modify storage asset:effect CopiedEffect.Color set value "#EFEFEF"
    execute if score $Duration Temporary matches 7 run data modify storage asset:effect CopiedEffect.Color set value "#CCCCCC"
    execute if score $Duration Temporary matches 6 run data modify storage asset:effect CopiedEffect.Color set value "#999999"
    execute if score $Duration Temporary matches 5 run data modify storage asset:effect CopiedEffect.Color set value "#434343"
    execute if score $Duration Temporary matches 4 run data modify storage asset:effect CopiedEffect.Color set value "#434343"
    execute if score $Duration Temporary matches 3 run data modify storage asset:effect CopiedEffect.Color set value "#999999"
    execute if score $Duration Temporary matches 2 run data modify storage asset:effect CopiedEffect.Color set value "#CCCCCC"
    execute if score $Duration Temporary matches 1 run data modify storage asset:effect CopiedEffect.Color set value "#EFEFEF"
    execute unless data storage asset:effect CopiedEffect.Color run data modify storage asset:effect CopiedEffect.Color set value "#FFFFFF"
# IDを4桁でゼロパディング
    execute store result storage asset:effect CopiedEffect.ID int 10001 run data get storage asset:effect CopiedEffect.ID 1
    data modify storage asset:effect CopiedEffect.ID set string storage asset:effect CopiedEffect.ID -4
# 10以上のstackをX表記、非表示を1(透明)に
    execute store result score $Stack Temporary run data get storage asset:effect CopiedEffect.Stack 1
    execute if score $Stack Temporary matches 10.. run data modify storage asset:effect CopiedEffect.Stack set value "X"
    execute if data storage asset:effect CopiedEffect{StackVisible:0b} run data modify storage asset:effect CopiedEffect.Stack set value 1
# テキストコンポーネント作成
    execute if data storage asset:effect CopiedEffect{IsBadEffect:0b} run function asset_manager:effect/display/icon/buff.m with storage asset:effect CopiedEffect
    execute if data storage asset:effect CopiedEffect{IsBadEffect:1b} run function asset_manager:effect/display/icon/debuff.m with storage asset:effect CopiedEffect

# リセット
    scoreboard players reset $Stack Temporary
    scoreboard players reset $Duration Temporary
    data remove storage asset:effect CopiedEffect
