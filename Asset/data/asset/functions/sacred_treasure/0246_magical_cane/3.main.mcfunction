#> asset:sacred_treasure/0246_magical_cane/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0246_magical_cane/2.check_condition

# ここから先は神器側の効果の処理を書く

# 使用時のMPの数値によって演出がかわるよ
    execute if score @s MP matches 0..30 run function asset:sacred_treasure/0246_magical_cane/3.1.weak_hit
    execute if score @s MP matches 31..120 run function asset:sacred_treasure/0246_magical_cane/3.2.strong_hit
    execute if score @s MP matches 120.. run function asset:sacred_treasure/0246_magical_cane/3.3.hyper_hit

# $MagicalCaneに現在のスコアx3の数値を持たせる
    execute store result score $MagicalCane Temporary run function lib:mp/get
    scoreboard players operation $MagicalCane Temporary *= $3 Const

# ぶん殴ったやつにさっきもたせた数値ぶんの魔法無属性のダメージをぶちかます
    execute store result storage lib: Argument.Damage float 1 run scoreboard players get $MagicalCane Temporary
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"

# 補正functionを実行
    function lib:damage/modifier

# ダメージを受けろ！
    execute as @e[type=#lib:living,tag=HurtEntity,distance=..10] run function lib:damage/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# リセット
    data remove storage lib: Argument
    scoreboard players reset $MagicalCane