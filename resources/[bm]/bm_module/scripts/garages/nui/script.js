var position = 2;
var pending = false;
var vehiclesList = []

$(document).ready(() => requestCars());

function requestCars() {
  $.post("http://bm_module/requestGarages", JSON.stringify({}), (data) => {

    const ipva = data.cars[0].ipva || 0
    const detido = data.cars[0].status || 0
    
    ipva === true ? pending = true : pending = false
    detido === true ? pending = true : pending = false

    vehiclesList = data.cars;

    document.querySelector('#preview').innerHTML = `
      <div class = 'vehiclePreview'>
        <h1>${vehiclesList[0].name}</h1>
        <p>CATEGORIA: <b>${vehiclesList[0].type}</b></p>
        <p>PLACA: <strong>${vehiclesList[0].plate}</strong></p>
        <img src="http://177.54.148.31:4020/lotus/carros/${vehiclesList[0].vehicle}.png" alt="vehicle">
      </div>
      <div class = 'vehicleStats'>
        <h2>DADOS GERAIS</h2> 
        <div class = 'stats'>
          <div class = 'stat'>
            <i class = 'fa-solid fa-coins'></i>
            <div class = 'text'>
              <p>STATUS DA TAXA</p>
              <span>${vehiclesList[0].ipva ? 'PAGO' : 'NÃO PAGO'}</span>
            </div>
          </div>
          <div class = 'stat'>
            <i class = 'fa-solid fa-coins'></i>
            <div class = 'text'>
              <p>STATUS DO VEÍCULO</p>
              <span>${vehiclesList[0].status ? 'PRESO' : 'LIBERADO'}</span>
            </div>
          </div>
        </div>
        <div class = 'informations'>
          <div class = 'info'>
            <p>STATUS DA FRENAGEM</p>
            <div class = 'progressContainer'>
              <div class = 'progress'>
                <div class = 'value' style = 'width: ${Math.floor(vehiclesList[0].braking) > 100 ? 100 : Math.floor(vehiclesList[0].braking)}%'></div>
              </div>
              <p>${Math.floor(vehiclesList[0].braking) > 100 ? 100 : Math.floor(vehiclesList[0].braking)}%</p>
            </div>
          </div>
          <div class = 'info'>
            <p>STATUS DA AGILIDADE</p>
            <div class = 'progressContainer'>
              <div class = 'progress'>
                <div class = 'value' style = 'width: ${Math.floor(vehiclesList[0].agility) > 100 ? 100 : Math.floor(vehiclesList[0].agility)}%'></div>
              </div>
              <p>${Math.floor(vehiclesList[0].agility) > 100 ? 100 : Math.floor(vehiclesList[0].agility)}%</p>
            </div>
          </div>
          <div class = 'info'>
            <p>STATUS DA ADERÊNCIA</p>
            <div class = 'progressContainer'>
              <div class = 'progress'>
                <div class = 'value' style = 'width: ${Math.floor(vehiclesList[0].aceleration) > 100 ? 100 : Math.floor(vehiclesList[0].aceleration)}%'></div>
              </div>
              <p>${Math.floor(vehiclesList[0].aceleration) > 100 ? 100 : Math.floor(vehiclesList[0].aceleration)}%</p>
            </div>
          </div>
          <div class = 'info'>
            <p id = 'weight'>VELOCIDADE MÁXIMA</p>
            <div class = 'progressContainer'>
              <p id = 'removeStyle'>${Math.floor(vehiclesList[0].maxspeed)} KM/H</p>
            </div>
          </div>
        </div>
        <div class = 'buttons'>
          <button onclick = 'withdraw(${vehiclesList[0].ipva})'>RETIRAR</button>
          <button onclick = 'save(false)'>GUARDAR</button>
          <button onclick = 'save(true)'>GUARDAR PRÓXIMO</button>
        </div>
      </div>
    `
    document.querySelector('.vehicles').innerHTML = '';
    vehiclesList.forEach(vehicle => {
      const div = document.createElement('div');
      div.classList.add('vehicle')
      div.setAttribute('data-name', vehicle.vehicle)
      div.innerHTML = `
        <p>${vehicle.name}</p>
        <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png" alt="vehicle">
        <span>${vehicle.ipva ? 'BLOQUEADO' : 'LIBERADO'}</span>
      `
      document.querySelector('.vehicles').appendChild(div);
      div.addEventListener('click', () => {
        vehicle.ipva === true ? pending = true : pending = false
        vehicle.status === true ? pending = true : pending = false;
        document.querySelector('#preview').innerHTML = `
          <div class = 'vehiclePreview'>
            <h1>${vehicle.name}</h1>
            <p>CATEGORIA: <b>${vehicle.type}</b></p>
            <p>PLACA: <strong>${vehicle.plate}</strong></p>
            <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png" alt="vehicle">
          </div>
          <div class = 'vehicleStats'>
            <h2>DADOS GERAIS</h2> 
            <div class = 'stats'>
              <div class = 'stat'>
                <i class = 'fa-solid fa-coins'></i>
                <div class = 'text'>
                  <p>STATUS DA TAXA</p>
                  <span>${vehicle.ipva ? 'PAGO' : 'NÃO PAGO'}</span>
                </div>
              </div>
              <div class = 'stat'>
                <i class = 'fa-solid fa-coins'></i>
                <div class = 'text'>
                  <p>STATUS DO VEÍCULO</p>
                  <span>${vehicle.status ? 'PRESO' : 'LIBERADO'}</span>
                </div>
              </div>
            </div>
            <div class = 'informations'>
              <div class = 'info'>
                <p>STATUS DA FRENAGEM</p>
                <div class = 'progressContainer'>
                  <div class = 'progress'>
                    <div class = 'value' style = 'width: ${Math.floor(vehicle.braking) > 100 ? 100 : Math.floor(vehicle.braking)}%'></div>
                  </div>
                  <p>${Math.floor(vehicle.braking) > 100 ? 100 : Math.floor(vehicle.braking)}%</p>
                </div>
              </div>
              <div class = 'info'>
                <p>STATUS DA AGILIDADE</p>
                <div class = 'progressContainer'>
                  <div class = 'progress'>
                    <div class = 'value' style = 'width: ${Math.floor(vehicle.agility) > 100 ? 100 : Math.floor(vehicle.agility)}%'></div>
                  </div>
                  <p>${Math.floor(vehicle.agility) > 100 ? 100 : Math.floor(vehicle.agility)}%</p>
                </div>
              </div>
              <div class = 'info'>
                <p>STATUS DA ADERÊNCIA</p>
                <div class = 'progressContainer'>
                  <div class = 'progress'>
                    <div class = 'value' style = 'width: ${Math.floor(vehicle.aceleration) > 100 ? 100 : Math.floor(vehicle.aceleration)}%'></div>
                  </div>
                  <p>${Math.floor(vehicle.aceleration) > 100 ? 100 : Math.floor(vehicle.aceleration)}%</p>
                </div>
              </div>
              <div class = 'info'>
                <p id = 'weight'>VELOCIDADE MÁXIMA</p>
                <div class = 'progressContainer'>
                  <p id = 'removeStyle'>${Math.floor(vehicle.maxspeed)} KM/H</p>
                </div>
              </div>
            </div>
            <div class = 'buttons'>
              <button onclick = 'withdraw(${vehicle.ipva})'>RETIRAR</button>
              <button onclick = 'save(false)'>GUARDAR</button>
              <button onclick = 'save(true)'>GUARDAR PRÓXIMO</button>
            </div>
          </div>
        `
        vehicleSelected(div);
      })
    })
    vehicleSelected(document.querySelectorAll('.vehicle')[0])
  })
}

function searchVehicle ({ target }) {
  document.querySelector('.vehicles').innerHTML = '';
  const vehicleFiltered = vehiclesList.filter(vehicle => String(vehicle.name).toLowerCase().includes(target.value.toLowerCase()));
  vehicleFiltered.forEach(vehicle => {
    const div = document.createElement('div');
    div.classList.add('vehicle')
    div.setAttribute('data-name', vehicle.vehicle)
    div.innerHTML = `
      <p>${vehicle.name}</p>
      <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png" alt="vehicle">
      <span>${vehicle.ipva ? 'BLOQUEADO' : 'LIBERADO'}</span>
    `
    document.querySelector('.vehicles').appendChild(div);
    vehicleSelected(div);
    div.addEventListener('click', () => {
      vehicle.ipva === true ? pending = true : pending = false
      vehicle.status === true ? pending = true : pending = false;
      document.querySelector('#preview').innerHTML = `
        <div class = 'vehiclePreview'>
          <h1>${vehicle.name}</h1>
          <p>CATEGORIA: <b>${vehicle.type}</b></p>
          <p>PLACA: <strong>${vehicle.plate}</strong></p>
          <img src="http://177.54.148.31:4020/lotus/carros/${vehicle.vehicle}.png" alt="vehicle">
        </div>
        <div class = 'vehicleStats'>
          <h2>DADOS GERAIS</h2> 
          <div class = 'stats'>
            <div class = 'stat'>
              <i class = 'fa-solid fa-coins'></i>
              <div class = 'text'>
                <p>STATUS DA TAXA</p>
                <span>${vehicle.ipva ? 'PAGO' : 'NÃO PAGO'}</span>
              </div>
            </div>
            <div class = 'stat'>
              <i class = 'fa-solid fa-coins'></i>
              <div class = 'text'>
                <p>STATUS DO VEÍCULO</p>
                <span>${vehicle.status ? 'PRESO' : 'LIBERADO'}</span>
              </div>
            </div>
          </div>
          <div class = 'informations'>
            <div class = 'info'>
              <p>STATUS DA FRENAGEM</p>
              <div class = 'progressContainer'>
                <div class = 'progress'>
                  <div class = 'value' style = 'width: ${Math.floor(vehicle.braking) > 100 ? 100 : Math.floor(vehicle.braking)}%'></div>
                </div>
                <p>${Math.floor(vehicle.braking) > 100 ? 100 : Math.floor(vehicle.braking)}%</p>
              </div>
            </div>
            <div class = 'info'>
              <p>STATUS DA AGILIDADE</p>
              <div class = 'progressContainer'>
                <div class = 'progress'>
                  <div class = 'value' style = 'width: ${Math.floor(vehicle.agility) > 100 ? 100 : Math.floor(vehicle.agility)}%'></div>
                </div>
                <p>${Math.floor(vehicle.agility) > 100 ? 100 : Math.floor(vehicle.agility)}%</p>
              </div>
            </div>
            <div class = 'info'>
              <p>STATUS DA ADERÊNCIA</p>
              <div class = 'progressContainer'>
                <div class = 'progress'>
                  <div class = 'value' style = 'width: ${Math.floor(vehicle.aceleration) > 100 ? 100 : Math.floor(vehicle.aceleration)}%'></div>
                </div>
                <p>${Math.floor(vehicle.aceleration) > 100 ? 100 : Math.floor(vehicle.aceleration)}%</p>
              </div>
            </div>
            <div class = 'info'>
              <p id = 'weight'>VELOCIDADE MÁXIMA</p>
              <div class = 'progressContainer'>
                <p>${Math.floor(vehicle.maxspeed)} KM/H</p>
              </div>
            </div>
          </div>
          <div class = 'buttons'>
            <button onclick = 'withdraw(${vehicle.ipva})'>RETIRAR</button>
            <button onclick = 'save(false)'>GUARDAR</button>
            <button onclick = 'save(true)'>GUARDAR PRÓXIMO</button>
          </div>
        </div>
      `
      vehicleSelected(div);
    })
  })
} 

function withdraw(ipva) {
  fetch('http://bm_module/spawnCar', {
    method: 'POST',
    body: JSON.stringify({
      name: document.querySelector('.vehicle.selected').getAttribute('data-name'),
      pending: pending
    })
  })
  fetch('http://bm_module/onClose', {
    method: 'POST',
    body: JSON.stringify({ close: 'garages' })
  })
  close();
}

function save(proximity) {
  fetch('http://bm_module/storeCar', {
    method: 'POST',
    body: JSON.stringify({
      name: document.querySelector('.vehicle.selected').getAttribute('data-name'),
      status: proximity
    })
  })
  fetch('http://bm_module/onClose', {
    method: 'POST',
    body: JSON.stringify({ close: 'garages' })
  })
  close();
}

function vehicleSelected(element) {
  document.querySelectorAll('.vehicles .vehicle').forEach(vehicle => vehicle.classList.remove('selected'))
  element.classList.add('selected')
}

function close () {
  window.location.reload()
}

function updateSides (side) {
  const container = document.querySelector(".vehicles");
  const vehicles = document.querySelectorAll(".vehicle");
  if (side === "left" && position > 0) {
    position -= 1;
    const newVehicle = vehicles[position];
    newVehicle.scrollIntoView({
      behavior: "smooth",
      block: "center",
      inline: "center"
    });
  }
  if (side === "right" && position + 1 < vehicles.length) {
    position += 1;
    const newVehicle = vehicles[position];
    if (container.scrollLeft === container.scrollWidth) return;
    newVehicle.scrollIntoView({
      behavior: "smooth",
      block: "center",
      inline: "center"
    });
  }
}

window.addEventListener('keyup', ({ key }) => {
  if (key === 'Escape') {
    fetch('http://bm_module/onClose', {
      method: 'POST',
      body: JSON.stringify({ close: 'garages' })
    })
    close();
  }
})

