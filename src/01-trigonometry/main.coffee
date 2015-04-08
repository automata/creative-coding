window.onload = () ->
  canvas = document.getElementById 'canvas'
  context = canvas.getContext '2d'
  width = canvas.width = window.innerWidth
  height = canvas.height = window.innerHeight

  context.fillStyle = 'rgb(0,255,0)'
  context.fillRect 0, 0, width, height