#> core:load_once
#
# #load時に一回のみ実行される処理群
#
# @within function core:load

#> バージョン情報の設定と通知
data modify storage global Version set value 23
tellraw @a [{"text": "Updated load version to ", "color": "green"},{"storage": "global","nbt":"Version","color": "aqua"}]


#> forceload chunksの設定
# Origin
    execute in overworld run forceload add -1 -1 0 0
    execute in the_nether run forceload add -1 -1 0 0
    execute in the_end run forceload add -1 -1 0 0
# ShulkerBox
    execute in overworld run forceload add 10000 10000
    execute in the_nether run forceload add 10000 10000
    execute in the_end run forceload add 10000 10000
# Item Return Point
    execute in overworld run forceload add 2927 -1273


#> gameruleの設定
function core:define_gamerule


#> Datapackの順序の明示的設定
# 0: TheSkyBlock
# 1: ScoreToHealth
# 2: OhMyDat
datapack disable "OhMyDat"
datapack disable "ScoreToHealth"
datapack enable "ScoreToHealth" after "TheSkyBlock"
datapack enable "OhMyDat" after "ScoreToHealth"


#> エイリアスの登録とシャルカーボックスのsetblock
# @public
    #alias vector shulkerA 10000 0 10000
    #alias vector shulkerB 10000 1 10000
    #alias vector worldSpawn 23 3 24
execute in overworld run setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
execute in overworld run setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}
execute in the_nether run setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
execute in the_nether run setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}
execute in the_end run setblock 10000 0 10000 lime_shulker_box{Lock:"lock"}
execute in the_end run setblock 10000 1 10000 lime_shulker_box{Lock:"lock"}

#> デバッグ用storageの設定
#
# Prefix.<DEBUG,SUCCESS,FAILED,ERROR,CRIT>
#
# @public
    #declare tag DevPrivilege
    #declare storage global
data modify storage global Prefix.DEBUG set value "§3DEBUG >> §r"
data modify storage global Prefix.SUCCESS set value "§aSUCCESS >> §r"
data modify storage global Prefix.FAILED set value "§cFAILED >> §r"
data modify storage global Prefix.ERROR set value "§cERROR >> §r"
data modify storage global Prefix.CRIT set value "§4CRITICAL >> §r"


#> リセット必須オブジェクト等の削除
scoreboard objectives remove Debug
scoreboard objectives remove FirstJoinEvent
kill 0-0-0-0-0


#> ベクトル用等のシステム内汎用Entityのエイリアスの登録とsummon
# @within *
#   api:**
#   asset_manager:**
#   core:**
#   lib:**
#   mob_manager:**
#   player_manager:**
    #alias entity commonEntity 0-0-0-0-0
summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}


#> 当たり判定を消す汎用Teamの作成
# @public
    team add NoCollision
team modify NoCollision collisionRule never


#> スコアボード類
    #> 1tickで消す一時変数の保存用スコアボード
    # @public
        scoreboard objectives add Temporary dummy

    #> 常に値が設定される変数用スコアボード
    # @public
        scoreboard objectives add Global dummy
    # 乱数値の設定
        #> Private
        # @private
            #declare tag Random
        summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["Random"]}
        execute store result score $Random.Base Global run data get entity @e[tag=Random,limit=1] UUID[1]
        execute store result score $Random.Carry Global run data get entity @e[tag=Random,limit=1] UUID[3]
        kill @e[tag=Random,limit=1]

    #> 定数類用スコアボード **変更厳禁**
    # @public
        scoreboard objectives add Const dummy
    function core:define_const

    #> UserID
    # @public
        scoreboard objectives add UserID dummy {"text":"汎用固有ユーザーID"}
        scoreboard objectives add MobUUID dummy {"text":"汎用固有MobID"}

    #> DEBUG用スコアボード
    # @within function core:load_once
        scoreboard objectives add Debug dummy {"text":"デバッグ"}

    #> AssetManager: 神器
    # @within function asset_manager:sacred_treasure/**
        scoreboard objectives add Sneak.Mainhand custom:sneak_time {"text":"スニークタイム: メインハンド"}
        scoreboard objectives add Sneak.Offhand custom:sneak_time {"text":"スニークタイム: オフハンド"}
        scoreboard objectives add Sneak.Head custom:sneak_time {"text":"スニークタイム: 頭"}
        scoreboard objectives add Sneak.Chest custom:sneak_time {"text":"スニークタイム: 胸"}
        scoreboard objectives add Sneak.Legs custom:sneak_time {"text":"スニークタイム: 脚"}
        scoreboard objectives add Sneak.Feet custom:sneak_time {"text":"スニークタイム: 足"}
        scoreboard objectives add UUID.Mainhand dummy {"text":"メインハンド装備のUUID"}
        scoreboard objectives add UUID.Offhand dummy {"text":"オフハンド装備のUUID"}
        scoreboard objectives add UUID.Head dummy {"text":"頭装備のUUID"}
        scoreboard objectives add UUID.Chest dummy {"text":"胸装備のUUID"}
        scoreboard objectives add UUID.Legs dummy {"text":"脚装備のUUID"}
        scoreboard objectives add UUID.Feet dummy {"text":"足装備のUUID"}
        scoreboard objectives add WeaponLogCD dummy {"text":"神器の使用ログのクールダウン"}
        scoreboard objectives add WeaponLogCDMax dummy {"text":"神器の使用ログのクールダウン最大値"}

    #> AssetManager: Mob -Public
    # @within function
    #   lib:debug/objective_view
    #   asset:mob/*/**
    #   asset_manager:mob/**
    #   asset_manager:spawner/**
        scoreboard objectives add MobID dummy {"text":"MobAssetのID"}

    #> AssetManager: Mob -Private
    # @within function
    #   asset_manager:mob/**
        scoreboard objectives add VoidActionTime dummy {"text":"汎用奈落耐性アクションの状態"}
        scoreboard objectives add VoidMobID dummy {"text":"耐性MobとAECの紐付け用"}

    #> AssetManager: Spawner
    # @within function
    #   asset_manager:spawner/**
        scoreboard objectives add SpawnerHP dummy {"text":"スポナーの残体力"}
        scoreboard objectives add SpawnerCooldown dummy {"text":"スポナーの召喚クールダウン"}

    #> イベントハンドラ用スコアボード
    # @within function
    #   asset_manager:sacred_treasure/triggers/**
    #   core:load_once
    #   core:handler/*
    #   core:tick/*
        scoreboard objectives add FirstJoinEvent custom:play_time {"text":"イベント: 初回Join"}
        scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: 再Join"}
        scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
        scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}
        scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick {"text":"イベント: クリック 人参棒"}
        scoreboard objectives add Sneak custom:sneak_time {"text":"イベント: スニーク"}

    #> Library用スコアボード
    # @public
        scoreboard objectives add Lib dummy {"text":"ライブラリの引数/返り値用"}

    #> Library用スコアボード - PrivateUse
    # @within * lib:**
        scoreboard objectives add ScoreToHPFluc dummy

    #> PlayerManager - AdjustHanger用スコアボード
    # @within function player_manager:adjust_hunger/**
        scoreboard objectives add HungerTarget dummy {"text":"目標の満腹度"}
        scoreboard objectives add Hunger food {"text":"現在の満腹度"}

    #> PlayerManager - Teams
    # @within function
    #   core:load_once
    #   player_manager:set_team
        team add Flora.LowHP
        team add Flora.MedHP
        team add Flora.HighHP
        team add Urban.LowHP
        team add Urban.MedHP
        team add Urban.HighHP
        team add Nyaptov.LowHP
        team add Nyaptov.MedHP
        team add Nyaptov.HighHP
        team add Wi-ki.LowHP
        team add Wi-ki.MedHP
        team add Wi-ki.HighHP
        team add Rumor.LowHP
        team add Rumor.MedHP
        team add Rumor.HighHP
    team modify Flora.LowHP color red
    team modify Flora.MedHP color yellow
    team modify Flora.HighHP color green
    team modify Urban.LowHP color red
    team modify Urban.MedHP color yellow
    team modify Urban.HighHP color green
    team modify Nyaptov.LowHP color red
    team modify Nyaptov.MedHP color yellow
    team modify Nyaptov.HighHP color green
    team modify Wi-ki.LowHP color red
    team modify Wi-ki.MedHP color yellow
    team modify Wi-ki.HighHP color green
    team modify Rumor.LowHP color red
    team modify Rumor.MedHP color yellow
    team modify Rumor.HighHP color green
    team modify Flora.LowHP prefix {"text":"\uE010 ","color":"white","font":"tsb"}
    team modify Flora.MedHP prefix {"text":"\uE010 ","color":"white","font":"tsb"}
    team modify Flora.HighHP prefix {"text":"\uE010 ","color":"white","font":"tsb"}
    team modify Urban.LowHP prefix {"text":"\uE011 ","color":"white","font":"tsb"}
    team modify Urban.MedHP prefix {"text":"\uE011 ","color":"white","font":"tsb"}
    team modify Urban.HighHP prefix {"text":"\uE011 ","color":"white","font":"tsb"}
    team modify Nyaptov.LowHP prefix {"text":"\uE012 ","color":"white","font":"tsb"}
    team modify Nyaptov.MedHP prefix {"text":"\uE012 ","color":"white","font":"tsb"}
    team modify Nyaptov.HighHP prefix {"text":"\uE012 ","color":"white","font":"tsb"}
    team modify Wi-ki.LowHP prefix {"text":"\uE013 ","color":"white","font":"tsb"}
    team modify Wi-ki.MedHP prefix {"text":"\uE013 ","color":"white","font":"tsb"}
    team modify Wi-ki.HighHP prefix {"text":"\uE013 ","color":"white","font":"tsb"}
    team modify Rumor.LowHP prefix {"text":"\uE014 ","color":"white","font":"tsb"}
    team modify Rumor.MedHP prefix {"text":"\uE014 ","color":"white","font":"tsb"}
    team modify Rumor.HighHP prefix {"text":"\uE014 ","color":"white","font":"tsb"}

    #> PlayerManager用スコアボード
    # @within
    #   function core:handler/first_join
    #   function core:load_once
    #   * lib:**
    #   * player_manager:**
        scoreboard objectives add Health health {"text":"♥","color":"#FF4c99"}
        scoreboard objectives add MP dummy {"text":"MP"}
        scoreboard objectives add MPFloat dummy {"text":"MP - 小数部"}
        scoreboard objectives add MPMax dummy {"text":"MP上限値"}
        scoreboard objectives add MPRegenCooldown dummy {"text":"MP再生のクールダウン"}
    scoreboard objectives setdisplay belowName Health

    #> MobManager用スコアボード - 攻撃元
    # @within function
    #   core:tick/
    #   asset_manager:*/triggers/
    #   mob_manager:entity_finder/attacking_entity/*
        scoreboard objectives add AttackingEntity dummy

    #> MobManager用スコアボード - 攻撃先
    # @within function
    #   core:tick/
    #   asset_manager:*/triggers/
    #   mob_manager:entity_finder/attacked_entity/*
        scoreboard objectives add AttackedEntity dummy


#> Scheduleループの初期化(replace)
    schedule function core:tick/4_interval 4t