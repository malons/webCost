<%@ LANGUAGE="JavaScript" %>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<meta http-equiv="content-language" content="en">
	<title>OFIX3 Calulate</title>
	<%
	function Fquad(a,b,c) {

		dataX=new Array(0,172,157,143,144,159,173);
		dataY=new Array(0,172,157,141,140,155,171);
		dataZ=new Array(0,141,143,128,126);
		var hue = "010101413101010010141314131010014131413141310023141314131420025231413142620023252314262420025232526242620023252324262420025232526242620013252324262410010132020241010010101324101010";
		var swOn=new Array(180);
		nImgOn=new Array();
		nImgOff=new Array();
		nImgOn ="bhor.gif bver.gif ver_on.gif izq_on.gif der_on.gif der_on.gif izq_on.gif".split(" ");
		nImgOff="bhor.gif bver.gif ver.gif izq.gif der.gif bhor.gif bhor.gif".split(" ");

		for (x=0; x<=a; x++) {
		for (y=0; y<=b; y++) {
			for (n=1; n<=6; n++) {
			swOn[dataX[n]-x*13]=true;
			swOn[dataY[n]-y*17]=true;
				for (z=0; z<=c; z++) {
					swOn[dataX[n]-x*13-z*30]=true;
					swOn[dataY[n]-y*17-z*30]=true;
				}
				n<5?swOn[dataZ[n]-x*13-y*17-(z-1)*30]=true:n=n;
			}
		}
		}
		for (i=0; i<180; i++) {
						swOn[i]==true?miImg=nImgOn[hue.charAt(i)-1+1]:miImg=nImgOff[hue.charAt(i)-1+1];
						msg="<img border='0' src='imgs/"+miImg+"'>";
						i%15==0?%><%= "<br>" %><%:i=i;
						%><%= msg %><%
		}
		%><%= "<br>" %><%
	}
	%>

</head>

<body>
	<div align="center">
		<div align="center">
			<br><span onmouseover="document.myimage1.src='imgs/logor.gif';" onmouseout="document.myimage1.src='imgs/logoa.gif';"><img src="imgs/logoa.gif"  name="myimage1" /></span><br>
		</div>

		<div style="width:600px;" align="left">
			<p>How to estimate a web project's cost. Fill in this form and press Calculate.</p>
			<p>The three factors we measure:
				<ul>
				<li>Purpose, the main finality of the site.</li>
				    <li>Tarjet, people object of the action.</li>
				    <li>Environment, where it will be carried out</li>
				</ul></p>
			<p>The attached graphic gives you an idea of how these three concepts are related.</p>

                <div align="center">
     			<table border="0" cellspacing="0" cellpadding="0" height="169" width="247">
				<tr>
                      			<td width="179" height="62" align="center">
						<p align="center"><a name="graph"></a>
<% if (Request.Form('B1')!='Calculate') {
	Fquad(1,2,0); %>
<% } else {

	var rs=new Array();

	for (i=0; i<=8; i++) {
		if ((i%3)==0)
			rs[rs.length]=0;
		mC="R"+i;
		if (Request.Form(mC)=="V1")
			rs[rs.length-1]=rs[rs.length-1]+1;
		if (Request.Form(mC)=="V2")
			rs[rs.length-1]=rs[rs.length-1]+2;
	}


	for (i=0; i<=2; i++) {
		rs[i]=Math.ceil(rs[i]/3);
	}
			Fquad(rs[1],rs[0],rs[2]);
   } %>
					</p>
				</td>
                      		<td height="62" width="64">
                        		<p align="center"><img border="0" src="imgs/il2.gif" width="29" height="69"></p>
                      		</td>
                    	</tr>
                    	<tr>
                      		<td width="179" height="40">
                        		<p align="center"><img border="0" src="imgs/il1.gif" width="163" height="55"></p>
                      		</td>
                      		<td height="40" width="64">
                        		<p align="center">
                        	</td>
                    	</tr>
                  </center>
 			<tr>
                      		<td colspan="2" height="46" align="left">

                        		<p align="center">

<% if (Request.Form('B1')!='Calculate') {
                            %><%= "<p> <br><u>Uninitialized Calculation</u></p>" %><%
   } else {
		           rtl="Low,Midle,Height".split(",");
			   var tt=24+4*((rs[0]+1)*(rs[1]+1)*(rs[2]+1));
			   %><%= "<p align='center'> <br><u>Resulting Calculation</u>" %><%
			   %><%= "<table border='0'><tr>" %><%
			   %><%= "<td>Purpose rol </td>" %><%
			   %><%= "<td> <i>"+rtl[rs[2]]+"</i></td>" %><%
			   %><%= "</tr><tr><td>Tarjet rol </td>" %><%
			   %><%= "<td> <i>"+rtl[rs[1]]+"</i></td>" %><%
			   %><%= "</tr><tr><td>Environment rol </td>" %><%
			   %><%= "<td> <i>"+rtl[rs[0]]+"</i></td>" %><%
			   %><%= "</tr><tr><td>Yearly cost in € </td>" %><%
			   %><%= "<td>"+(tt/4).toFixed(3)+"</td>" %><%
			   %><%= "</tr></table></p>" %><%

   }
%>

			    		</p>

    		      		</td>
                    	</tr>
			<tr>
				<td width="245" colspan="2" height="21">
					<p align="center">
				</td>
			</tr>
              	</table>
                </div>

				<p>
					The blocks in the graph represent the allocation of resources - the effort - that you will have to make to shoot your project.
				</p>
				<p>
					Thus, a Site that must be made with the aim of <i>informing</i> - taking the PURPOSE axis as an example - will have fewer blocks resting on this axis than another made with the aim of <i>selling</i>.
				</p>
				<p>
					The other two axes receive the measurement of their three corresponding parameters, adding (to the bottom-left ENVIRONMENT, and to the bottom-right TARJET) more or less blocks to the set.
				</p>
				<p>
					In our calculation method we have divided each of the three main parts into three parts. This model goes, consequently, from a single block for the minimum to twenty-seven blocks for the maximum. The number of blocks is directly related to the annual cost of a project.
				</p>
				<p>
					Approximately, because the nine parts involved in the calculation may not have the same weight in a real case. In our calculation we have weighted this factor to avoid an endless test, with dozens of questions.
				</p>
				<p>

					Two evaluations with the same number of blocks can have different meanings. For example, a result of three blocks can be presented in three different ways:
					    <ul><li>the three aligned on the <i>Purpose</i> axis</li>
						<li>The three aligned on the <i>Tarjet</i> axis</li>
						 <li> The three aligned on the <i>Environment</i> axis</li></ul>
					Consequently, the graph not only gives us the result of the effort to be made, it also tells us which direction this effort should go.
				</p>
				<hr  size="1" width="100%" noshade>
             			<p>
                    			<a name="dest12"></a>

            				<form name="miForm1" action=calculate.asp#graph method=Post>
              					<table border="0" align="center" cellspacing="0" cellpadding="0" height="545">
                					<tr>
                  						<td width="100%" colspan="3" height="25"><img border="0" src="imgs/qmark.gif" width="12" height="12" alt="" title="
 With respect to similar initiatives, this go...

  - With all
	More or less similar to the others. Example: Renault.

  - Ahead
	The initiative marks a major difference from similar ones. Example: Mercedes.

  - Aside
	It has nothing to do with other similar initiatives. Example: Ferrari.
                  						">
                    							With respect to similar initiatives, this go...
                   						</td>
                					</tr>
                					<tr>
                  						<td width="33%" height="21"><img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" value="V0" name="R0">
                        					With all
                  						</td>
                  						<td width="33%" height="21"><input type="radio" value="V1" name="R0">
                  						Ahead
                  						</td>
                  						<td width="34%" height="21"><input type="radio" checked value="V2" name="R0">
                  						Aside
                  						</td>
                					</tr>
                					<tr>
                  						<td width="100%" colspan="3" height="21"></td>

                					<tr>
                  						<td width="100%" colspan="3" height="20"><img border="0" src="imgs/qmark.gif" width="12" height="12"alt="" title="
 This website is related to a conventional event...

 - Aliena
  	Yes, but only to give - collect - information. Example: Sports equipment.

 - Mixed
   	With the idea that it works in parallel to other activity. Example: Hardware.

 - Exclusive
  	One hundred percent Internet. Example: Payment Providers.
                  						">
                    							This website is related to a conventional event...
                  						</td>
                					</tr>
                					<tr>
                  						<td width="33%" height="21">
                  							<img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" value="V0" name="R1">
									Aliena
                  						</td>
                  						<td width="34%" height="21"><input type="radio" value="V1"name="R1">
                  							Mixed
                  						</td>
                  						<td width="34%" height="21"><input type="radio" checked value="V2"name="R1">
                  							Exclusive
                  						</td>
                					</tr>

                					<tr>
                  						<td width="100%" colspan="3" height="21"></td>
                					<tr>

                					</tr>
                					<tr>
                  						<td width="100%" colspan="3" height="21">
                    							<a name="dest23"></a><img border="0" src="imgs/qmark.gif" width="12" height="12" title="
 Its organization is...
 - Small
  	Individual or discrete. groupExample:Cultural Association.

 - Medium
   	Medium-sized company. Example: Perfumery Franchise.

 - Large
  	Big company, open group. Example: Variable Timeshare
                    ">
                    Its organization is...
                   						</td>
                					</tr>
                					<tr>
                  						<td width="33%" height="21"><img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" value="V0" name="R2">
Small
                  						</td>
                  						<td width="33%" height="21"><input type="radio" value="V1" name="R2">
Medium
										</td>
              							<td width="34%" height="21"><input type="radio" checked value="V2" name="R2">
Large
								</td>

							</tr>
                					<tr>
                  						<td width="100%" colspan="3" height="21"></td>
                					<tr>
                					<tr>
                  						<td width="100%" colspan="3" height="21">
                    						<img border="0" src="imgs/qmark.gif" width="12" height="12" title="
 Its possible user is distributed in an area...

 - Regional
  	It is limited to a range area. Example: Catering for communities.

 - National
   	Its limits are rather idiomatic and/or legal. Example: Books.

 - International
  	It has no appreciable limits. Example: Gift items.
                    ">
                     Its possible user is distributed in an area...
                  						 </td>
                					</tr>
                					<tr>
                  						<td width="33%" height="21"><img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" value="V0" name="R3">
Regional
                  						</td>
                  						<td width="33%" height="21"><input type="radio" checked value="V1" name="R3">
National
                  						</td>
                  						<td width="34%" height="21"><input type="radio" value="V2" name="R3">
International
                  						</td>
                					</tr>
                					<tr>
                  						<td width="100%" colspan="3" height="21"></td>
                					<tr>
                					<tr>
                  						<td width="100%" colspan="3" height="21">
                    							<img border="0" src="imgs/qmark.gif" width="12" height="12" title="
  The number of reasonably expected users is...

  - Small
  	Few and well selected. Example: Real estate.

  - Medium
   	I need a critical mass of hits. Example: Wholesaler of Tot a 100.

  - Large
  	It works on the basis of quantity. Example: Banner advertising.
                    							">
			The number of reasonably expected users is...
                   						</td>
                					</tr>
                					<tr>
                  						<td width="33%" height="21"><img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" value="V0" name="R4">
Small
                  						</td>
                  						<td width="33%" height="21"><input type="radio" checked value="V1" name="R4">
Medium
                  						</td>
                  						<td width="34%" height="21"><input type="radio" value="V2" name="R4">
Large
                  						</td>
                					</tr>
                					<tr>
								<td width="100%" colspan="3" height="21"></td>
							</tr>

                  					<td width="100%" colspan="3" height="21">
                    						<img border="0" src="imgs/qmark.gif" width="12" height="12" title="
 The typical grouping of its users is by...

 - Activity
  	Directly related to Tarjet. Example: Construction (Architects, Developers).

 - Demography
   	By age, sex,... Example: Sale of music.

 - Geography
  	Related to an area or a type of locations. Example: Information on Ski Slopes.
                    						">
			 The typical grouping of its users is by...
                   					</td>
                				</tr>
                				<tr>
                  					<td width="33%" height="21"><img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" value="V0" name="R5">
Activitat
                  					</td>
                  					<td width="33%" height="21"><input type="radio" checked value="V1" name="R5">
Demografía
                  					</td>
                  					<td width="34%" height="21"><input type="radio" value="V2" name="R5">
Geografía
                  					</td>
                				</tr>
                				<tr>
							<td width="100%" colspan="3" height="21"></td>
                				</tr>
                				<tr>
                  					<td width="100%" colspan="3" height="21">

                    						<img border="0" src="imgs/qmark.gif" width="12" height="12" title="
 The use pay...

 - No
 	Or not at the moment. Example: Fashion Collection.

 - Previously
   	The customer pay befotre receiving. Example: Art Gallery.

 - Via web
  	The customer must pay online. Example: Pay-to-View Television.
                    						">
                    The user pay...
                   					</td>
                				</tr>
                				<tr>
                  					<td width="33%" height="21"><img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" checked value="V0" name="R6">
No
                  					</td>
                  					<td width="33%" height="21"><input type="radio" value="V1" name="R6">
Previously
                  					</td>
                  					<td width="34%" height="21"><input type="radio" value="V2" name="R6">
Vía web
                  					</td>
                					</tr>
                					<tr>
								<td width="100%" colspan="3" height="21"></td>
                					</tr>
                					<tr>
                  						<td width="100%" colspan="3" height="21" title="
  Your site refers to...

  - Activity
  	Non-commercial participation. Example: Sports Club.

  - Service
   	Application of an action. Example: Management.

  - Product
  	Tangible physical things.Example: Cars.
                  					">
                    						<img border="0" src="imgs/qmark.gif" width="12" height="12">
                    Your site refers to...
                   						</td>
                					</tr>
                					<tr>
                  						<td width="33%" height="21"><img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" checked value="V0" name="R7">
Activity
                  						</td>
                  						<td width="33%" height="21"><input type="radio" value="V1" name="R7">
Service
                  						</td>
                  						<td width="34%" height="21"><input type="radio" value="V2" name="R7">
Product
                  						</td>
                					</tr>
                					<tr>
								<td width="100%" colspan="3" height="21"></td>
                					</tr>
                						<tr>
                  						<td width="100%" colspan="3" height="21">
                    							<img border="0" src="imgs/qmark.gif" width="12" height="12" title="
 The purpose of your project...

 - Informing
  	Content and/or collect relevant information. Example: Grouping of users.

 - Promoting
   	Initiative that increases sales. Example: DIY forum for a paint brand.

 - Selling
  	Originate the sales contract directly online. Example: Auctions.
				">
                    The purpose of your project...
                   							</td>
                						</tr>
                						<tr>
                  							<td width="33%" height="21"><img border="0" src="imgs/sep.gif" width="25" height="1"><input type="radio" checked value="V0" name="R8">

                        Informing

                  							</td>
                  							<td width="33%" height="21"><input type="radio" value="V1" name="R8">

                  	Promoting

                  							</td>
                  							<td width="34%" height="21"><input type="radio" value="V2" name="R8">

                  	Selling

                  							</td>
                						</tr>
                						<tr>
                 							 <td width="100%" height="21" colspan="3"><img border="0" src="imgs/sep.gif" width="367" height="1">
                 							 </td>
                						</tr>
                						<tr>
                  							<td width="100%" height="1" colspan="3" align="center">
                     								 <p><input type="submit" value="Calculate" name="B1"></p>
                  							</td>
                						</tr>
              						</table>
                    				</form>
						<hr  size="1" width="100%" noshade>
						<p align="right"><img border="0" src="imgs/logof.gif"></p>
			</div>
		</div>
	</body>
</html>