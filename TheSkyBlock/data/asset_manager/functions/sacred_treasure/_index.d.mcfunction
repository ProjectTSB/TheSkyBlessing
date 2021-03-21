#> asset_manager:sacred_treasure/_index.d
# @private

#> Assetの環境をしまいこむstorage
# @within function
#   asset_manager:sacred_treasure/**
#   asset:sacred_treasure/*/*
    #declare storage asset:context

#> storage
# @within *
#   asset_manager:sacred_treasure/**
#   asset:sacred_treasure/*/_.give
#   asset:sacred_treasure/lib/**
    #declare storage asset:sacred_treasure

#> LootTableに渡す用のscoreHolder
# @within
#   function
#       asset_manager:sacred_treasure/core/create/set_data
#       asset_manager:sacred_treasure/core/use/**
#   loot_table
#       asset_manager:sacred_treasure/core/get_name/has_remain
    #declare score_holder $Remain
    #declare score_holder $RemainMAX

#> 特殊クールダウン
# @within function
#   asset_manager:sacred_treasure/core/check/check_special_cooldown
#   asset_manager:sacred_treasure/core/use/
#   core:tick
    #declare score_holder $SacredTreasureSpecialCooldown

#> Trigger検知用
# @within function
#   asset_manager:sacred_treasure/triggers/**
#   core:handler/**
    #declare tag TriggerFlag.Attack
    #declare tag TriggerFlag.ClickCarrot
    #declare tag TriggerFlag.UseItem
    #declare tag TriggerFlag.Damage
    #declare tag TriggerFlag.Killed
    #declare tag TriggerFlag.Sneak

#> check用の失敗フラグ
# @within function
#   asset_manager:sacred_treasure/core/check/*
    #declare tag CheckFailed

#> スニークの閾値用スコアホルダー
# @within function asset_manager:sacred_treasure/triggers/sneak/*
    #declare score_holder $SneakThreshold

#> this
# @within *
#   asset_manager:sacred_treasure/triggers/
#   asset:sacred_treasure/**
    #declare tag this