#> asset:sacred_treasure/0252.contract_with_the_void/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0252.contract_with_the_void/2.check_condition
#> private
# @private
    #declare tag Void

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute if entity @s[tag=!Void] run playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~
    particle minecraft:dragon_breath ~ ~0.8 ~ 0.5 0.5 0.5 0.05 50

# 絶大な力
    execute if entity @s[tag=!Void] run effect give @s speed 120 3 true
    execute if entity @s[tag=!Void] run effect give @s strength 120 3 true
    execute if entity @s[tag=!Void] run effect give @s jump_boost 120 3 true
    execute if entity @s[tag=!Void] run effect give @s regeneration 120 3 true
    execute if entity @s[tag=!Void] run effect give @s fire_resistance 120 3 true
    execute if entity @s[tag=!Void] run effect give @s resistance 120 3 true
    execute if entity @s[tag=!Void] run effect give @s invisibility 120 3 true
    execute if entity @s[tag=!Void] run effect give @s night_vision 120 3 true
    execute if entity @s[tag=!Void] run effect give @s water_breathing 120 3 true
    execute if entity @s[tag=!Void] run effect give @s absorption 120 3 true
    execute if entity @s[tag=!Void] run effect give @s health_boost 120 3 true
    execute if entity @s[tag=!Void] run effect give @s slow_falling 120 3 true

# アイテムを二重で使った際の処理
    execute if entity @s[tag=Void] run tellraw @s [{"text":"［","color":"dark_purple","bold":true},{"text":"奈"},{"text":"落","obfuscated":true},{"text":"の主"},{"text":"］ "},{"text":"二","color":"dark_red","obfuscated":true},{"text":"重契約","color":"dark_red"},{"text":"とは何事だ","color":"dark_red"}]
    execute if entity @s[tag=Void] run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 1 1.5

# 2分後の奈落予約チェック
    execute if entity @s[tag=!Void] run schedule function asset:sacred_treasure/0252.contract_with_the_void/3.1.void 1t
    tag @s add Void