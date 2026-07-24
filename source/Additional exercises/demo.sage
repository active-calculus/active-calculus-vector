var('t,s')
a=4
b=5
@interact
def _():
  plot1 = sphere((1,2,0),size=.15,color="black",frame=False,aspect_ratio=1,ticks=[[],[]])
  plot1 += parametric_plot3d((t,s,0),(t,-a,a),(s,-a,a),color="red",opacity=.2)
  plot1 += arrow3d((1,2,0),(1,2,2),color="blue",width=3)
  plot1 += parametric_plot3d((t,0,0),(t,-b,b),color="black")
  plot1 += parametric_plot3d((0,t,0),(t,-b,b),color="black")
  plot1 += parametric_plot3d((0,0,t),(t,-b,b),color="black")
  plot1 += text3d("x",(5.5,0,0))+text3d("y",(0,5.5,0))+text3d("z",(0,0,5.5))
  plot1 += text3d("(a,b,c)",(1,3,0.25))
  plot1 += parametric_plot3d((1+cos(t),2+sin(t),1),(t,0,5.5),color="blue",thickness=3)
  plot1 += arrow3d((1+cos(5.5),2+sin(5.5),1),(1+cos(5.75),2+sin(5.75),1),
                    width=5,color="blue")
  show(plot1)