const app = new App();

$(document).ready(() => {
  window.addEventListener("message", ({ data }) => {
    const { action, currentGender, currentClothing, maxValues } = data;
    switch (action) {
      case "open":
        app.open(currentGender, currentClothing, maxValues);
        break;
      case "close":
        app.close();
        break;
      case "updateMax":
        app.values = maxValues;
        app.renderSkinValues();
        break;
      default:
        break;
    }
  });

  window.addEventListener("keydown", ({ key }) => {
    if (key === "a") {
      fetch(`http://dm_skinshop/rotateLeft`, { method: "POST" });
    }
    if (key === "d") {
      fetch(`http://dm_skinshop/rotateRight`, { method: "POST"});
    }
  });

  document.querySelectorAll(".set-camera").forEach((e) => {
    e.addEventListener("click", () => {
      document.querySelectorAll(".set-camera").forEach((div) => div.parentElement.classList.remove('selected'));
      e.parentElement.classList.add('selected');
      app.post("setupCam", {
        value: Number(e.dataset.value),
      });
    });
  });

  document.addEventListener('keydown', function ({ key }) {
    if (key === "Escape") {
      app.resetOutfit();
    }
    if (key === 'a') {
      fetch('https://dm_skinshop/rotateLeft', {
        method: 'POST',
        body: JSON.stringify({})
      })
    }
    if (key === 'd') {
      fetch('https://dm_skinshop/rotateRight', {
        method: 'POST',
        body: JSON.stringify({})
      })
    }
  });

  if (!window.invokeNative) {
    document.body.style.display = 'block'
    // document.body.style.background = '#1c1c1c'
  }
});