const app = {
  models: {
    value: false,
    camRotation: 180,
    hairModel: 1,
    firstHairColor: 0,
    secondHairColor: 0,
    makeupModel: null,
    makeupcolor: null,
    lipstickModel: null,
    lipstickColor: null,
    beardModel: null,
    beardColor: null,
    chestModel: null,
    eyebrowsModel: null,
    eyebrowsColor: null,
    blushModel: null,
    blushColor: null,
    eyesColor: null,
  },

  open: (data) => {
    document.body.style.display = 'block'
    app.selectCategory(document.querySelectorAll('.category')[0], 'face')
    Object.entries(data).forEach(([key, value]) => {
      const element = document.querySelector(`input[oninput="app.selectItem(this, '${key}')"]`);
      if (element) {
        const titleElement = element.parentElement.parentElement.querySelector(".item-value");
        titleElement.innerText = element.value;
        element.value = value;
      }
    });
    app.models = data;
    document.querySelector('.buttons input').value = 0
    document.querySelector('.buttons div span > p').innerHTML = `0º`
  },

  close: () => {
    document.body.style.display = 'none'
  },

  selectCategory: (element, category) => {
    document.querySelectorAll(".category").forEach(category => category.classList.remove('selected'))
    element.classList.add("selected");

    document.querySelectorAll(".items section").forEach((section) => {
      if (section.getAttribute("data-type") === category) {
        section.style.display = "flex";
      } else {
        section.style.display = "none";
      }
    });
  },

  
  rotate: (element) => {
    document.querySelector('.buttons div span > p').innerHTML = `${element.value}º`
    app.post('rotate', { heading: Number(element.value) })
  },

  post: (url, data = {}) => {
    return fetch(`${config.url}/${url}`, {
      method: "POST",
      body: JSON.stringify(data),
    });
  },

  selectItem: (element, type) => {
    app.models[type] = Number(element.value);
    const titleElement = element.parentElement.parentElement.querySelector(".item-value");
    titleElement.innerText = element.value;
    app.post("updateSkin", app.models);
  },

  finishShop: () => {
    if (app.models === null) return;
    document.body.style.display = 'none'
    app.models.value = true;
    app.post("updateSkin", {
      ...app.models,
      close: true,
    });
  },

  cancelShop: () => {
    app.post("cancel");
    document.body.style.display = 'none'
  },
};

window.addEventListener("message", ({ data }) => {
  if (data.openBarbershop === true) app.open(data);
  if (data.openBarbershop === false) app.close();
});


window.addEventListener("keyup", ({ key }) => {
  if (key === "Escape") app.cancelShop();
});

document.querySelectorAll(".set-camera").forEach((e) => {
  e.addEventListener("click", () => {
    document.querySelectorAll(".set-camera").forEach((el) => el.classList.remove('selected'))
    app.post("setupCam", { value: Number(e.dataset.value) });
    e.classList.add('selected')
  });
});

document.addEventListener("keydown", ({ keyCode }) => {
  switch (keyCode) {
    case 68:
    case 39:
      app.post("rotateRight");
      break;
    case 65:
    case 37:
      app.post("rotateLeft");
      break;
  }
});


if (!window.invokeNative) {
  document.body.style.backgroundColor = '#1c1c1c'
  window.postMessage({
    openBarbershop: true,
    data: {
      hairModel: 1,
      firstHairColor: 0,
      secondHairColor: 0,
      makeupModel: 1,
      makeupcolor: 2,
      lipstickModel: 3,
      lipstickColor: 4,
      beardModel: 5,
      beardColor: 6,
      chestModel: 7,
      eyebrowsModel: 2,
      eyebrowsColor: 2,
      blushModel: 4,
      blushColor: 4,
      eyesColor: 4,
    }
  })
}