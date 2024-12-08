#> asset_manager:effect/display/icon/
#
# エフェクトアイコンを作成
#
# @within function asset_manager:effect/foreach

#> Private
# @private
    #declare score_holder $Stack

# 書き換えるので一応コピー
    data modify storage asset:effect CopiedEffect set from storage asset:effect TargetEffect
# IDを4桁でゼロパディング
    execute store result storage asset:effect CopiedEffect.ID int 10001 run data get storage asset:effect CopiedEffect.ID 1
    data modify storage asset:effect CopiedEffect.ID set string storage asset:effect CopiedEffect.ID -4
# 10以上のstackをX表記に
    execute store result score $Stack Temporary run data get storage asset:effect CopiedEffect.Stack
    execute if score $Stack Temporary matches 10.. run data modify storage asset:effect CopiedEffect.Stack set value "X"
# テキストコンポーネント作成
    execute if data storage asset:effect CopiedEffect{IsBadEffect:0b} run function asset_manager:effect/display/icon/buff.m with storage asset:effect CopiedEffect
    execute if data storage asset:effect CopiedEffect{IsBadEffect:1b} run function asset_manager:effect/display/icon/debuff.m with storage asset:effect CopiedEffect

# リセット
    scoreboard players reset $Stack Temporary
    data remove storage asset:effect CopiedEffect
