var('x,y')
f(x,y)=(550-y+x)*.002+cos((x^2/700+sin(y*(250-x)))/50)+0.5
cp=contour_plot(f,(x,0,550),(y,0,550),colorbar=True)
plot9=line([[0,0],[212.5,425],[512.5,525],[300,100],[0,0]],color='yellow')  
final=cp+plot9
final