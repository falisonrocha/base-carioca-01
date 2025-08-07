-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('box', function(source,args)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'Open',
        data = {
          store = Config.urlStore,
          makapoints = Execute.getMakapoints(),
          banner = 'https://firebasestorage.googleapis.com/v0/b/spread-29a2b.appspot.com/o/01.png?alt=media&token=46aa6d96-0288-4653-8b95-3df642a1c59c'
        }
    })
end)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('Close', function(data, cb)
    SetNuiFocus(false, false)
    cb(true)
end)

RegisterNUICallback('GetLastUpdate', function(data, cb)
    cb('Ultimos 7 dias')
end)

RegisterNUICallback('GetBoxMostSales', function(data, cb)
    local CRATES = {}
    local i = 0
    for index in pairs(Config.Crates) do
        local crate = Config.Crates[index]
        local gen_id = #CRATES + 1
        CRATES[gen_id] = {
            id = index,
            name = crate.name,
            type = 'box',
            price = crate.price,
            category = crate.rarity,
            image_url = crate.image_url,
            drops = {}
        }

        for _, item in pairs(crate.items) do
            local gen_item_id = (#CRATES[gen_id].drops + 1)
            CRATES[gen_id].drops[gen_item_id] = {
                category = item.rarity,
                id = gen_item_id,
                item = item.item,
                name = item.name,
                probability = Config.raritys[item.rarity] or 50,
                rarity = item.rarity,
                amount = item.amount,
                image_url = ('%s/%s.png'):format(Config.dir, item.item)
            }
        end
        i = i + 1
        if i == 5 then break end
    end

    cb(CRATES)
end)