window.onload = () ->
  canvas = document.getElementById 'canvas'
  context = canvas.getContext '2d'
  width = canvas.width = window.innerWidth
  height = canvas.height = window.innerHeight

  context.translate 0, height/2

  # Plot sine and cosine curves for 0...360 degrees
  for deg in [0...2*Math.PI] by 0.01
    context.fillStyle = 'rgb(0,0,0)'
    context.fillRect deg * 100, Math.sin(deg) * 200, 2, 2
    context.fillStyle = 'rgb(255,0,0)'
    context.fillRect deg * 100, Math.cos(deg) * 200, 1, 1

    size = Math.sin(deg) * 10
    context.fillStyle = 'rgb(0,0,0)'
    context.fillRect 650 + deg * 100, Math.sin(deg) * 200, size, size
    context.fillStyle = 'rgb(255,0,0)'
    context.fillRect 650 + deg * 100, Math.cos(deg) * 200, size, size
    

