#> asset_manager:artifact/_index.d
# @private

#> storage
# @within *
#   asset_manager:artifact/**
#   asset:artifact/*/register
#   asset:artifact/*/give/2.give
#   asset:artifact/*/trigger/2.check_condition
#   asset:artifact/*/trigger/3.main
#   asset:artifact/common/**
#   player_manager:actionbar/
    #declare storage asset:artifact

#> 特殊クールダウン
# @within function
#   asset_manager:artifact/check/check_special_cooldown
#   asset_manager:artifact/use/
#   asset_manager:artifact/tick/
#   core:tick/
    #declare score_holder $ArtifactSpecialCooldown

#> Trigger検知用
# @within function
#   asset_manager:artifact/triggers/**
#   api:damage/core/trigger_on_**
#   api:heal/core/trigger_on_**
#   core:handler/**
    #declare tag TriggerFlag.Rejoin
    #declare tag TriggerFlag.Attack
    #declare tag TriggerFlag.ClickCarrot
    #declare tag TriggerFlag.UseItem
    #declare tag TriggerFlag.Damage
    #declare tag TriggerFlag.Killed
    #declare tag TriggerFlag.Sneak
    #declare tag TriggerFlag.UsingItem
    #declare tag TriggerFlag.Heal

#> check用の失敗フラグ
# @within function
#   asset_manager:artifact/check/**
    #declare tag CheckFailed

#> スニークの閾値用スコアホルダー
# @within function asset_manager:artifact/triggers/sneak/*
    #declare score_holder $SneakThreshold

#> use_itemの誤検知対策タグ
# @within function
#   core:handler/drop
#   asset_manager:artifact/triggers/use_item/check_item_drop
    #declare tag StrictCheckMainhand

#> 神器側にさらすタグ
# @within *
#   asset_manager:artifact/triggers/**
#   asset:artifact/**
    #declare tag Attacker
    #declare tag Victim
    #declare tag Equip
    #declare tag DisEquip

#> セレクターテンプレート
# @within * asset:artifact/**
    #alias entity selectorTemplate @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..n]

#> クールダウン表示用
# @within function asset_manager:artifact/cooldown/**
    #declare score_holder $Cooldown
    #declare score_holder $Value
    #declare score_holder $NormalizedValue
    #declare score_holder $Max

#> リセット用
# @within function asset_manager:artifact/triggers/equipments/update_cooldown/*
    #declare score_holder $Tick
    #declare score_holder $LatestUsedTick
