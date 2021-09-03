#> asset:mob/0104.mad_scientist/tick/4.till_throw_potion
#
# スコアが100以上で実行する奴ら
#
# @within function asset:mob/0104.mad_scientist/tick/2.tick

# 演出をそれぞれしたいけど総合コマンド数的にはまとめてやったほうがよさそう？
    function asset:mob/0104.mad_scientist/tick/5.particle

# ポーションを投げる(Projectile使用)
    execute if score @s 2W.Tick matches 120.. run function asset:mob/0104.mad_scientist/tick/6.throw_potion