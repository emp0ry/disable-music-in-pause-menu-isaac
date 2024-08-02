local mod = RegisterMod("Disable music in pause menu", 1)
local music = MusicManager()
local game = Game()

function mod:OnSoundEffect()
    if game:IsPauseMenuOpen() then
        music:Disable()
    else
        music:Enable()
    end
end

mod:AddCallback(ModCallbacks.MC_POST_RENDER, mod.OnSoundEffect)