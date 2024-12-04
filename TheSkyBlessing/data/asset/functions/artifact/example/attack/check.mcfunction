#> asset:artifact/example/attack/check
#
# 神器の攻撃時の処理
#
# @within function asset:artifact/alias/65535/attack/check

# バニラの攻撃じゃなかったら使えないようにする
    execute unless data storage asset:context Attack{IsVanilla:true} run tag @s remove CanUsed
