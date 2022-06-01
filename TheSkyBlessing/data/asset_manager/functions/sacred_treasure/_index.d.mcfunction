#> asset_manager:sacred_treasure/_index.d
# @private

#> storage
# @within *
#   asset_manager:sacred_treasure/**
#   asset:sacred_treasure/*/register
#   asset:sacred_treasure/*/give/2.give
#   asset:sacred_treasure/*/trigger/2.check_condition
#   asset:sacred_treasure/common/**
    #declare storage asset:sacred_treasure

#> 特殊クールダウン
# @within function
#   asset_manager:sacred_treasure/check/check_special_cooldown
#   asset_manager:sacred_treasure/use/
#   asset_manager:sacred_treasure/tick/
#   core:tick/
    #declare score_holder $SacredTreasureSpecialCooldown

#> Trigger検知用
# @within function
#   asset_manager:sacred_treasure/triggers/**
#   lib:damage/core/trigger_on_**
#   core:handler/**
    #declare tag TriggerFlag.Rejoin
    #declare tag TriggerFlag.Attack
    #declare tag TriggerFlag.ClickCarrot
    #declare tag TriggerFlag.UseItem
    #declare tag TriggerFlag.Damage
    #declare tag TriggerFlag.Killed
    #declare tag TriggerFlag.Sneak
    #declare tag TriggerFlag.UsingItem

#> check用の失敗フラグ
# @within function
#   asset_manager:sacred_treasure/check/**
    #declare tag CheckFailed

#> スニークの閾値用スコアホルダー
# @within function asset_manager:sacred_treasure/triggers/sneak/*
    #declare score_holder $SneakThreshold

#> use_itemの誤検知対策タグ
# @within function
#   core:handler/drop
#   asset_manager:sacred_treasure/triggers/use_item/check_item_drop
    #declare tag StrictCheckMainhand

#> 神器側にさらすタグ
# @within *
#   asset_manager:sacred_treasure/triggers/**
#   asset:sacred_treasure/**
    #declare tag Attacker
    #declare tag Victim
    #declare tag Equip
    #declare tag DisEquip

#> セレクターテンプレート
# @within * asset:sacred_treasure/**
    #alias entity selectorTemplate @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..n]

#> クールダウン表示用
# @within function asset_manager:sacred_treasure/cooldown/main_bar/*
    #declare score_holder $Cooldown