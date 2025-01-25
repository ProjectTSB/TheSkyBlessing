#> asset:artifact/ex/attack/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/65500/attack/check

# バニラの攻撃じゃなかったら使えないようにする
    execute unless data storage asset:context Attack{IsVanilla:true} run tag @s remove CanUsed
