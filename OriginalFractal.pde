public void setup()
{
	size(310,310);
}
public void draw()
{
	int p = (int)(Math.random())*255;
	stroke(p,p,p);
	ellipse(150,150,300,300);
	fractal(150,150,300);
}
public void fractal(int x,int y,int len)
{
	if(len >= 10)
	{
	  ellipse(x,y,len,len);
	  fractal(x+len/4,y,len/2);
	  fractal(x,y+len/4,len/2);
	  fractal(x-len/4,y,len/2);
	  fractal(x,y-len/4,len/2);
	}
}