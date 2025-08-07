let interval

function progress ({ text, seconds }) {
  let percentage = 0
  const intervalTime = 10; 
  const incrementAmount = 100 / (seconds * 1000 / intervalTime); 
  document.querySelector('progress').style.display = 'block'
  document.querySelector('progress .progress .value').style.animation = ''

  if (interval) clearInterval(interval)

  interval = setInterval(() => {
    percentage += incrementAmount
    document.querySelectorAll('progress .title p')[0].innerHTML = text
    document.querySelectorAll('progress .title p')[1].textContent = `${Math.ceil(percentage)}%`
    document.querySelector('progress .progress .value').style.animation = `widthProgress ${seconds}s linear forwards`
  }, intervalTime);
  
  setTimeout(() => {
    document.querySelector('progress').style.display = 'none'
  }, seconds * 1000);
}

window.addEventListener('message', ({ data }) => {
  if (data.action === 'progress') progress(data)
})