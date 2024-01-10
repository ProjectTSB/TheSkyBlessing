#> core:load_once
#
# #load時に一回のみ実行される処理群
#
# @within function core:load

#> バージョン情報の設定
data modify storage global GameVersion set value "v0.1.6"

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
# テレポート先
    # 神殿出口
        execute in overworld run forceload add 62 -12
    # 神殿入り口
        execute in overworld run forceload add 3040 -544 3103 -481
    # Item Return Point
        execute in overworld run forceload add 2922 -1333 2934 -1313
    # 神殿
        execute in overworld run forceload add 2976 -144 3007 -129
        execute in overworld run forceload add 3448 -472
        execute in overworld run forceload add 2915 -862
        execute in overworld run forceload add 3056 -896 3087 -881
        execute in overworld run forceload add 3411 -630

#> gameruleの設定
function core:define_gamerule


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

data modify storage global GodIcon.Flora set value '{"text":"\\uE010","color":"white","font":"tsb"}'
data modify storage global GodIcon.Urban set value '{"text":"\\uE011","color":"white","font":"tsb"}'
data modify storage global GodIcon.Nyaptov set value '{"text":"\\uE012","color":"white","font":"tsb"}'
data modify storage global GodIcon.Wi-ki set value '{"text":"\\uE013","color":"white","font":"tsb"}'
data modify storage global GodIcon.Rumor set value '{"text":"\\uE014","color":"white","font":"tsb"}'


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
    #alias entity commonMarker 0-0-0-0-0
    #alias entity commonArmorStand 0-0-0-0-1
summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}
summon armor_stand 0.0 0.0 0.0 {UUID:[I;0,0,0,1],Marker:1b,Invisible:1b}


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
    scoreboard players set $Difficulty Global 2

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
    # @within function
    #   core:load_once
    #   asset_manager:artifact/**
        bossbar add asset:special_cooldown {"text":"特殊クールダウン"}
        scoreboard objectives add Sneak.Mainhand custom:sneak_time {"text":"スニークタイム: メインハンド"}
        scoreboard objectives add Sneak.Offhand custom:sneak_time {"text":"スニークタイム: オフハンド"}
        scoreboard objectives add Sneak.Head custom:sneak_time {"text":"スニークタイム: 頭"}
        scoreboard objectives add Sneak.Chest custom:sneak_time {"text":"スニークタイム: 胸"}
        scoreboard objectives add Sneak.Legs custom:sneak_time {"text":"スニークタイム: 脚"}
        scoreboard objectives add Sneak.Feet custom:sneak_time {"text":"スニークタイム: 足"}
        scoreboard objectives add Sneak.Hotbar0 custom:sneak_time {"text":"スニークタイム: ホットバー0"}
        scoreboard objectives add Sneak.Hotbar1 custom:sneak_time {"text":"スニークタイム: ホットバー1"}
        scoreboard objectives add Sneak.Hotbar2 custom:sneak_time {"text":"スニークタイム: ホットバー2"}
        scoreboard objectives add Sneak.Hotbar3 custom:sneak_time {"text":"スニークタイム: ホットバー3"}
        scoreboard objectives add Sneak.Hotbar4 custom:sneak_time {"text":"スニークタイム: ホットバー4"}
        scoreboard objectives add Sneak.Hotbar5 custom:sneak_time {"text":"スニークタイム: ホットバー5"}
        scoreboard objectives add Sneak.Hotbar6 custom:sneak_time {"text":"スニークタイム: ホットバー6"}
        scoreboard objectives add Sneak.Hotbar7 custom:sneak_time {"text":"スニークタイム: ホットバー7"}
        scoreboard objectives add Sneak.Hotbar8 custom:sneak_time {"text":"スニークタイム: ホットバー8"}
        scoreboard objectives add MPLogCD dummy {"text":"神器をMP枯渇で失敗した際のログのクールダウン"}
        scoreboard objectives add BelieveLogCD dummy {"text":"神器を信仰で失敗した際のログのクールダウン"}
        scoreboard objectives add LocalCDLogCD dummy {"text":"神器をローカルクールダウンで失敗した際のログのクールダウン"}
        scoreboard objectives add SpecialCDLogCD dummy {"text":"神器を特殊クールダウンで失敗した際のログのクールダウン"}
    bossbar set asset:special_cooldown color green
    bossbar set asset:special_cooldown style notched_10

    #> AssetManager: Mob -Public
    # @public
        scoreboard objectives add MobID dummy {"text":"MobAssetのID"}

    #> AssetManager: Mob -Private
    # @within function
    #   core:load_once
    #   asset_manager:mob/**
        bossbar add asset:bossbar {"text":""}
        scoreboard objectives add VoidActionTime dummy {"text":"汎用奈落耐性アクションの状態"}
        scoreboard objectives add VoidMobID dummy {"text":"耐性MobとAECの紐付け用"}
    bossbar set asset:bossbar color pink
    bossbar set asset:bossbar style notched_10

    #> AssetManager: Spawner
    # @within function
    #   asset_manager:spawner/**
        scoreboard objectives add SpawnerHP dummy {"text":"スポナーの残体力"}
        scoreboard objectives add SpawnerCooldown dummy {"text":"スポナーの召喚クールダウン"}

    #> AssetManager: Teleporter
    # @within function
    #   asset_manager:teleporter/**
        scoreboard objectives add TeleporterLogCD dummy {"text":"他のテレポーターが発見できなかった際のログのクールダウン"}

    #> AssetManager: Island
    # @within function
    #   asset_manager:island/**
        scoreboard objectives add DispelTime dummy {"text":"解呪の時間"}
        scoreboard objectives add TargetBossID dummy {"text":"召喚するボスのID"}

    #> イベントハンドラ用スコアボード
    # @within function
    #   asset_manager:artifact/triggers/**
    #   player_manager:vanilla_attack/show_log
    #   core:load_once
    #   core:handler/*
    #   core:tick/**
        scoreboard objectives add FirstJoinEvent custom:play_time {"text":"イベント: 初回Join"}
        scoreboard objectives add RejoinEvent custom:leave_game {"text":"イベント: 再Join"}
        scoreboard objectives add AttackEvent custom:damage_dealt_absorbed {"text":"イベント: 攻撃"}
        scoreboard objectives add DeathEvent deathCount {"text":"イベント: 死亡"}
        scoreboard objectives add RespawnEvent custom:time_since_death {"text":"イベント: リスポーン"}
        scoreboard objectives add ClickCarrotEvent used:carrot_on_a_stick {"text":"イベント: クリック 人参棒"}
        scoreboard objectives add Sneak custom:sneak_time {"text":"イベント: スニーク"}
        scoreboard objectives add Elytra custom:aviate_one_cm {"text":"イベント: エリトラ"}
        scoreboard objectives add DropEvent custom:drop {"text":"イベント: アイテムドロップ"}

    #> Library用スコアボード
    # @public
        scoreboard objectives add Lib dummy {"text":"ライブラリの引数/返り値用"}

    #> Library用スコアボード - PrivateUse
    # @within * lib:**
        scoreboard objectives add LogRemoveTime dummy
        scoreboard objectives add ScoreToHPFluc dummy

    #> PlayerManager - Motionチェック用スコアボード
    # @within
    #   function
    #       player_manager:pos_fix_and_calc_diff
    #       api:player_vector/get
    #   predicate lib:is_player_moving
        scoreboard objectives add PlayerStopTime dummy
        scoreboard objectives add PosPacketLossDetectAfterTick dummy

    #> PlayerManager - AdjustHunger用スコアボード
    # @within function player_manager:adjust_hunger/**
        scoreboard objectives add HungerTarget dummy {"text":"目標の満腹度"}
        scoreboard objectives add Hunger food {"text":"現在の満腹度"}

    #> PlayerManager - 信仰
    # @within function player_manager:god/**
        scoreboard objectives add Believe trigger {"text":"信仰のユーザー入力"}
        scoreboard objectives add Believe2 trigger {"text":"信仰のユーザー入力"}
        scoreboard objectives add Believe3 trigger {"text":"信仰のユーザー入力"}
        scoreboard objectives add GodMessagePhase dummy {"text":"信仰変更のチャット遅延用"}

    #> PlayerManager - Teams
    # @within function
    #   core:load_once
    #   player_manager:set_team_and_per_health
        team add None.LowHP
        team add None.MedHP
        team add None.HighHP
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
    team modify None.LowHP color red
    team modify None.MedHP color yellow
    team modify None.HighHP color green
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
    team modify None.LowHP prefix {"text":"  ","color":"white"}
    team modify None.MedHP prefix {"text":"  ","color":"white"}
    team modify None.HighHP prefix {"text":"  ","color":"white"}
    team modify Flora.LowHP prefix [{"text":"\uE010","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Flora.MedHP prefix [{"text":"\uE010","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Flora.HighHP prefix [{"text":"\uE010","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Urban.LowHP prefix [{"text":"\uE011","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Urban.MedHP prefix [{"text":"\uE011","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Urban.HighHP prefix [{"text":"\uE011","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Nyaptov.LowHP prefix [{"text":"\uE012","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Nyaptov.MedHP prefix [{"text":"\uE012","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Nyaptov.HighHP prefix [{"text":"\uE012","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Wi-ki.LowHP prefix [{"text":"\uE013","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Wi-ki.MedHP prefix [{"text":"\uE013","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Wi-ki.HighHP prefix [{"text":"\uE013","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Rumor.LowHP prefix [{"text":"\uE014","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Rumor.MedHP prefix [{"text":"\uE014","color":"white","font":"tsb"},{"text":" ","font":"default"}]
    team modify Rumor.HighHP prefix [{"text":"\uE014","color":"white","font":"tsb"},{"text":" ","font":"default"}]

    #> PlayerManager用スコアボード
    # @within
    #   function core:handler/first_join
    #   function core:load_once
    #   * api:**
    #   * player_manager:**
        scoreboard objectives add Health health {"text":"♥","color":"#FF4c99"}
        scoreboard objectives add PerHealth dummy {"text":"♥","color":"#FF4c99"}
        scoreboard objectives add MP dummy {"text":"MP"}
        scoreboard objectives add MPFloat dummy {"text":"MP - 小数部"}
        scoreboard objectives add MPMax dummy {"text":"MP上限値"}
        scoreboard objectives add MPRegenCooldown dummy {"text":"MP再生のクールダウン"}
    scoreboard objectives setdisplay below_name Health
    scoreboard objectives modify PerHealth rendertype hearts
    scoreboard objectives setdisplay list PerHealth

    #> 最大値用スコアホルダー
    # @within function
    #   core:load_once
    #   core:handler/first_join
    #   player_manager:bonus/**
    #   asset:artifact/0002.blessing/trigger/**
        #declare score_holder $MaxHealth
        #declare score_holder $MaxMP
        #declare score_holder $AttackBonus
        #declare score_holder $DefenseBonus
    scoreboard players set $MaxHealth Global 200000
    scoreboard players set $MaxMP Global 100
    scoreboard players set $AttackBonus Global 0
    scoreboard players set $DefenseBonus Global 0

    #> WorldManager用スコアボード - ChunkLoadProtect
    # @within
    #   function
    #       core:tick/player/pre
    #       world_manager:chunk_io_protect/*
    #   predicate api:is_completed_player_chunk_load_waiting_time
        scoreboard objectives add ChunkLoadWaitingTime dummy {"text":"プレイヤーの周囲のチャンクロードが終了するまでの待ち時間"}

    #> WorldManager用スコアボード - Area
    # @within function
    #   world_manager:area/**
    #   world_manager:** @readonly
    #   player_manager:** @readonly
        scoreboard objectives add InArea dummy {"text":"プレイヤーが居るエリア"}
        scoreboard objectives add InSubArea dummy {"text":"どのサブエリアに居るか"}

    #> WorldManager用スコアボード - テレポーター
    # @within function
    #   asset_manager:teleporter/tick/**
        scoreboard objectives add TPStarFromUserID dummy {"text":"テレポーターの星のユーザーID"}

    #> MobManager用スコアボード - 最大体力
    # @within function
    #   api:mob/get_max_health*
    #   asset_manager:mob/summon/set_data
    #   mob_manager:init/modify_health
    #   mob_manager:init/multiplay_multiplier/*
        scoreboard objectives add MobHealthMax dummy
        scoreboard objectives add MobMaxHealthMultiplier dummy {"text":"MOBの体力のマルチプレイ補正倍率 (e1)"}

    #> MobManager用スコアボード - 攻撃元
    # @within function
    #   core:tick/
    #   asset_manager:*/triggers/
    #   asset_manager:artifact/triggers/damage
    #   mob_manager:entity_finder/attacking_entity/*
        scoreboard objectives add AttackingEntity dummy

    #> MobManager用スコアボード - 攻撃先
    # @within function
    #   core:tick/
    #   asset_manager:*/triggers/
    #   asset_manager:artifact/triggers/attack
    #   player_manager:vanilla_attack/show_log
    #   mob_manager:entity_finder/attacked_entity/*
        scoreboard objectives add AttackedEntity dummy

    #> MobManager - Teams
    # @within function
    #   mob_manager:init/set_tag_and_team
    #   asset_manager:mob/summon/set_data
        team add Enemy

#> 各Asset側のロード処理
    function #asset:artifact/load
    function #asset:mob/load


#> 神の慈悲アイテムを定義する
    function player_manager:god/mercy/offering/init

#> ROMを初期化する
    function rom:init