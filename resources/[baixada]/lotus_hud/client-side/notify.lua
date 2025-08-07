local AnnouceTypes = {
  ['police'] = {
    icon = './icons/police.png',
    title = 'AVISO POLICIAL'
  },
  ['hospital'] = {
    icon = './icons/hospital.png',
    title = 'AVISO HOSPITAL'
  },
  ['kids'] = {
    icon = './icons/kids.png',
    title = 'AVISO CRECHE'
  },
  ['party'] = {
    icon = './icons/party.png',
    title = 'AVISO FESTA'
  },
  ['firedepartment'] = {
    icon = './icons/firedepartment.png',
    title = 'AVISO BOMBEIROS'
  },
  ['judiciary'] = {
    icon = './icons/judiciary.png',
    title = 'AVISO JUDICIARIO'
  },
}

RegisterNetEvent('Announcement', function(type, message, time, title)
  SendNUIMessage({
    action = 'Announcement',
    data = {
      title = title or AnnouceTypes[type].title,
      type = type,
      icon = AnnouceTypes[type].icon,
      message = message,
      time = time * 1000,
    }
  })
end)