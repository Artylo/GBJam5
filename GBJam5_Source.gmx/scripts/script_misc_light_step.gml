///Light Dust Effect

if(timer > 0)
{
    --timer;
}
else
{
    instance_create(lightX,lightY,dust);
    timer = timerMAX;
}
