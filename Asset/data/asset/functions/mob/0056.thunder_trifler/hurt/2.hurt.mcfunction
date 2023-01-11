#> asset:mob/0056.thunder_trifler/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0056.thunder_trifler/hurt/1.trigger

# ノーマルなら50%でテレポート、ハードなら常時
    execute if predicate api:global_vars/difficulty/max/normal if predicate lib:random_pass_per/50 run function asset:mob/0056.thunder_trifler/hurt/teleport
    execute if predicate api:global_vars/difficulty/min/hard run function asset:mob/0056.thunder_trifler/hurt/teleport