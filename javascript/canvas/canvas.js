function draw() {
  var canvas = document.getElementById('area');
  if (canvas.getContext) {
    var ctx = canvas.getContext('2d');
    
    // White fill
    ctx.fillStyle = 'white';
    ctx.fillRect(0, 0, 150, 150);
    
    var lineargradient = ctx.createLinearGradient(0,0,150,150);
    lineargradient.addColorStop(0,'red');
    lineargradient.addColorStop(1,'black');
    
    ctx.beginPath();
    ctx.moveTo(75,40);
    ctx.bezierCurveTo(75,37,70,25,50,25);
    ctx.bezierCurveTo(20,25,20,62.5,20,62.5);
    ctx.bezierCurveTo(20,80,40,102,75,120);
    ctx.bezierCurveTo(110,102,130,80,130,62.5);
    ctx.bezierCurveTo(130,62.5,130,25,100,25);
    ctx.bezierCurveTo(85,25,75,37,75,40);
    ctx.fillStyle = lineargradient;
    ctx.fill();
  }
}

// Execute on load
window.onload = draw;