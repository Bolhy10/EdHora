/**
 * Created by Bolhy on 25/11/2015.
 */
var orange = [40, 100, 60];
var green = [75, 100, 40];
var blue = [196, 77, 55];
var black = [0, 0, 27];

var myName = "EdHora";
var letterColors = [blue,green,black,orange];
if(15 > 5){
    bubbleShape = "circle";
}else{
    bubbleShape = "square";
}
drawName(myName,letterColors);
bounceBubbles();

function updateCanvasDimensions() {
    canvas.attr({
        height: 450,
        width: 500,
    });
    canvasWidth = canvas.width();
    canvasHeight = canvas.height();
    draw();
}