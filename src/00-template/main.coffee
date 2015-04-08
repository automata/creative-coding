window.onload = () ->
  canvas = document.getElementById 'canvas'
  context = canvas.getContext '2d'
  width = canvas.width = window.innerWidth
  height = canvas.height = window.innerHeight

  context.fillStyle = 'rgb(250,0,0)'
  context.fillRect 0, 0, width, height