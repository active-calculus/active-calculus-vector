︠2d69cbc7-eec8-43d0-a248-0942f065539fs︠
var('x,y,t')
plot1 = parametric_plot((t,-t),(t,-2,2),color='black',linestyle="--")
plot1 += parametric_plot((cos(t),sin(t)),(t,-pi/4,0),color='blue')
plot1 += parametric_plot((cos(t),sin(t)),(t,0,pi/4),color='red')
plot1 += parametric_plot((cos(t),sin(t)),(t,pi/4,3*pi/4),color='green')
plot1
︡97182b0a-2b48-45e6-80b5-e14e2b7c5268︡{"stdout":"(x, y, t)\n"}︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_n2xpid5j.svg","show":true,"text":null,"uuid":"dc3be1a9-5267-4401-a10e-654b41dcdd8f"},"once":false}︡{"done":true}
︠8d3bfe35-6f87-4187-b14a-8d55a0a5c4bcs︠
plot1.save("fig_ScalarLintInt_Example1.svg")
plot1.save("fig_ScalarLintInt_Example1.pdf")
︡649307fa-e2dc-49c8-9491-8d7fe1ce310b︡{"done":true}
︠bcc217fb-0970-42a4-86f3-2eeae2559058s︠
plot2 = parametric_plot((t,t),(t,-2,2),color='black',linestyle="--")
plot2 += parametric_plot((cos(t),sin(t)),(t,-pi/4,pi/4),color='blue')
plot2 += parametric_plot((cos(t),sin(t)),(t,pi/4,3*pi/4),color='red')
plot2
︡bde54aa6-4b3c-4792-82fe-0f7474d443d5︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_ubtlsca6.svg","show":true,"text":null,"uuid":"9f64406f-6ac4-43d5-8cb1-942189bc8be0"},"once":false}︡{"done":true}
︠d734cf09-2195-4b6b-9ef2-7872b99811bfs︠
plot2.save("fig_ScalarLintInt_Example2.svg")
plot2.save("fig_ScalarLintInt_Example2.pdf")
︡cafc9524-d1c4-4380-a9b9-59c4de2791ed︡{"done":true}
︠e5023d6b-2881-4e89-99de-9f33b3050fdes︠
plot3=plot(.00005*(x-90)*(x-360)+2+0.35*cos(3*x/100)+0.5,(x,0,475))
show(plot3,xmin=-10,xmax=500,ymin=0,ymax=5)
︡ae1833e8-196b-4513-b23f-e910e174eb29︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_47l47pne.svg","show":true,"text":null,"uuid":"3ea805c3-e6ca-403c-a410-1d8c6d14d88f"},"once":false}︡{"done":true}
︠0e3c9aab-0959-481f-95ca-edcc8c1d853fs︠
plot3.save("fig_LeftSideofCopiumMine.svg")
plot3.save("fig_LeftSideofCopiumMine.pdf")
︡96d3d318-d0ef-4991-a293-b43208536852︡{"done":true}
︠6008cf41-1a10-41b7-a30e-0e891b85302ds︠
var('s')
plot4=parametric_plot3d((t/sqrt(5),2*t/sqrt(5),0),(t,0,475),color='green')+parametric_plot3d((t/sqrt(5),2*t/sqrt(5),.00005*(t-90)*(t-360)+2+0.35*cos(3*t/100)),(t,0,475),color='blue')
plot5=parametric_plot3d((t/sqrt(5),2*t/sqrt(5),s*(.00005*(t-90)*(t-360)+2+0.35*cos(3*t/100))),(t,0,475),(s,0,1),color='yellow')
show(plot4+plot5, aspect_ratio=(1,1,30))

︡115b1f7c-b7f3-4744-90bf-c2e6caf78911︡{"stdout":"s\n"}︡{"file":{"filename":"2e62e8dc-75df-4e1b-9252-dd3bb8619f00.sage3d","uuid":"2e62e8dc-75df-4e1b-9252-dd3bb8619f00"}}︡{"done":true}
︠1cfb1949-8fbb-4716-8c79-e3f7168f3d50s︠
plot6=parametric_plot3d((cos(t),sin(t),t/8),(t,0,11),color='green')+parametric_plot3d((cos(t),sin(t),t/8+cos(t)-sin(t)),(t,0,11),color='blue')
plot7=parametric_plot3d((cos(t),sin(t),t/8+s*(cos(t)-sin(t))),(t,0,11),(s,0,1),color='yellow')
show(plot6+plot7, aspect_ratio=(1,1,1))
︡0323485c-ab1f-4cc4-b304-28abc432c42f︡{"file":{"filename":"ef0c5af5-9e42-454c-88e6-efee6a33d82b.sage3d","uuid":"ef0c5af5-9e42-454c-88e6-efee6a33d82b"}}︡{"done":true}
︠ac16525f-e20a-4c81-bc58-0dbd4324a9b6s︠
plot8=polygon3d([[212.5,425,0],[512.5,525,0],[300,100,0],[0,0,0]],color='grey',opacity=.5)
show(plot8)
︡6a82b3fe-7a26-498c-bcba-2c4e04b62454︡{"file":{"filename":"ddb03a38-6918-4b02-a8d0-b31d1c3a9405.sage3d","uuid":"ddb03a38-6918-4b02-a8d0-b31d1c3a9405"}}︡{"done":true}
︠4c975c5b-8b4a-4bb9-839a-8e45753c6621s︠
show(plot4+plot5+plot8, aspect_ratio=(1,1,30))
︡6d56bb2e-0857-42c5-8afe-6533bd7c64e2︡{"file":{"filename":"0fc148d5-4da7-4b5d-85ae-b33ea44f82de.sage3d","uuid":"0fc148d5-4da7-4b5d-85ae-b33ea44f82de"}}︡{"done":true}
︠ae663c65-d5ee-417e-b3a8-2ccf74b2b5e4s︠

f(x,y)=(550-y+x)*.002+cos((x^2/700+sin(y*(250-x)))/50)+0.5
cp=contour_plot(f,(x,0,550),(y,0,550),colorbar=True)
plot9=line([[0,0],[212.5,425],[512.5,525],[300,100],[0,0]],color='yellow')
show(cp+plot9)
︡c2c04c33-4c96-4320-b229-2355b4d73748︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_9e2ob6wv.svg","show":true,"text":null,"uuid":"d20acae7-adf9-49b4-82d9-6ea837b3d876"},"once":false}︡{"done":true}
︠f3478773-82cc-42c0-a265-3ec0eb4b8cf0s︠
(cp+plot9).save("CopiumMinePlot.svg")
(cp+plot9).save("CopiumMinePlot.pdf")
︡54f95ebe-3bfb-4792-af70-9c6e6b5847cb︡{"done":true}
︠6fa3642a-0069-4ead-9e28-f672b61ca2b5s︠
(250+67*cos(3.0),265+110.*sin(3.))
(250+67*cos(.25),265+110*sin(.25))
︡871d0e86-42ea-4c61-bbbe-f460d1353120︡{"stdout":"(183.670502727770, 280.523200886585)\n"}︡{"stdout":"(314.917132254613, 292.214435517998)\n"}︡{"done":true}
︠f3b36f56-44f5-4bbd-9f61-5e2dabb5a381s︠
pathplot=parametric_plot((250+67*cos(t),265+110*sin(t)),(t,-.25,4.3),color="blue")+arrow([183,280],[182.8,279],color="blue")
show(cp+plot9+pathplot)
(cp+plot9+pathplot).save("CopiumPlotwithPath.svg")
(cp+plot9+pathplot).save("CopiumPlotwithPath.pdf")
︡ae8b663a-3998-4280-89c0-6542aaef3f05︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_vs8p7it5.svg","show":true,"text":null,"uuid":"ac43da4c-8a21-49d0-8e23-38f70ed2d82e"},"once":false}︡{"done":true}
︠a28a03bf-2b90-42de-8f2c-32d931893f6fs︠
pathplot2=parametric_plot((250+67*cos(t),265+110*sin(t)),(t,-.25,4.3),color="blue")+arrow([315,292.2],[315.1,292],color="blue")
show(cp+plot9+pathplot2)
(cp+plot9+pathplot2).save("CopiumPlotwithPath2.svg")
(cp+plot9+pathplot2).save("CopiumPlotwithPath2.pdf")
︡c6751cfd-1bd4-45ff-a0c6-4c9b37605677︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_rn6pznbk.svg","show":true,"text":null,"uuid":"9c2480ce-cd82-40a4-8f5b-e1b4bb1ee2e0"},"once":false}︡{"done":true}
︠2d6b39d4-0e86-4f3c-83d9-8ea5d783361as︠
plot8=polygon3d([[212.5,425,0],[512.5,525,0],[300,100,0],[0,0,0]],color='grey',opacity=.5)
plot11=parametric_plot3d((t,2*t,0),(t,0,212.5),color='red')+parametric_plot3d((t,2*t,f(t,2*t)),(t,0,212.5),color='green')+parametric_plot3d((t,2*t,s*f(t,2*t)),(t,0,212.5),(s,0,1),color='yellow')
plot11+=parametric_plot3d((212.5+3*t,425+t,0),(t,0,100),color='red')+parametric_plot3d((212.5+3*t,425+t,f(212.5+3*t,425+t)),(t,0,100),color='green')+parametric_plot3d((212.5+3*t,425+t,s*f(212.5+3*t,425+t)),(t,0,100),(s,0,1),color='yellow')
show(plot11+plot8,aspect_ratio=(1,1,40))
plot11+=parametric_plot3d((300+t,100+2*t,0),(t,0,212.5),color='red')+parametric_plot3d((300+t,100+2*t,f(300+t,100+2*t)),(t,0,212.5),color='green')+parametric_plot3d((300+t,100+2*t,s*f(300+t,100+2*t)),(t,0,212.5),(s,0,1),color='yellow')
plot11+=parametric_plot3d((3*t,t,0),(t,0,100),color='red')+parametric_plot3d((3*t,t,f(3*t,t)),(t,0,100),color='green')+parametric_plot3d((3*t,t,s*f(3*t,t)),(t,0,100),(s,0,1),color='yellow')
show(plot11+plot8,aspect_ratio=(1,1,40))
︡a40469f7-bf27-4476-9d9f-55c6723c705a︡{"file":{"filename":"e4e4e100-f0f8-486f-b4d5-243570c8e129.sage3d","uuid":"e4e4e100-f0f8-486f-b4d5-243570c8e129"}}︡{"file":{"filename":"cdcdbab0-1b1a-40f5-8782-9d800633f7e2.sage3d","uuid":"cdcdbab0-1b1a-40f5-8782-9d800633f7e2"}}︡{"done":true}
︠0bbc5532-8c24-47a5-8194-8cd7155f284d︠
︡3a02355e-c9ea-4239-8565-4132c5679833︡{"done":true}
︠953f60dd-a559-4226-8bad-403e2a2c4609s︠
leftsideplot=plot(f(x/sqrt(5),2*x/sqrt(5)),(x,0,sqrt(5)*212.5),plot_points=30,ymin=0,ymax=2.5,xmin=0,xmax=520)
︡dffafa14-9156-4236-af68-c7a30e27b011︡{"done":true}
︠6bee5afb-1932-4a61-85ae-d43c4a31129cs︠
show(leftsideplot)
︡38f73a63-436d-49c1-8ae4-90292a2a19c7︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_dhz33nx8.svg","show":true,"text":null,"uuid":"8598abf2-80f9-4fb7-aff3-b0059ab4a466"},"once":false}︡{"done":true}
︠eff073a2-8dec-447f-9576-83d0d86e25f5s︠


︡052486ed-648e-4806-974a-328201e56bab︡{"done":true}
︠418543c4-3f94-4fc9-a567-b40ff09cbde2s︠
(leftsideplot).save("leftsideplot.svg")
(leftsideplot).save("leftsideplot.pdf")
︡c1a6e5e9-fd1f-4f60-98da-612c6e0953bb︡{"done":true}
︠862ce47c-8cf3-4cd0-9e42-7a316556e5acs︠

position=r1(4)
position
withoffset=(position[0]+0.2,position[1])
plot99+=point([position],color='black',size=20)+text('$P=r_0$',withoffset,fontsize='x-large',color='black')
plot99
︡990007cd-7459-4d1c-a879-c4b43c5be017︡{"stdout":"(46/15*cos(4), 1.16666666666667*sin(4))\n"}︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_z7qfl4hs.svg","show":true,"text":null,"uuid":"d92dc456-ad07-459b-8879-60b16b65e869"},"once":false}︡{"done":true}
︠4189f03e-26c3-497f-8965-8d759e51035ds︠
tpoints=[4,3.5,3,2.5,1.5,1,0.5]
offsetx=[0.1,-0.2,0.2,0.2,0,0,0.2]
offsety=[-0.2,-0.1,0,0.2,-0.2,-0.2,-0.2]
labels=['$P=\mathbf{r}_0$','$\mathbf{r}_1$','$\mathbf{r}_2$','','$\mathbf{r}_{n-2}$','$\mathbf{r}_{n-1}$','$Q=\mathbf{r}_{n}$']

var('t');
r1(t)=((t^2/15+2)*cos(t),(1.5-t/12)*sin(t))
plot99=parametric_plot(r1(t),(t,0.5,4),aspect_ratio=1,color='black',thickness=2,axes=False)
for i in range(len(tpoints)):
	position=r1(tpoints[i])
	withoffset=(position[0]+offsetx[i],position[1]+offsety[i])
	if(i!=len(tpoints)-1 and i!=3):
		plot99+=arrow(r1(tpoints[i]),r1(tpoints[i+1]),color='blue')
	if(i==3):
		plot99+=arrow(r1(tpoints[i]),r1(tpoints[i+1]),color='red')
	plot99+=point([position],color='black',size=50)+text(labels[i],withoffset,fontsize=25,color='black')
plot99+=text('$\Delta \mathbf{r}_i=\mathbf{r}_{i+1}-\mathbf{r}_i$',(-1,0.7),color='red',fontsize=25)
plot99
plot99.save("scalar_line_int_segments.pdf")
plot99.save("scalar_line_int_segments.svg")
︡739acb1a-18ed-4d11-a5f6-4a4c96b7a443︡{"stderr":":1: DeprecationWarning: invalid escape sequence '\\m'\n:1: DeprecationWarning: invalid escape sequence '\\m'\n:1: DeprecationWarning: invalid escape sequence '\\m'\n:1: DeprecationWarning: invalid escape sequence '\\m'\n:1: DeprecationWarning: invalid escape sequence '\\m'\n:1: DeprecationWarning: invalid escape sequence '\\m'\n"}︡{"stdout":"t\n"}︡{"stderr":":1: DeprecationWarning: invalid escape sequence '\\D'\n"}︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_k_zstjci.svg","show":true,"text":null,"uuid":"b8ead08e-3553-4216-8e78-2bd3e2bf5a8e"},"once":false}︡{"done":true}
︠8d601dbb-a270-4eaa-b174-2878349c248ds︠
plot99
︡0fa5b872-eeb5-411d-a26c-56db1d71a52d︡{"file":{"filename":"/tmp/tmpv5fde0rx/tmp_6w18veii.svg","show":true,"text":null,"uuid":"14c629fc-1149-4cf3-8063-d4eb9c99bd5e"},"once":false}︡{"done":true}
︠12f545c4-8db2-411d-af6c-43489668723d︠









