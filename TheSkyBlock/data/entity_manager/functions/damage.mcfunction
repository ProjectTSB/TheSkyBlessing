#> entity_manager:damage
#
# @s[type=!player] にダメージを与えます
#
# @input _score_
#   **$Damage Temporary**
#       与えるダメージです
#   **$EPF Temporary**
#       軽減効果のあるエンチャントレベルの合計値 * 2 //Protectionのみ * 1
# @public

#> Public
#
# ダメージ計算用のスコアホルダーです
#
# 両スコアホルダー共にTemporaryオブジェクトに入力してください。
#
# @public
    #declare score_holder $Damage
    #declare score_holder $EPF

#> Temp
# @within function
#   entity_manager:damage
#   entity_manager:damage.calc
    #declare score_holder $Health
    #declare score_holder $ArmorPoints
    #declare score_holder $ArmorThoughnessPoints
    #declare score_holder $SaveDamage
    #declare score_holder $SaveEPF

# 値保持
    scoreboard players operation $SaveDamage Temporary = $Damage Temporary
    scoreboard players operation $SaveEPF Temporary = $EPF Temporary
# 値取得
    execute store result score $Health Temporary run data get entity @s Health 10000
    execute store result score $ArmorPoints Temporary run attribute @s generic.armor get
    execute store result score $ArmorThoughnessPoints Temporary run attribute @s generic.armor_toughness get
# 計算
    function entity_manager:damage.calc
    scoreboard players operation $Damage Temporary < $Health Temporary
    scoreboard players operation $Health Temporary -= $Damage Temporary
# 適用
    execute if score $Health Temporary matches ..0 run data modify entity @s Health set value 00.0001f
    execute if score $Health Temporary matches ..0 run kill @s
    execute if score $Health Temporary matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
# 演出: ダメージ
    execute if score $Health Temporary matches 1.. if entity @s[type=#entity_manager:undead] run effect give @s instant_health 1 31 true
    execute if score $Health Temporary matches 1.. if entity @s[type=!#entity_manager:undead] run effect give @s instant_damage 1 31 true
# 演出: パーティクル
    scoreboard players operation $Damage Temporary /= $20000 Const
    scoreboard players operation $Damage Temporary *= $2^20 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 2048
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 1024
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 512
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 256
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 128
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 64
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 32
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 16
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 8
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 4
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 2
    scoreboard players operation $Damage Temporary *= $2 Const
    execute if score $Damage Temporary matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 1
# 値戻す
    scoreboard players operation $Damage Temporary = $SaveDamage Temporary
    scoreboard players operation $EPF Temporary = $SaveEPF Temporary
# Reset
    scoreboard players reset $Health
    scoreboard players reset $SaveDamage Temporary
    scoreboard players reset $SaveEPF Temporary