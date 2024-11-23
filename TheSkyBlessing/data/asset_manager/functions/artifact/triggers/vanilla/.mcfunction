#> asset_manager:artifact/triggers/vanilla/
#
# バニラ攻撃を処理する
#
# @within function asset_manager:artifact/triggers/trigger/

#> Private
# @within asset_manager:artifact/triggers/vanilla/*
    #declare score_holder $Damage

# イベントデータ処理
    # データを取得
        data modify storage asset:context Attack set from storage asset:artifact ArtifactEvents.Attack[{Type:"vanilla_melee"}]
    # 攻撃先を取得し、Victim を付与する
        data modify storage asset:artifact AttackTargets set from storage asset:context Attack.To
        execute if data storage asset:artifact AttackTargets[0] run function asset_manager:artifact/triggers/event/attack/add_tag_each_victim
    # 最大ダメージの計算
        function asset_manager:artifact/triggers/event/attack/get_max_amount

# 各mobにダメージを与える
    execute store result score $Damage Temporary run data get storage asset:context Attack.Amount -100
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..8] at @s run function asset_manager:artifact/triggers/vanilla/damage

# リセット
    scoreboard players reset $Damage Temporary
    data remove storage asset:context Attack
    data remove storage asset:artifact AttackTargets
    tag @e[type=#lib:living,type=!player,tag=Victim] remove Victim
