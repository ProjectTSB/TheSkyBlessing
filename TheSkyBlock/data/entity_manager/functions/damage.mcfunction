#> entity_manager:damage
#
# エンティティにダメージを与えます
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

# 値取得
    execute store result score $Health Temporary run data get entity @s Health 10000
    execute store result score $ArmorPoints Temporary run data get entity @s Attributes[{Name:"minecraft:generic.armor"}].Base
    execute store result score $ArmorThoughnessPoints Temporary run data get entity @s Attributes[{Name:"minecraft:generic.armor_toughness"}].Base
# 計算
    function entity_manager:damage.calc
    tellraw @a [{"text":"Damage: "},{"score":{"objective":"Temporary","name":"$Damage"}}]
    scoreboard players operation $Health Temporary -= $Damage Temporary
    scoreboard players reset $Damage
# 適用
    execute if score $Health Temporary matches ..0 run data modify entity @s Health set value 00.0001f
    execute if score $Health Temporary matches ..0 run kill @s
    execute if score $Health Temporary matches 1.. if entity @s[type=#entity_manager:undead] run effect give @s instant_health 1 31 true
    execute if score $Health Temporary matches 1.. if entity @s[type=!#entity_manager:undead] run effect give @s instant_damage 1 31 true
    execute if score $Health Temporary matches 1.. store result entity @s Health float 0.0001 run scoreboard players get $Health Temporary
# Reset
    scoreboard players reset $Health