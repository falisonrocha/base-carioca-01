function DrawTexture(textureStreamed,textureName,x, y, width, height,rotation,r, g, b, a, p11)
    if not HasStreamedTextureDictLoaded(textureStreamed) then
       RequestStreamedTextureDict(textureStreamed, false);
    else
        DrawSprite(textureStreamed, textureName, x, y, width, height, rotation, r, g, b, a, p11);
    end
end

function table.contains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

function Round(number, decimals)
    local power = 10^decimals
    return math.floor(number * power) / power
end

function SoundManager(soundIndex, volumeSound)
    SendNUIMessage({
        action = "playSound",
        sound = soundIndex,
        soundVolume = volumeSound
    })
end

function DrawText2D(pos, text, fontSize, fontFamily)
    SetTextScale(fontSize or 0.25, fontSize or 0.25)
    SetTextFont(fontFamily or 1)
    SetTextColour(255, 255, 255, 500)
    SetTextCentre(1)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(pos['x'], pos['y'])
end

function DrawText3D(coords, text)
    SetDrawOrigin(coords)
    SetTextScale(0.35, 0.35)
    SetTextColour(255, 255, 255, 255)
    SetTextFont(4)
    SetTextEntry('STRING')
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(0.0, 0.0)
    DrawRect(0.0, 0.0125, 0.015 + text:gsub('~.-~', ''):len() / 370, 0.03, 45, 45, 45, 150)
    ClearDrawOrigin()
end

function ShowLoopParticle(assetName, effectName, entity, scale, duration)
    RequestNamedPtfxAsset(assetName)
    while not HasNamedPtfxAssetLoaded(assetName) do
        Wait(0)
    end

    UseParticleFxAssetNextCall(assetName)

    local particleHandle = StartParticleFxLoopedOnEntity(
        effectName,         -- Nome do efeito de partícula
        entity,             -- Entidade na qual o efeito será anexado
        0.0, 0.0, 0.0,      -- Offset de posição (pode ser ajustado)
        0.0, 0.0, 0.0,      -- Rotação
        scale,              -- Escala do efeito
        false, false, false -- Opções de loop e visibilidade
    )

    SetParticleFxLoopedColour(particleHandle, 0.0, 1.0, 0.0) -- RGB para verde

    Citizen.SetTimeout(duration, function()
        StopParticleFxLooped(particleHandle, true)
    end)

    return particleHandle
end

function DisableFlagSoundsPolice()
    -- Desativa o scanner de polícia
    SetAudioFlag("PoliceScannerDisabled", true)

    -- Desativa a música de perseguição (música tocada quando você está com nível de procurado)
    SetAudioFlag("WantedMusicDisabled", true)

    -- Permite que o scanner de polícia seja acionado apenas por scripts (evita acionamento automático)
    SetAudioFlag("OnlyAllowScriptTriggerPoliceScanner", true)

    -- Desativa sons da polícia quando o jogador está sem controle (como durante cutscenes ou eventos especiais)
    SetAudioFlag("AllowPoliceScannerWhenPlayerHasNoControl", false)

    -- Desativa sons de rádios de emergência durante slow motion
    SetAudioFlag("AllowScriptedSpeechInSlowMo", false)

    -- Impede que a conversa seja abortada devido a ragdoll (efeitos de derrubada no chão)
    SetAudioFlag("DisableAbortConversationForRagdoll", true)

    -- Desativa qualquer tipo de música ou alerta que pode tocar em missões relacionadas à polícia
    SetAudioFlag("WantedMusicOnMission", false)

    -- Desativa alertas sonoros de rádios em missões
    SetAudioFlag("AllowScoreAndRadio", false)

    -- Desativa completamente os sons de alerta de radares de polícia
    SetAudioFlag("OnlyAllowScriptTriggerPoliceScanner", true)

    -- Desativa sons relacionados ao scanner de rádio da polícia
    SetAudioFlag("AllowRadioDuringSwitch", false)

    -- Desativa sons do rádio da polícia em tela de menu
    SetAudioFlag("FrontendRadioDisabled", true)
end


function setUniform()
    local ped = PlayerPedId()
    local pedModel = GetEntityModel(ped)
    local isMale = (pedModel == GetHashKey("mp_m_freemode_01"))
    local presets = isMale and Config.PresetsCloths.presets.male or Config.PresetsCloths.presets.female

    for componentId, values in pairs(presets) do
        if type(componentId) == "number" then
            SetPedComponentVariation(ped, componentId, values[1], values[2], values[3])
        elseif type(componentId) == "string" and string.sub(componentId, 1, 1) == "p" then
            local propIndex = tonumber(string.sub(componentId, 2, 2))
            ClearPedProp(ped, propIndex)
            SetPedPropIndex(ped, propIndex, values[1], values[2], true)
        end
    end
end