---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 15/02/2019 13:00
---

---@type table
Streaming = {}

---Scaleform
---@param Movie string
---@return function
---@public
function Streaming:Scaleform(Movie)
    if (Movie ~= nil) then
        ---@type table
        local customScale = RequestScaleformMovie(Movie)
        while not HasScaleformMovieLoaded(customScale) do
            Citizen.Wait(1)
        end
        --    Console:Logs(true, string.format("%s%s : %s", "^4", "Request scaleform", Movie))
        return customScale;
    else
        error("Missing argument : Movie")
    end
end

---Model
---@param Model string
---@return function
---@public
function Streaming:Model(Model)
    if (Model ~= nil) then
        RequestModel(Model)
        while not HasModelLoaded(Model) do
            Citizen.Wait(100)
        end
        return Model;
    else
        error("Missing argument : Model")
    end
end

---AnimationDictionary
---@param Animation string
---@return function
---@public
function Streaming:AnimationDictionary(Animation)
    if (Animation ~= nil) then
        ---@type table
        local animDict = RequestAnimDict(Animation)
        while not HasAnimDictLoaded(Animation) do
            Citizen.Wait(1)
        end
        return animDict;
    else
        error("Missing argument : Animation")
    end
end

---ParticleDictionary
---@param Particle string
---@return function
---@public
function Streaming:ParticleDictionary(Particle)
    if (Particle ~= nil) then
        ---@type table
        local dictionary = RequestNamedPtfxAsset(Particle)
        while not HasNamedPtfxAssetLoaded(Particle) do
            Citizen.Wait(1)
        end
        --Console:Logs(true, string.format("%s%s : %s", "^4", "Request particle dictionary", Particle))
        return dictionary;
    else
        error("Missing argument : Particle")
    end
end

