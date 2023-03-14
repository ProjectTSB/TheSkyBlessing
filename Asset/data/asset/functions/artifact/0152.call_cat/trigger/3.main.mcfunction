#> asset:artifact/0152.call_cat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0152.call_cat/trigger/2.check_condition

#> Private
# @private
    #declare tag AbstractCat


# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

    # ネコ召喚
        summon cat ~ ~ ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,variant:"tabby",Tags:["AbstractCat","48.CalledCat","Friend"]}
        particle minecraft:heart ~ ~ ~ 0.5 0.25 0.5 1 10
        playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1 1.25

    # ネコの種類をランダムに
        execute store result score $Random Temporary run function lib:random/
        scoreboard players operation $Random Temporary %= $11 Const
        execute if score $Random Temporary matches 0 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "all_black"
        execute if score $Random Temporary matches 1 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "black"
        execute if score $Random Temporary matches 2 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "british_shorthair"
        execute if score $Random Temporary matches 3 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "calico"
        execute if score $Random Temporary matches 4 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "jellie"
        execute if score $Random Temporary matches 5 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "persian"
        execute if score $Random Temporary matches 6 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "ragdoll"
        execute if score $Random Temporary matches 7 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "red"
        execute if score $Random Temporary matches 8 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "siamese"
        execute if score $Random Temporary matches 9 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "tabby"
        execute if score $Random Temporary matches 10 run data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] variant set value "white"

    # 使用者に懐かせる
        function api:data_get/uuid
        data modify entity @e[type=cat,tag=AbstractCat,distance=..1,limit=1] Owner set from storage api: UUID

    # 回復クールダウンスコア設定
        execute as @a unless score @s 48.CatTime matches -10.. run scoreboard players set @s 48.CatTime -10

    # ネコがいる間tickさせるfunctionをschedule
        schedule function asset:artifact/0152.call_cat/trigger/3.1.entity_manager 1t replace

    # リセット
        scoreboard players reset $Random Temporary
        tag @e[type=cat,tag=AbstractCat,distance=..1,limit=1] remove AbstractCat