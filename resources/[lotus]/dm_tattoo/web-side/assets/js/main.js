const App = {
  shop: {},
  selectedItems: {},
  containerItems: $("main"),
  hasBought: false,
  openNui: (newShop, atualTattoo) => {
    App.shop = newShop;
    App.atualTattoo = atualTattoo;
    $("body").css("display", "flex");
    $(".categories button.selected").click();

    document.querySelector('.buttons input').value = 0
    document.querySelector('.buttons div span > p').innerHTML = `0º`
  },
  
  rotate: (element) =>  {
    document.querySelector('.buttons div span > p').innerHTML = `${element.value}º`
    SendRequest("rotate", {
      heading: Number(element.value),
    });
  },

  selectCategory: (element, category) => {
    $("button").removeClass("selected");
    $(element).addClass("selected");

    App.containerItems.empty();

    let htmlToAdd = "";
    App.shop[category].tattoo.forEach((tattoo, key) => {
      const activeClass = Object.keys(App.atualTattoo).includes(tattoo.name) ? "selected" : "";
      const imageUrl = `http://177.54.148.31:4020/tattos/${category}/${tattoo.name}.jpg`;
      htmlToAdd += `
        <div class="tattoo ${activeClass}" data-key="${key}" data-category="${category}" onclick="App.selectItem(this)">
          <img src="./assets/images/check.png">
          <div class="image" style="background-image: url('${imageUrl}')"></div>
          <div class="number">${key}</div>
        </div>
      `;
    });
    App.containerItems.append(htmlToAdd);
  },
  selectItem: async (element) => {
    const key = element.dataset.key;
    const category = element.dataset.category;

    element.classList.toggle("selected");

    if (element.classList.contains("selected")) {
      App.selectedItems[`${category}-${key}`] = true;
    } else {
      delete App.selectedItems[`${category}-${key}`];
    }
    SendRequest("changeTattoo", { type: category, id: key });
  },
  clearItems: () => {
    $(".tattoo").removeClass("selected");
    App.selectedItems = {};
    SendRequest("clearTattoo");
  },
  buyTattoos: () => {
    App.close();
    SendRequest("finishTattoos", { price: 200 });
  },
  close: () => {
    $("body").css("display", "none");
    App.selectedItems = {};
    SendRequest("close");
  },
};

if (!window.invokeNative) {
  document.body.style.display = 'block'
}

$(document).ready(() => {
  window.addEventListener("message", ({ data }) => {
    const { openNui, shop, tattoo } = data;
    if (openNui) App.openNui(shop, tattoo);
  });

  document.querySelectorAll(".set-camera").forEach((e) => {
    e.addEventListener("click", () => {
      document.querySelectorAll(".set-camera").forEach((svg) => svg.classList.remove('selected'));
      e.classList.add('selected');
      SendRequest("setupCam", { value: Number(e.dataset.value) });
    });
  });
});

async function SendRequest(route, body = {}) {
  try {
    if (!window.isOnline) {
      console.log("NOT CONNECTED");
      return;
    }

    const response = await fetch(
      `http://${window.GetParentResourceName()}/${route}`,
      {
        method: "POST",
        headers: {
          "Content-type": "application/json; charset=UTF-8",
        },
        body: JSON.stringify(body),
      }
    );

    return await response.json();
  } catch (error) {
    
  }
}

document.addEventListener("keydown", ({ key }) => {
  if (key === "Escape") {
    $("body").css("display", "none");
    SendRequest("close")
  }
  if (key === "a") SendRequest("rotateLeft");
  if (key === "d") SendRequest("rotateRight");
});