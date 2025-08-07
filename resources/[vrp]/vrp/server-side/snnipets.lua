local pressetHooks = {
    ["ENTRADA"] = { "https://discord.com/api/webhooks/967020693965398026/bdyvHS9Zvs0_pmQ0CKkSYSOBfLzxDIna3VYSrV7EygPg_LhiPMnE7PRHbnlBQJfl2Rsw" },
    ["SAIDA"] = { "https://discord.com/api/webhooks/967020789939445782/6tzbAN7ec6TwZPvB_aMar1c1ZJIaN3u2bPRn_TfWyAxjaEhgDAD2KlaBd_c8PMs2MeIp" },
    ["DROPAR"] = { "https://discord.com/api/webhooks/1033199908074827826/xqGuZNwmICnfaaqfhXU6LM3xrChtXk1fz0ngtW9XzDzK0Ry49sUFA2kR3C4kj4q7DGIu" },
    ["ENVIAR"] = { "https://discord.com/api/webhooks/1033199998470467615/kLmgGFBZb5nQj8VwxNfZBrcrtmqp2K1mmXnV6-TRYqZd1O5anMUh4sEcCYATKw3Hcikb" },
    ["EQUIPAR"] = { "https://discord.com/api/webhooks/1033200086806712320/Sbka6SE0rkOQG6WqDwXagHTthVTaocXbrk-OOJnKsBbX_HIsEerCqQNP48XhZj9BvVZ1" },
    ["GARMAS"] = { "https://discord.com/api/webhooks/1033200158411853904/g4C7IUEaJVcL9MqI1_FdtBq2q4Im_KJpyEV88SOUwJ8j2NYho8881_Ib0OFDnijfsOeV" },
    ["SAQUEAR"] = { "https://discord.com/api/webhooks/1033200255828766801/YxMttJS0O45EAytS1rwS0c1JulGscQYpn-eOtd2fsQgDdr6ELxOXYd4N-LJnROIgXAre" },
    ["BAUCARRO"] = { "https://discord.com/api/webhooks/1033200350217371658/gxWKqkncd1gmHBfv0wcdyNUSza7d93hlII2SXowYkJrIfuVNl0bG77Tuatqb4OtdRzkc" },
    ["BAUCASAS"] = { "https://discord.com/api/webhooks/1033200441061814382/kOu6GrzN-rdXZyrgSmtsiF5Z2w169QQDpQa0U_RYRbx-bnVrtqmsXg1gMLgoCWajJ7EZ" },
    ["CRASHS"] = { "https://discord.com/api/webhooks/1033200525946134528/Md6zazw6N5cGLR6GtssF-EJLO5ee8-huAaYgCR9Zvlo4n3guB0s6i84F8rqrnTgaV_mW" },
    ["MORTE"] = { "XXX" },
    ["ROUBOGERAIS"] = { "https://discord.com/api/webhooks/1033201119398215731/PrFdcXqrfcxKnsdMcCWpbiNJdFWXiTQXcAuU_hVEIeAvaUfPiXU0ounHxepG7NfxLNpJ" },
    ["ROUBOAMMU"] = { "https://discord.com/api/webhooks/1033201353834643497/WPAg9tqPPIwTwj0_YZufQW8CetcOzKqGiKRUl-4x-I4yU1lBH6N7myP1TC_Qn5vKh_p_" },
    ["ROUBOCAIXA"] = { "https://discord.com/api/webhooks/1033201407572066305/EtqGcFiqTwc1TWnN9qR9lY-U7WbuvW8IDoviFIOvRPLQGo1tXhCpRUrl5PqccSsfJeiC" },
    ["ROUBOREGISTRADORA"] = { "https://discord.com/api/webhooks/1033201453122199562/1Uy4ArYcBwseOpaSOSvqRS9Aan2M_aHkX9wcG7ayi-GG9V0RFxpezIXw4XplIuKiFHJe" },
    ["BANCODEPOSITAR"] = { "https://discord.com/api/webhooks/976888387686518814/CM1o-uUinodkOv0CsI4cLCylbJFlyouxTkQ5j7Isfxr17LSgaINAO_S32H_Y1ATef6TS" },
    ["BANCOSACAR"] = { "https://discord.com/api/webhooks/976888630691901481/YyyUDDtT73N2M1Vv_NOfvXkhJ8NTTkW8UjoJMALMKx49gH1haTGo_zc3i2KoV76bhUoJ" },
    ["BANCOENVIAR"] = { "https://discord.com/api/webhooks/1033201817401692191/rsQ1ZvIOJi14zEufImHC7pRGQInYAJS05KOCNgUcaUf7OmnH6WXKn0MehB_bjcapgdYN" },
    ["COMPRARVEICULO"] = { "XXX" },
    ["WL"] = { "https://discord.com/api/webhooks/1033201945562849350/g3VcaiYIuZC9qCgjS13rGSVYhAaULj-cdxbhjgNIv9UNFq-2VrAQSxnQBuAaiA3JdCD5" },
    ["IDS"] = { "XXX" },
    ["TPTO"] = { "https://discord.com/api/webhooks/977636125684428900/2tNoukxm7RjJ77vtUP7Mb4KF5oZ6MJnMeJOrzM8ShkT3yWb5Xvc9yzBNsAWanHyR5Qze" },
    ["TPTOME"] = { "https://discord.com/api/webhooks/977653478178557982/wQo-_uxlkQVLBfhyu1yljsVbCzEQ93flO4laGBfcI8FjzPdsnPMGpkJ2Pj3mP4kDKp-f" },
    ["GOD"] = { "https://discord.com/api/webhooks/977632810514911282/2-SsoIDQkBtm2KMNGsqy54IW-d5YxNS6kZmvMN_cEPRj-_yiiJW3gez-qCOsJfmn1yVn" },
    ["GOID"] = { "https://discord.com/api/webhooks/1033202102396256328/2cIg17-bwQ99QaTQovAeAdMYYTY4XB-N0IeL9zNrb8gvkaVyd4EzUJKvxWxwzZfTBhV-" },
    ["KICK"] = { "https://discord.com/api/webhooks/1033202205605494825/kgqLNGSwDpY0cs2oB04huIrwkjiQ42TEFf9_jdcSJQ00GE4a0fCjGVf70YvPaQ-zlF95" },
    ["BAN"] = { "XXX" },
    ["PRENDERADM"] = { "https://discord.com/api/webhooks/1033202358454333511/e6WY2NdnjDpirulLLVz3UCu__mvSjHHq8ex6IfeY3AU-4hK5aaUuDGmkaVk0jcc8B0zS" },
    ["AADM"] = { "983507643077373962/JLYbFAScVCP0bCGgauja_56lctolBuEf3qrGtVy4k_dez12DcwyX3HLONnLv_SHNwUDG" },
    ["KILL"] = { "https://discord.com/api/webhooks/1033202448300519424/2OtO2iom_AJaxANEdN8Bq13s8hJ-b33ET45TM3FVJTMaQZeuEzV1urwhpaJzes5ib-Gm" },
    ["ITEM"] = { "https://discord.com/api/webhooks/1033202532941561937/2DI2g2ZvnXtozF7eBf21v_UfQZX6u8wQf24lb0_ZkVmSQ5jvZH27kgDnR4s9ngMF69m4" },
    ["TPWAY"] = { "https://discord.com/api/webhooks/977634816390463541/D9er8upCknh6aPGffxPJ_5eVJEfFytTA9R4-2NMJ-IgN5jIpa7_uHPx5g3XAgzrRK1n_" },
    ["ACEITARCHAMADOADMIN"] = { "https://discord.com/api/webhooks/1033202628915626024/6HZr26_6kbbL5zlaYEu_SQjQNQO9ujkOAOrgejA5eF0o1G35shHIm_ha7ViZsFJULeiJ" },
    ["GROUPADD"] = { "https://discord.com/api/webhooks/1033202991043461190/kEARlMAGouXmErJQ5cCsZofj8iysEieeRqr2dkltXpbadtWC1bbdpkoKbhqCQUyPZsZR" },
    ["GROUPREM"] = { "https://discord.com/api/webhooks/1033203071251124306/YoTPiB48Ilr2eFibcG--W34EBoJWGcyVbVZnBl1Kwnx_DYCZxDGNHIpMWWVOLnAdAAad" },
    ["SPAWNCAR"] = { "https://discord.com/api/webhooks/1033203154071863377/iKAQ0uziT94HViXsh861rxL_N7LKCTJZ3nFD8ls1dRze9mNJzI4I2ODrE-8K8nZKC_zV" },
    ["MONEY"] = { "https://discord.com/api/webhooks/1033203254147944539/nDTOA82zsafWFsCcIi_cYxjonNiTHk5L5kcscPV2eWwx-1cy9ZSzfeOZGchNBY_Xt4yW" },
    ["BATERPONTOBENNYS"] = { "XXX" },
    ["BATERPONTOPOLICIA"] = { "XXX" },
    ["BATERPONTOHOSPITAL"] = { "XXX" },
    ["BATERPONTOADMIN"] = { "XXX" },
    ["PRENDER"] = { "https://discord.com/api/webhooks/1033203342119280810/EDFrGRoImcLYhX8YKNQwxZYiFwgjAN-lhBDp_GG2VMbgQohBe_U0a26F2GYl_dq1hxMe" },
    ["DESMANCHE"] = { "https://discord.com/api/webhooks/1033203426756153395/hSzkwe01tRhzNClrnjoXFFBBb5AED84-Su6bo7atRJqHnkvBbbzKRPuVHF_J-IoAFQd5" },
    ["COPYPRESET"] = { "XXX" },
    ["SETPRESET"] = { "XXX" },
    ["REVISTARADM"] = { "XXX" },
    ["VAULTADM"] = { "XXX" },
    ["HOUSEADMCHEST"] = { "XXX" },
    ["FUEL"] = { "XXX" },
    ["LOCKPICK"] = { "https://discord.com/api/webhooks/1033203516195479672/sYqo3I1DzHiQe4INnupN3Bto6YxAnIgI11ZVd3BIHN1Ys-IM3Q1xWNLgcR4h9twcAs3D" },
    ["ADDCARRO"] = { "https://discord.com/api/webhooks/1033203611183874121/vq7eog0hONbwRJDI3hjafw1r0js1bSoI1PLmnO_MJqSxsP1rrYP5qo-R6qrcDHWXpcrp" },
    ["RENOMEAR"] = { "https://discord.com/api/webhooks/1033203699713052844/CgLnmeVlYvt_kU-uKC0faJq6ko-dOrQRxKeM7QJy-MQzLVpF3ClYNepPsR3Xmkko9tYO" },
    ["CRAFT"] = { "XXX" },
    ["KITMALOKERO"] = { "XXX" },
    ["GETITEM"] = { "XXX" },
    ["REMCARRO"] = { "https://discord.com/api/webhooks/1033203775093080144/VHQEXpesMxg7AZfDg3VUBW2RF0YrKUB_OYEg_syHRgPk0klyaT4e2q4eDfPkL-ef34PM" },
}

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DISCORD WEEBHOOK
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.sendLog(weebhook, mensagge)
    if weebhook and mensagge then
        if pressetHooks[weebhook] ~= nil then
            SendWebhookMessage(pressetHooks[weebhook][1],mensagge)
        else
            SendWebhookMessage(weebhook,mensagge)
        end
    end
end

function SendWebhookMessage(webhook,message)
    if webhook ~= "none" then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- DESLOGAR DENTRO DA PROPRIEDADE
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.atualizarPosicao(user_id,x,y,z)
    local data = vRP.getUserDataTable(user_id)
    if user_id then
        if data then
            data.position = { x = x, y = y, z = z }
        end
    end
end

function vRP.limparArmas(user_id)
    local data = vRP.getUserDataTable(user_id)
    if user_id then
        if data then
            data.weapons = {}
        end
    end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('playerDropped', function (reason)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then

        if reason == "Game crashed: gta-core-five.dll!CrashCommand (0x0)" then
            vRP._setBanned(user_id, true, "Usou comando para forjar o crash")
            vRP.sendLog("CRASHS", "O ID "..user_id.." utilizou o comando _crash.")
        end
    end
end)
