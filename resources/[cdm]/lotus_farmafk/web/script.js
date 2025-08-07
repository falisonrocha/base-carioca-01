const app = {
  open: () => {
    document.body.style.display = 'block'
  },
  close: () => {
    document.body.style.display = 'none'
  },
  selectOption: (element) => {
    const options = document.querySelectorAll('.option')
    options.forEach(option => {
      option.classList.remove('selected')
    })
    element.classList.add('selected')

    fetch('https://lotus_farmafk/selectOption', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({option: element.textContent }) 
    })
  }
}

window.addEventListener('message', ({data}) => {
  if (data.action === 'open') app.open()
  if (data.action === 'close') app.close()
})
