#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
# ハチを召喚 一瞬も見せたくないので空の上に
    summon bee ~ ~256 ~ {HasStung:0b,Silent:1b,Invulnerable:0b,Team:"NoCollision",Tags:["ChuzFairyInit"]}

# ハチを動かすやつ
    function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick

