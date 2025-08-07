const AppConfig = {
  rootElement: "#root",
  utilsElement: "#utils",
  clothesElement: "#clothes",
};

class App {
  constructor() {
    this.gender = null;
    this.clothing = null;
    this.clothingType = null;
    this.values = 0;
  }

  open(currentGender, currentClothing) {
    this.gender = currentGender;
    this.clothing = currentClothing;
    document.body.style.display = 'block';

    document.querySelector('.buttons input').value = 0
    document.querySelector('.buttons div span > p').innerHTML = `0º`
  }

  renderSkinValues() {
    Object.entries(this.values).forEach(([type, value]) => {
      const container = document.querySelector(`.item[data-type=${type}]`);
      if (!container) return;
      const [itemInput, textureInput] = container.querySelectorAll(".item input");
      itemInput.setAttribute("max", value.item);
      textureInput.setAttribute("max", value.texture);
    });
  }

  setOption(button, option) {
    document.querySelectorAll('.categories button').forEach(button => button.classList.remove('selected'))

    this.toggleDisplay(AppConfig.utilsElement, option === "utils");
    this.toggleDisplay(AppConfig.clothesElement, option === "clothes");
    button.classList.add('selected')
  }

  toggleDisplay(selector, condition) {
    const element = $(selector);
    element.css("display", condition ? "flex" : "none");
  }

  updateValue(element, side, type) {
    const input = element.parentElement.querySelector("input");
    let value = Number(input.value);

    if (side === "right") {
      input.value = value + 1;
    } else if (side === "left") {
      input.value = Math.max(value - 1, -1);
    }

    const inputElement = element.parentElement.parentElement.parentElement.querySelector("#texture");


    if (Number(inputElement.value) !== 0 && type !== "texture") {
      inputElement.value = 0;
      this.post("updateSkin", {
        type: "texture",
        clothingType: element.parentElement.parentElement.parentElement.parentElement.dataset.type,
        articleNumber: Number(inputElement.value),
      });
    }

    this.post("updateSkin", {
      type: type !== "texture" ? "item" : type,
      clothingType: element.parentElement.parentElement.parentElement.parentElement.dataset.type,
      articleNumber: Number(input.value),
    });
  }

  rotate(element) {
    document.querySelector('.buttons div span > p').innerHTML = `${element.value}º`
    this.post('rotate', { heading: Number(element.value) })
  }

  async post(url, data = {}) {
    return fetch(`https://${GetParentResourceName()}/` + url, {
      method: "POST",
      body: JSON.stringify(data),
    });
  }

  resetOutfit() {
    this.post("resetOutfit");
    document.body.style.display = 'none';
  }

  saveClothing() {
    this.post("saveClothing");
    document.body.style.display = 'none';
  }

  close() {
    document.body.style.display = 'none';
    this.post("close");
  }
}
