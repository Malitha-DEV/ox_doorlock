---@type DoorlockConfig
---@diagnostic disable-next-line: missing-fields
Config = {}

---Trigger a notification on the client when the door state is successfully updated.
Config.Notify = false

---Create a persistent notification while in-range of a door, prompting to lock/unlock.
Config.DrawTextUI = false

---Set the properties used by [DrawSprite](https://docs.fivem.net/natives/?_0xE7FFAE5EBF23D890).
---Neon glow effect: draws multiple layers for glow + sharp icon on top.
Config.DrawSprite = {
    -- Unlocked (Neon Cyan)
    [0] = { 'mpsafecracking', 'lock_open', 0, 0, 0.020, 0.020, 0, 0, 240, 255, 220 },

    -- Locked (Neon Magenta)
    [1] = { 'mpsafecracking', 'lock_closed', 0, 0, 0.020, 0.020, 0, 255, 45, 120, 220 },
}

---Neon glow layers behind the main sprite (drawn underneath for glow halo effect).
---Each entry: { scaleMultiplier, alphaValue }
Config.DrawSpriteGlow = {
    { 3.0, 15 },   -- outermost soft glow
    { 2.2, 30 },   -- mid glow
    { 1.6, 55 },   -- inner glow
}

---Allow the specified ace principal to use 'command.doorlock'.
Config.CommandPrincipal = 'group.admin'

---Allow players with the 'command.doorlock' principal to use any door.
Config.PlayerAceAuthorised = false

---The default skill check difficulty when lockpicking a door.
Config.LockDifficulty = { 'easy', 'easy', 'medium' }

---Allow lockpicks to be used to lock an unlocked door.
Config.CanPickUnlockedDoors = false

---An array of items that function as lockpicks.
Config.LockpickItems = {
    'lockpick'
}

---Play sounds using game audio (sound natives) instead of through NUI.
Config.NativeAudio = true
