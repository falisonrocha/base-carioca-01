-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROXY
-----------------------------------------------------------------------------------------------------------------------------------------
cO = {}
Tunnel.bindInterface(GetCurrentResourceName(),cO)
vSERVER = Tunnel.getInterface(GetCurrentResourceName())
-----------------------------------------------------------------------------------------------------------------------------------------
--  DECODE
-----------------------------------------------------------------------------------------------------------------------------------------
local services = { 
    [1] = {"POLICIA",2521.15,-336.87,101.89,"perm.policia", "admin.permissao" },
    [2] = {"HOSPITAL",-443.63,-310.01,34.92,"perm.unizk", "admin.permissao" },
    [3] = {"POLICIACIVIL",482.51,-995.26,30.69,"perm.policiacivil", "admin.permissao" },
    [4] = {"MECANICA",145.62,99.19,83.52,"perm.mecanica", "admin.permissao" },
    [5] = {"POLICIACOT",2518.36,-432.84,106.91,"perm.cot", "admin.permissao" },
}

Citizen.CreateThread( function()
	while true do
		local timeDistance = 500
		local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        for k,v in pairs(services) do
            local distance = #(coords - vector3(v[2],v[3],v[4]))
            if distance <= 1.5 then
                timeDistance = 5
                DrawText3D(v[2],v[3],v[4],"~r~E~w~   ABRIR")

                if IsControlJustPressed(0,38) then
                    local checkPermission,checkLider = vSERVER.requestPermission(v[5],v[6])
                    if checkPermission and checkLider then 
                        exports["dynamic"]:SubMenu("Equipar","Todas os uniformes de sua corporação.","uniforms")
                        exports["dynamic"]:AddButton("Sair","Sair de Patrulhamento.","sysClothes:applyPreset","sairPtr","uniforms",true)

                        exports["dynamic"]:SubMenu("Opções","Gerenciamento de uniformes líder.","optionsUniforms")
                        exports["dynamic"]:AddButton("Adicionar","Adicione o uniforme que está em seu corpo.","sysClothes:applyPreset","apply","optionsUniforms",true)
                        exports["dynamic"]:AddButton("Deletar","Delete algum uniforme existente.","sysClothes:applyPreset","delete","optionsUniforms",true)
                    elseif checkPermission then 
                        exports["dynamic"]:SubMenu("Equipar","Todas os uniformes de sua corporação.","uniforms")
                        exports["dynamic"]:AddButton("Sair","Sair de Patrulhamento.","sysClothes:applyPreset","sairPtr","uniforms",true)
                    end

                    local uniforms = vSERVER.requestClothes(v[1],v[5])
                    if uniforms then 
                        for _,x in pairs(uniforms) do 
                            exports["dynamic"]:AddButton(x.name,"Roupa para utilizar em serviço.","sysClothes:applyPreset",x.name,"uniforms",true)
                        end
                    end
                end

            end
        end
        Citizen.Wait(timeDistance)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	SetTextFont(4)
	SetTextCentre(1)
	SetTextEntry("STRING")
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	AddTextComponentString(text)
	SetDrawOrigin(x,y,z,0)
	DrawText(0.0,0.0)
	local factor = (string.len(text) / 450) + 0.01
	DrawRect(0.0,0.0125,factor,0.03,40,36,52,240)
	ClearDrawOrigin()
end
