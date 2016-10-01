///Disappear
if(scale > 0) scale -= 0.001;
else instance_destroy();

image_xscale = scale;
image_yscale = scale;

if(timer > 0) timer--;
else
{
    direction = irandom(360);
    timer = random(3)*room_speed;
}
