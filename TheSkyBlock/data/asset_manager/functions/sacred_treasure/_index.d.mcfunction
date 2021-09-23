#> asset_manager:sacred_treasure/_index.d
# @private

#> storage
# @within *
#   asset_manager:sacred_treasure/**
#   asset:sacred_treasure/*/_.give
#   asset:sacred_treasure/lib/**
    #declare storage asset:sacred_treasure

#> LootTableに渡す用のscoreHolder
# @within
#   function
#       asset_manager:sacred_treasure/create/set_data
#       asset_manager:sacred_treasure/use/**
#   loot_table
#       asset_manager:sacred_treasure/get_name/has_remain
    #declare score_holder $Remain
    #declare score_holder $RemainMAX

#> 特殊クールダウン
# @within function
#   asset_manager:sacred_treasure/check/check_special_cooldown
#   asset_manager:sacred_treasure/use/
#   core:tick/
    #declare score_holder $SacredTreasureSpecialCooldown

#> Trigger検知用
# @within function
#   asset_manager:sacred_treasure/triggers/**
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
#   asset_manager:sacred_treasure/check/*
    #declare tag CheckFailed

#> スニークの閾値用スコアホルダー
# @within function asset_manager:sacred_treasure/triggers/sneak/*
    #declare score_holder $SneakThreshold

#> 神器側にさらすタグ
# @within *
#   asset_manager:sacred_treasure/triggers/**
#   asset:sacred_treasure/**
    #declare tag this
    #declare tag Attacker
    #declare tag Victim
    #declare tag Equip
    #declare tag DisEquip

#> セレクターテンプレート
# @within * asset:sacred_treasure/**
    #alias entity selectorTemplate @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..n]

#> 防具変更情報の記録用タグ
# @within function asset_manager:sacred_treasure/triggers/**
    #declare tag ChangeMainhand
    #declare tag ChangeOffhand
    #declare tag ChangeHead
    #declare tag ChangeChest
    #declare tag ChangeLegs
    #declare tag ChangeFeet

#> クールダウン表示用
# @within function asset_manager:sacred_treasure/show_cooldown/*
    #declare score_holder $CoolDown