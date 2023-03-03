#> asset:artifact/0252.void_transaction/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0252.void_transaction/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:dragon_breath ~ ~0.8 ~ 0.5 0.5 0.5 0.05 50

# 使用中であれば追加演出
    execute if entity @s[scores={70.Timer=1..2400}] run tellraw @s [{"text":"［","color":"dark_purple","bold":true},{"text":"奈"},{"text":"落","obfuscated":true},{"text":"の主"},{"text":"］ "},{"text":"二","color":"dark_red","obfuscated":true},{"text":"重取引","color":"dark_red"},{"text":"とは何事だ","color":"dark_red"}]
    execute if entity @s[scores={70.Timer=1..2400}] run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 1 1.5

# 使用中でなければ初期設定
    execute unless entity @s[scores={70.Timer=1..2400}] run function asset:artifact/0252.void_transaction/trigger/3.1.initiation

# 2分後の奈落予約
    schedule function asset:artifact/0252.void_transaction/trigger/3.2.void 1t replace