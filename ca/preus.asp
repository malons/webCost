<%@ LANGUAGE="JavaScript" %>
<html>
<head>
	<meta charset="UTF-8">
	<!-- meta name="viewport" content="width=device-width, initial-scale=1.0" -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta http-equiv="content-language" content="ca">
	<title>OFIX3 Preus</title>
<style>
	.webfix  { font-size: 12px; line-height: 15px }

	.dark-mode {
	  background-color: black;
	  color: white;
	}
</style>
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
					msg="<img border='0' src='../imgs/"+miImg+"'>";
					i%15==0?%><%= "<br>" %><%:i=i;
					%><%= msg %><%
	}
	%><%= "<br>" %><%
}
%>
<style><!--
.webfix  { font-size: 12px; line-height: 15px }-->
</style>
</head>

<body>
	<div align="center">
		<div align="center">
			<br><span onmouseover="document.myimage1.src='../imgs/logo.png';" onmouseout="document.myimage1.src='../imgs/logo1.png';"><img src="../imgs/logo1.png"  name="myimage1" /></span><br>
					<h1>Preus d'un Projecte.
					<table border=0 cellspacing="5" cellpadding="0" width="550">
					<tr>
						<td width="500"></td>
						<td>
							<a href="http://?"  onclick=onclick=location.replace("../calculate.asp")><img src="../imgs/english.gif" title="English" with="18" height="18" border=0></a></td>
						</td>
						<td width="10">
							<td><a href="http://?"  onclick="myFunction()"><img src="../imgs/cleardark.gif" title="Dark Clear" with="18" height="18"  border=0></a></td>
					</tr>
			</table>
			</h1>
		</div
		</div>

		<div style="width:600px;" align="left">
					<p><a name="mide"><font color="#000080" face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot2.gif" align="middle"></font><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix">&nbspQue amidem</font></p>
					<p><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot1.gif" align="middle"></font><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix">&nbsp;<a href="preus.asp#test">Test</a></font></p>
					<p><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot1.gif" align="middle"></font><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix">&nbsp;<a href="preus.asp#Detalls">Detalls</a></font></p>
						<!-- <font face="Arial, Geneva" size="2">
						<a href="serveis.htm"><B>Altres Serveis</B></a></font> -->

				<p><font face="Arial,Helvetica,Geneva" size="2" class="webfix">
						Els tres factors que amidem:
				</font></p>
					<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        <ol>
                          <li>Objecte, la finalitat principal del lloc.</li>
                          <li>Subjecte, el destinatari de l'acció.</li>
                          <li>Entorn, l’ambient en que es realitzarà</li>
                        </ol>
    					</font>
                <p>
				<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
						El gràfic adjunt li dóna una idea de com es relacionen entre sí aquests tres conceptes.<br>
                        </p>
                <div align="center">
                  <center>
                  <table border="0" cellspacing="0" cellpadding="0" height="169" width="247">
                    <tr>
                      <td width="179" height="62" align="center" align="center" colspan="2">

			<p align="center"><a name="graph"></a>
<% if (Request.Form('B1')!='Avaluar') {
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
                      <td height="62" width="64" style="color:red; font-size:10pt;">
                        <p align="center">OBJECTE</p>
                      </td>
                    </tr>
                    <tr>
                      <td width="179" height="40"  style="color:red; font-size:10pt;">
                        <p align="center">ENTORN</p>
                      </td>
                       		<td width="179" height="40"  style="color:red; font-size:10pt;">
                        		<p align="right">SUBJECTE</p>
                      		</td>

                      <td height="40" width="64">
                        <p align="center"></td>
                    </tr>
                  </center>
  </center>
                    <tr>
                      <td colspan="2" height="46" align="left">

                        <p align="center">
			<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
<% if (Request.Form('B1')!='Avaluar') {
                            %><%= "Test <b> no</b> inicialitzat" %><%
   } else {
		           rtl="Baixa,Mitja,Alta".split(",");
			   var tt=24+4*((rs[0]+1)*(rs[1]+1)*(rs[2]+1));
			   %><%= "<br><u>Aquest és el resultat del seu Test</u><br>" %><%
			   %><%= "<table border='0'><tr>" %><%
			   %><%= "<td><font face='Arial,Helvetica,Geneva' size='2' class='webfix'>Complexitat <i>Objecte</i> </td>" %><%
			   %><%= "<td><font face='Arial,Helvetica,Geneva' size='2' class='webfix'>: <b>"+rtl[rs[2]]+"</b> </td>" %><%
			   %><%= "</tr><tr><td><font face='Arial,Helvetica,Geneva' size='2' class='webfix'>Complexitat <i>Subjecte</i> </td>" %><%
			   %><%= "<td><font face='Arial,Helvetica,Geneva' size='2' class='webfix'>: <b>"+rtl[rs[1]]+"</b> </td>" %><%
			   %><%= "</tr><tr><td><font face='Arial,Helvetica,Geneva' size='2' class='webfix'>Complexitat <i>Entorn</i> </td>" %><%
			   %><%= "<td><font face='Arial,Helvetica,Geneva' size='2' class='webfix'>: <b>"+rtl[rs[0]]+"</b> </td>" %><%
			   %><%= "</tr><tr><td><font face='Arial,Helvetica,Geneva' size='2' class='webfix'>Cost anyal aprox. <b> € </b> </td>" %><%
			   %><%= "<td><font face='Arial,Helvetica,Geneva' size='2' class='webfix'>: <b>"+tt+".000</b> </td>" %><%
			   %><%= "</tr></table>" %><%

   }
%>
			    </font></p>

    			</font>
    		      </td>
                    </tr>
  <center>
                  <center>
                    <tr>
                      <td width="245" colspan="2" height="21">
                        <p align="center"></td>
                    </tr>
                  </table>
                  </center>
                </div>
            </center>
				<p align="left">

				<p>
					<font face="Arial,Helvetica,Geneva" size="2" class="webfix">

Els blocs del gràfic representen l'assignació de recursos -l'esforç- que vostè haurà de fer per a rodar el seu projecte.
					</font>
				</p>
				<p>
					<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
						Així, un Lloc que s'ha de fer amb l'objectiu d'<i>informar</i> -prenent l'eix OBJECTE com exemple-, tindrà menys blocs descansant en aquest eix que altre fet amb l'objectiu de <i>vendre</i>.
					</font>
				</p>
				<p>
					<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
					Els altres dos eixos reben la mesura dels seus tres paràmetres corresponents, afegint (cap al fons-esquerra ENTORN, i cap al fons-dreta SUBJECTE) més o menys blocs al conjunt.
					</font>
				</p>
				<p>
					<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
						En el nostre mètode de càlcul hem dividit en tres parts cada u dels tres principals. Aquest model va, conseqüentment, des d'un sol bloc per al mínim fins vint-i-set blocs per al màxim. El nombre de blocs està en relació directa amb el cost anual d'un projecte.
					</font>
				</p>
				<p>
					<font face="Arial,Helvetica,Geneva" size="2" class="webfix">

Aproximadament, perquè les nou parts que intervenen en el càlcul poden no tenir el mateix pes en un cas real. En el nostre càlcul hem ponderat aquest factor atura evitar un test sense fí, amb desenes de preguntes.
					</font>
				</p>
				<p>
					<font face="Arial,Helvetica,Geneva" size="2" class="webfix">

Dos avaluacions amb el mateix nombre de blocs, poden tenir significats diferents. Per exemple, un resultat de tres blocs, pot presentar-se de tres formes distintes:
						<ul><li>Els tres alineats sobre l'eix <i>Objecte</i></li>
						    <li>Els tres alineats sobre l'eix <i>Sujecte</i></li>
						    <li>Els tres alineats sobre l'eix <i>Entorn</i></li>
						</ul>
						En conseqüència, el gràfic no sol ens dóna la resultant de l'esforç a realitzar, també ens diu que adreça ha d'anar aquest esforç.<br>
						<br>&nbsp;<br>
					</font>

  <center>
                <hr noshade size="1">
				<p>
                &nbsp;</p>
				<p>
                &nbsp;</p>
            </center>
            </td>
          </tr>
          <tr>
            <td width="38"></td>
            <td width="176" valign="top">
					<p><a name="test"><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot1.gif" align="middle">&nbsp;<a href="preus.asp#mide">Que amidem</a></font></p>
					<p><font color="#000080" face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot2.gif" align="middle"></font><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix">&nbsp;Test</font></p>
					<p><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot1.gif" align="middle"></font><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix">&nbsp;<a href="preus.asp#Detalls">Detalls</a></font></p>
						<!-- <font face="Arial, Geneva" size="2">
						<a href="serveis.htm"><B>Altres Serveis</B></a></font> -->
		</td>
            <td width="368" valign="top">
             <p><font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest12"></a>
					Recorri els nou apartats, seleccionant una de les tres opcions.
					<br>&nbsp;<br>
					A l'arribar al final, premi <i>avaluar</i> per a realitzar el test.
					<br>&nbsp;<br>
					El signe d'interrogació de cada apartat li condueix als detalls relatius a aquesta qüestió.
					<br>&nbsp;<br>
            </font></p>
            <form name="miForm1" action=preus.asp#graph method=Post>
              <table border="0" cellspacing="0" cellpadding="0" height="545">
                <tr>
                  <td width="100%" colspan="3" height="21">
                    <a name="dest21"></a><a href="#dest31"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a>
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    Respecte a iniciatives similars, la seva va . . .
                   	</font>
                   </td>
                </tr>
                <tr>
                  <td width="33%" height="21"><input type="radio" value="V0" name="R0">
                	 	<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Amb totes
                  	</font>
                  </td>
                  <td width="33%" height="21"><input type="radio" value="V1" name="R0">
                	 	<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                  	Per davant
                  	</font>
                  </td>
                  <td width="34%" height="21"><input type="radio" checked value="V2" name="R0">
                	 	<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                  	Al marge
                  	</font>
                  </td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="21"></td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="20"><a name="dest22"></a><a href="#dest32"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a>
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    Aquesta web està relacionada amb un fet convencional</font>
                  </td>
                </tr>
                <tr>
                  <td width="33%" height="21">
                  <input type="radio" value="V0" name="R1">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                   Aliena
                  </td>
                  <td width="33%" height="21"><input type="radio" value="V1"name="R1">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                  	Mixta
                  </font>
                  </td>
                  <td width="34%" height="21"><input type="radio" checked value="V2"name="R1">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Exclusiva</font>
                  </td>
                </tr>
                <tr>
                  <td width="33%" height="21"></td>
                  <td width="33%" height="21"></td>
                  <td width="34%" height="21"></td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="21">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest23"></a><a href="#dest33"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a>
                    La seva organització és
                    es . . .
                   	</font>
                   </td>
                </tr>
                <tr>
                  <td width="33%" height="21"><input type="radio" value="V0" name="R2">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Petita</font>
                  </td>
                  <td width="33%" height="21"><input type="radio" value="V1" name="R2">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Mitjana</font>
                  </td>
                  <td width="34%" height="21"><input type="radio" checked value="V2" name="R2">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Gran</font>
                  </td>
                </tr>
                <tr>
                  <td width="33%" height="21"></td>
                  <td width="33%" height="21"></td>
                  <td width="34%" height="21"></td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="21">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest24"></a><a href="#dest34"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a>
                    El seu possible usuari està distribuït en una zona . . .
                   	</font>
                   </td>
                </tr>
                <tr>
                  <td width="33%" height="21"><input type="radio" value="V0" name="R3">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Regional</font>
                  </td>
                  <td width="33%" height="21"><input type="radio" checked value="V1" name="R3">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Nacional</font>
                  </td>
                  <td width="34%" height="21"><input type="radio" value="V2" name="R3">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Internacional</font>
                  </td>
                </tr>
                <tr>
                  <td width="33%" height="21"></td>
                  <td width="33%" height="21"></td>
                  <td width="34%" height="21"></td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="21">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest25"></a><a href="#dest35"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a>

			La quantitat d'usuaris raonablement prevista és . . .
                   	</font>
                   </td>
                </tr>
                <tr>
                  <td width="33%" height="21"><input type="radio" value="V0" name="R4">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Petita</font>
                  </td>
                  <td width="33%" height="21"><input type="radio" checked value="V1" name="R4">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Mitjana</font>
                  </td>
                  <td width="34%" height="21"><input type="radio" value="V2" name="R4">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Máxim</font>
                  </td>
                </tr>
                <tr>
                  <td width="33%" height="21"></td>
                  <td width="33%" height="21"></td>
                  <td width="34%" height="21"></td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="21">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest26"></a><a href="#dest36"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a>

			L'agrupació típica dels seus usuaris és per . . .
                   	</font>
                   </td>
                </tr>
                <tr>
                  <td width="33%" height="21"><input type="radio" value="V0" name="R5">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Activitat</font>
                  </td>
                  <td width="33%" height="21"><input type="radio" checked value="V1" name="R5">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Demografía</font>
                  </td>
                  <td width="34%" height="21"><input type="radio" value="V2" name="R5">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Geografía</font>
                  </td>
                </tr>
                <tr>
                  <td width="33%" height="21"></td>
                  <td width="33%" height="21"></td>
                  <td width="34%" height="21"></td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="21">
                     <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest27"></a><a href="#dest37"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a>
                    L'usuari deu pagar . . .
                   	</font>
                   </td>
                </tr>
                <tr>
                  <td width="33%" height="21"><input type="radio" checked value="V0" name="R6">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">No</font>
                  </td>
                  <td width="33%" height="21"><input type="radio" value="V1" name="R6">
                	 	<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    Prèviament</font>
                  </td>
                  <td width="34%" height="21"><input type="radio" value="V2" name="R6">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Vía
                    web</font>
                  </td>
                </tr>
                <tr>
                  <td width="33%" height="21"></td>
                  <td width="33%" height="21"></td>
                  <td width="34%" height="21"></td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="21">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest28"></a><a href="#dest38"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a>
                    El seu lloc fa referència a un(a) . . .
                   	</font>
                   </td>
                </tr>
                <tr>
                  <td width="33%" height="21"><input type="radio" checked value="V0" name="R7">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Activitat</font>
                  </td>
                  <td width="33%" height="21"><input type="radio" value="V1" name="R7">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Servei</font>
                  </td>
                  <td width="34%" height="21"><input type="radio" value="V2" name="R7">
                    <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Producte</font>
                  </td>
                </tr>
                <tr>
                  <td width="33%" height="21"></td>
                  <td width="33%" height="21"></td>
                  <td width="34%" height="21"></td>
                </tr>
                <tr>
                  <td width="100%" colspan="3" height="21">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest29"></a><a href="#dest39"><img border="0" src="../imgs/qmark.gif" width="12" height="12"></a> La finalitat del seu projecte és (serà) . . .
                   	</font>
                   </td>
                </tr>
                <tr>
                  <td width="33%" height="21"><input type="radio" checked value="V0" name="R8">
                	 	<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Informar
                  	</font>
                  </td>
                  <td width="33%" height="21"><input type="radio" value="V1" name="R8">
                	 	<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                  	Promocionar
                  	</font>
                  </td>
                  <td width="34%" height="21"><input type="radio" value="V2" name="R8">
                	 	<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                  	Vendre
                  	</font>
                  </td>
                </tr>
                <tr>
                  <td width="100%" height="21" colspan="3"><img border="0" src="../imgs/sep.gif" width="367" height="1"></td>
                </tr>
                <tr>
                  <td width="100%" height="21" colspan="3" align="center">

                      <p><input type="submit" value="Avaluar" name="B1"></p>
                    </form>
                  </td>
                </tr>
                <tr>
                  <td width="100%" height="21" colspan="3"></td>
                </tr>
              </table>

              <hr noshade size="1">
             <p>&nbsp;
             <p>&nbsp;
            </td>
          </tr>
          <tr>
            <td width="38"></td>
            <td width="176" valign="top"><a name="mide"></a>
					<p><a name="Detalls"><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot1.gif" align="middle">&nbsp;<a href="preus.asp#mide">Que amidem</a></font></p>
					<p><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot1.gif" align="middle"></font><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix">&nbsp;<a href="preus.asp#test">Test</a></font></p>
					<p><font color="#000080" face="Arial,Helvetica,Geneva" size="2" CLASS="webfix"><img border="0" src="../imgs/dot2.gif" align="middle"></font><font face="Arial,Helvetica,Geneva" size="2" CLASS="webfix">&nbsp;Detalls</font></p>
              </td>
            <td width="368" valign="top">
                	<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <a name="dest13"></a>
            		En la mateixa ordre que apareixen en el test, es detallen a continuació els vint-i-set significats:
            		<br>&nbsp;<br>
            		</font>
                    <table border="0" width="370" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="368" colspan="4">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <b><a name="dest31"></a>Respecte a iniciatives similars, la seva va . . .</b>
                   	</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Amb totes
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        De forma més o menys semblat als altres.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Renault
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Per davant</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">La iniciativa marca una diferència cabdal amb altres similars.</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Mercedes
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Al marge
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">No té res que veure amb altres iniciatives assimilables.</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Ferrari
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest21">Tornar al test</a>
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="368" colspan="4">
                            <br>
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix"><b>
                    <a name="dest32"></a>
                    Aquesta web està relacionada amb un fet convencional</b></font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Aliena</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Sí, però sol per a donar -recollir- informació.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Material esportiu
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Mixta</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Amb la idea que funcioni paral·lelament a una activitat convencional.</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Hardware
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Exclusiva
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Cent per cent Internet.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Proveïdors de Pagament</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest22">Tornar al test</a>
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="368" colspan="4">
                        <br>
                     <font face="Arial,Helvetica,Geneva" size="2" class="webfix"><b>
                     <a name="dest33"></a>
                     La seva organització és . . .</b></font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Petita
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Particular o grup discret.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Associació Cultural
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Mitjana</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Empresa de grandària mitja.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Franquícia de Perfumería
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Gran
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Empresa gran, grup obert.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple:
                        </font>
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Multipropietat Variable</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest23">Tornar al test</a>
                         </font>
                         </td>
                      </tr>
                      <tr>
                        <td width="368" colspan="4">
                        <br>
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <b> <a name="dest34"></a> El seu possible usuari està distribuït en una zona . . .</b>
                   	</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Regional</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Està limitada a una zona d'abast.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple:
                        </font>
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Catering per a comunitats</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Nacional</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Els seus límits són més aviat idiomátics i/o legals.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple:
                        </font>
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Llibres</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Internacional
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">No té límits apreciables.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Articles de Regal
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest24">Tornar al test</a>
                       </font>
                         </td>
                      </tr>
                      <tr>
                        <td width="368" colspan="4">
                        <br>
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <b> <a name="dest35"></a> La quantitat d'usuaris raonablement prevists és . . .</b>
                   	</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Petita
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Pocs i ben seleccionats.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple:
                        </font>
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Inmobiliaria</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Mijtanaa</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix"> Necessito una quantitat crítica d'accessos.</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Majorista de Tot a 100
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Màxim
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Funciona sobre la base de quantitat.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple:
                        </font>
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Publicitat per Banners</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest25">Tornar al test</a>
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="368" colspan="4">
                        <br>
                     <font face="Arial,Helvetica,Geneva" size="2" class="webfix"><b> <a name="dest36"></a> L'agrupació típica dels seus usuaris és per . . .</b>
                   	</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">-
                            Activitat</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Relacionada directament amb el tema en qüestió.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Construcció (Arquitectes, Promotors)
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Demografía</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Per edat, sexe,...
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Ejemplo:
                        </font>
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Venda de CD musical</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Geografía
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Relativa a una zona o a un tipus de localitzacions.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Informació de Pistes d'Esquí
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest26">Tornarr al test</a>
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="368" colspan="4">
                        <br>
                     <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <b> <a name="dest37"></a> L'usuari deu pagar . . .</b>
                   	</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - No
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">O
                            no de moment.</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Col·lecció de Moda
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Previamentca</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">El client deu enviar un xec o transferència atura rebre la mercaderia.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Galeria d'Art
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Vía web
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">El client ha de pagar on line</font><font face="Arial,Helvetica,Geneva" size="2" class="webfix">.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Televisió Pagar per a Veure
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest27">Tornar al test</a>
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="368" colspan="4">
                        <br>
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <b> <a name="dest38"></a> El seu lloc fa referència a un(a) . . .</b>
                   	</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Activitat
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Alguna cosa en el que podria participar el visitant, però que no té una dimensió comercial.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Club Esportiu
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Servei</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Aplicació d'una acció.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Ejemple: Gestoría
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Producte
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Cosas físiques tangibles.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple:
                        </font>
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Coches</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest28">Tornar al test</a>
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="368" colspan="4">
					 <font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                    <b>
                        <a name="dest39"></a>
                    	La finalitat del seu projecte és (serà) . . .</b>
                   	</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Informar
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Mostrar contingut -gràfic, periodístic, ...- i/o recollir informació conseqüent.</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Agrupació d'usuaris</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Promocionar</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Promoure una iniciativa, que incrementi la venda.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple:
                        </font>                       <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Fòrum de bricolatge d'una marca de pintures</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td width="356" colspan="3">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        - Vendre</font>
                        </td>
                      </tr>
                      <tr>
                        <td width="45" colspan="2">&nbsp;</td>
                        <td width="319" colspan="2">
                            <font face="Arial,Helvetica,Geneva" size="2" class="webfix">Originar el contracte de venda directament en Xarxa.
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="63" colspan="3"></td>
                        <td width="299">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                        Exemple: Subastes
                        </font>
                        </td>
                      </tr>
                      <tr>
                        <td width="10"></td>
                        <td width="35"></td>
                        <td width="18"></td>
                        <td width="299" align="right"><img border="0" src="../imgs/back.gif" width="11" height="9">
					 		<font face="Arial,Helvetica,Geneva" size="2" class="webfix">
                          <a href="#dest29">Tornar al test</a>
                        </font>
                        </td>
                      </tr>
                    </table>
            </td>
          </tr>
        </table>
						<hr  size="1" width="100%" noshade>
						<p align="right"><img border="0" src="../imgs/logo1.png" width;=62"  height="22"></p>
			</div>
		</div>
<script>
function myFunction() {
   var element = document.body;
   element.classList.toggle("dark-mode");
}

</script>

	</body>