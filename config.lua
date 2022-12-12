----------------------------------------------------------------------------
------------           VORP SHARED CONFIG                       ------------
----------------------------------------------------------------------------

Config = {
  ----------------------------------------------------------------------------
  ----------------------- SERVER MANAGEMENT -------------------------------------
  autoUpdateDB = true,

  ----------------------------------------------------------------------------
  ----------------------- STARTING POINT -------------------------------------
  initGold                 = 0.0,
  initMoney                = 300.0,
  initRol                  = 0.0,
  initXp                   = 0,
  initJob                  = "unemployed", -- leave it like this
  initJobGrade             = 0, -- leave it like this
  initGroup                = "user", -- leave it like this
  Whitelist                = false,
  AllowWhitelistAutoUpdate = false,
  maxHealth                = 4, -- 10 is FULL 0 IS EMPTY define max outer core for players
  maxStamina               = 4, -- 10 is FULL 0 IS EMPTY define max outer core for players
  PVP                      = true, -- Can players attack/hurt one another
  PVPToggle                = true, -- If true, players can set their own pvp state
  savePlayersTimer         = 10*1000, -- this will tell the core in how many miliseconds should all players be saved to the database, decreasing may reduce performance
  showplayerIDwhenfocus    = true, -- set false will show steam name when focus on another player RMB
  disableAutoAIM           = true, -- if false players with controllers will have autoaim just like in rdr2
  ------------------------------------------------------------------------------
  --------------------------- MULTICHARACTER -----------------------------------
  SaveSteamNameDB          = true, -- TRUE if you want save steamname on character DB when player drop (need to update SQL)
  UseCharPermission        = false, --(do not use this right now) TRUE if you want give multicharacter on selected players (need to update SQL) | if you change TRUE to FALSE player logs with first character created
  MaxCharacters            = 1, --MAX ALLOWED TO BE CREATED [if UseCharPermission = true, SELECTED players(with command) can create MaxCharacters characters / if UseCharPermission = false, players can create MaxCharacters characters]

  ------------------------------------------------------------------------------
  ------------------------------ UI CORES --------------------------------------
  HideOnlyDEADEYE = true,
  HidePlayersCore = false,
  HideHorseCores = false,

  ------------------------------------------------------------------------------
  ------------------------------ WEBHOOKS --------------------------------------


  webhookColor = 16711680, --EMBED COLOR
  name         = "VORP", --NAME OF EMBED
  logo         = "https://via.placeholder.com/30x30", --HEAD LOGO
  footerLogo   = "https://via.placeholder.com/30x30", --FOOTER LOGO
  Avatar       = "https://via.placeholder.com/30x30", -- AVATAR LOGO


  ---------------------------- WEBHOOK FOR EACH LOG -----------------------------
  --CHANGE THE LINKS
  -- delete what you dont want or add nil
  Logs = {
    SetgroupWebhook   = "", --SETJOB
    SetjobWebhook     = "", --SETGROUP
    AddmoneyWebhook   = "", --ADDMONEY
    DelMoneyWebhook   = "", --DELMONEY
    AddItemsWebhook   = "", --ADDITEMS
    AddWeaponsWebhook = "", --ADDWEAPONS
    DelWagonsWebhook  = "", --DELWAGONS
    TpmWebhook        = "", --TPM
    DelHorseWebhook   = "", --DELHORSE
    HealPlayerWebhook = "", --HEALPLAYER
    ReviveWebhook     = "", --REVIVE
    WhitelistWebhook  = "", --WHITELIST
    BanWarnWebhook    = "", --BANS/WARNS
    NewPlayerWebhook  = "", --NEWPLAYER
    CharPermWebhook   = "", --CHARPERMS
    ChangeNameWebhook = "", -- CHANGECHARNAMES
  },

  ------------------------------------------------------------------------------
  ------------------------- SHOW OR HIDE UI's ----------------------------------

  HideUi            = true, --show or hide the UI includes  gold cash ID and level bar  the cash gold ID are now being displayed in the inventory. you can disable this one if yo u like it more
  mapTypeOnFoot     = 1, -- 0 = Off(no radar), 1 = Regular 2 = Expanded  3 = Simple(compass), for on foot
  mapTypeOnMount    = 1, -- 0 = Off(no radar), 1 = Regular 2 = Expanded  3 = Simple(compass), for on horse
  enableTypeRadar   = true, --- if true the above will work, if false players can choose their radar type in the game settings.
  Loadinscreen      = true, --ENABLE LOADING SCREENS on spawn and while spawn dead
  LoadinScreenTimer = 10*1000, -- miliseconds
  -------------------------------------------------------------------------------
  ------------------------------- RESPAWN ---------------------------------------

  HealthOnRespawn = 250, --Player's health when respawned in hospital (MAX = 500)
  HealthOnResurrection = 250, --Player's health when resurrected (MAX = 500)
  DisableRecharge = true, --Disable auto recharge of health outer core (real ped health)
  RespawnTime = 300, --seconds
  RespawnKey = 0xDFF812F9, --[E] KEY
  RespawnKeyTime = 3*1000, -- Milliseconds it will take to press the button
  RespawnTitleFont = 1, -- for the draw text message
  RespawnSubTitleFont = 1, -- for the draw text message sub title font
  CombatLogDeath = true, -- people who combat log now spawn in dead rather than force spawned
  ShowUiDeath = true, -- show or hide the UI if player is dead
  camDeath = true, -- enable or disable the camera death function
  sprite = true, --- enable text with sprite or disable
  spriteColor = { r = 100, g = 1, b = 1 }, -- sprite rgb color

  hospital = {
    Valentine = {
      name = "Valentine",
      x = -283.83,
      y = 806.4,
      z = 119.38,
      h = 321.76
    },
    Saint = {
      name = "Saint Denis",
      x = 2721.4562,
      y = -1446.0975,
      z = 46.2303,
      h = 321.76
    },
    Armadillo = {
      name = "Armadillo",
      x = -3742.5,
      y = -2600.9,
      z = -13.23,
      h = 321.76
    },
    bw = {
      name = "bw",
      x = -723.9527,
      y = -1242.8358,
      z = 44.7341,
      h = 321.76
    },
    rhodes = {
      name = "Rhodes",
      x = 1229.0,
      y = -1306.1,
      z = 76.9,
      h = 321.76
    },
  },
  -----------------------------------------------------------------------------

  ActiveEagleEye = false,
  ActiveDeadEye = false,
  TimeZoneDifference = 1, -- Your time zone difference with UTC in winter time

  ----------------------------------------------------------------------------
  --------------------------- COMMAND PERMISSION -----------------------------
  SetUserDBadmin = true, -- should the command addGroup set admins on Users able? for characters table do false
  GroupAllowed = { "admin" }, -- add here groups
  Commands = { "addGroup", "addJob", "addItems", "addWeapons", "addMoney", "delMoney", "healplayer",
    "reviveplayer", "tpm", "delhorse", "delwagons", "banplayer", "wlplayer", "unwlplayer", "warn",
    "unban", "unwarn", "changeCharName" }, -- commands available

  --------------------------------------------------------------------------------------
  -----------------------------BUILT IN RICH PRESENCE DISCORD --------------------------
  maxplayers = 128, -- change to the number of players that can get in to your server
  appid = nil, -- Application ID (Replace this with you own)
  biglogo = "LOGOname", -- image assets name for the "large" icon.
  biglogodesc = " Redm Server Connect: ", -- text when hover over image
  smalllogo = "smallboy name", -- image assets name for the "small" icon.(OPTIONAL)
  smalllogodesc = "Join us for a good time", -- text when hover over image
  discordlink = "https://discord.gg/", -- discord link
  richpresencebutton = "Join Discord", --set button text for Rich Presence Button
  shownameandid = false, --show player steam name and id

  ---------------------------------------------------------------------------------------
  ------------------------------- TRANSLATE ---------------------------------------------
  Langs = {
    IsConnected        = "🚫 Duplicated account connected (steam | rockstar)",
    NoSteam            = "🚫 You have to have Steam open, please open Steam & restart RedM",
    NoInWhitelist      = "🚫 You are not in the Whitelist. Send in discord channel #user-id your user-id: ",
    NoPermissions      = "You don't have enough permissions",
    CheckingIdentifier = "Checking Identifiers",
    LoadingUser        = "Loading User",
    BannedUser         = "You Are Banned Until ",
    DateTimeFormat     = "%d/%m/%y %H:%M:%S", -- Set wished DateTimeFormat for output in ban notification
    TimeZone           = " CET", -- Set your timezone
    DropReasonBanned   = "You were banned from the server until ",
    Warned             = "You were warned",
    Unwarned           = "You were unwarned",
    TitleOnDead        = "Do /alertdoctor in chat to request doctors aid",
    SubTitleOnDead     = "You can respawn in %s seconds",
    RespawnIn          = "You can respawn in ",
    SecondsMove        = " secondes",
    YouAreCarried      = "You are being carried by a person",
    VoiceRangeChanged  = "Voice chat range changed to %s meters",
    promptLabel        = "Respawn", -- prompt label.
    prompt             = "Appuyez sur", -- prompt group label
    wayPoint           = "You need to set a waypoint first!",
    mustBeSeated       = "You must be in the driver's seat!",
    wagonInFront       = "You must be seated or near a wagon to delete it!",
    cantCarry          = "Can't carry more weapons!",
    Hold               = "Bienvenue",
    Load               = "Vous allez vous réveiller dans quelques instants !",
    Almost             = "Sur Red Island",
    Holddead           = "YOU ARE DEAD",
    Loaddead           = "you left the server while dead",
    forcedrespawn      = "YOU WILL BE RESPAWNED",
    forced             = "Because you left the server while dead",
    sit                = "you need to be steated",
    NotifyChar         = "you must set your char height to 1.0 there will bugs if you dont.",
    NotifyCharSelect   = "Once you ~e~delete ~q~a character theres no going back!",
    PVPNotifyOn        = "PVP On ",
    PVPNotifyOff       = "PVP Off",
    AddChar            = "Added Multicharacter ",
    RemoveChar         = "Removed Multicharacter ",
    WrongHex           = "Hex not in DB or Wrong Hex",
    myjob              = "your job is: ~o~",
    mygrade            = " ~q~grade: ~o~",
    charhours          = "your character hours is: ~o~",
    playhours          = "hours played is: ~o~"
  },
}
