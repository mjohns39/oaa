
boss_charger_summon_pillar = class({})

function boss_charger_summon_pillar:OnSpellStart()
  local cursorPosition = self:GetCursorPosition()
  local caster = self:GetCaster()

  local tower = CreateUnitByName("npc_dota_boss_charger_pillar", cursorPosition, true, caster, caster:GetOwner(), caster:GetTeam())

  tower:AddNewModifier(caster, self, "modifier_invulnerable", {})


  if caster.GetPlayerID then
    tower:SetControllableByPlayer(caster:GetPlayerID(), false)
  end
  tower:SetOwner(caster)

  return true
end
