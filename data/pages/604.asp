
<SCRIPT LANGUAGE=javascript>
<!--
function DoFormClose(){
	if(navigator.appName == "Microsoft Internet Explorer")
	{
		FontDownATL.NavigaterClose()
	}
	if((navigator.vendor=="Firefox")||(navigator.appName == "Netscape"))
	{
		window.close()
		FontDownNS.NavigaterClose()
	}
}

function CheckDownload(strErr)
{
	if (strErr!=''){
	}
}

//IE Functions-----------------------------------

function Quran_AyaFont(StrPage,nLength)
{
	try {
			FontDownATL.strFontsPath = "http://www.qurancomplex.com/TTF/"
			FontDownATL.DownLoadExx("QCF_P"+StrPage+".TTF" , "2005 8 11" , nLength)
			if (parseInt(StrPage)==576)
			{
				strErr = FontDownATL.DownLoadExx("QCF_P576_2.TTF" , "2005 8 11" , nLength)
			}
			SouraPart()
			}
	catch(e){}
}

function QuranFont_Tafeez(StrPage,StrPageMinus,StrPagePluse,nLength)
{
	nLength = 0;
	try {
			FontDownATL.strFontsPath = "http://www.qurancomplex.com/TTF/";
			FontDownATL.DownLoadExx("QCF_P"+StrPageMinus+".TTF" , "2005 8 11" , nLength);
			FontDownATL.DownLoadExx("QCF_P"+StrPage+".TTF" , "2005 8 11" , nLength);
			FontDownATL.DownLoadExx("QCF_P"+StrPagePluse+".TTF" , "2005 8 11" , nLength)
			if (parseInt(StrPage)==576 || parseInt(StrPageMinus)==576 || parseInt(StrPagePluse)==576)
			{
				FontDownATL.DownLoadExx("QCF_P576_2.TTF" , "2005 8 11" , nLength)
			}
			SouraPart()
		}
	catch(e){}
}

function QuranFont_Display(StrPage,nLength)
{
	nLength = 0;
	try {
		FontDownATL.strFontsPath = "http://www.qurancomplex.com/TTF/";
		FontDownATL.DownLoadExx("QCF_P"+StrPage+".TTF" , "2004 8 11" , nLength);
		if (parseInt(StrPage)==576){
			FontDownATL.DownLoadExx("QCF_P576_2.TTF" , "2005 8 11" , nLength);
		}
		SouraPart();
	} catch(e){
	}
}

function SouraPart()
{
	nLength = 0;
	FontDownATL.strFontsPath = "http://www.qurancomplex.com/TTF/"	
	FontDownATL.DownLoadExx("QCF_BSML.TTF" , "2005 7 11", nLength)
}

//MOZILLA Functions-----------------------------------
function Quran_AyaFontFireFox(StrPage,nLength)
{
	nLength = 0;
	try {
			FontDownNS.strFontsPath = "http://www.qurancomplex.com/TTF/";
			strErr = FontDownNS.DownLoadExx("QCF_P"+StrPage+".TTF" , "2005 8 11",nLength);
			CheckDownload(strErr)
			SouraPart_Firefox()
		}
	catch(e){}
}

function QuranFont_DisplayFireFox(StrPage,nLength)
{
	nLength = 0;
	try {
			var FontDownNS;
			FontDownNS = document.getElementById("FontDownNSS");
			FontDownNS.strFontsPath = "http://www.qurancomplex.com/TTF/";
			FontDownNS.DownLoadExx("QCF_P"+StrPage+".TTF" , "2005 8 11",nLength);
			SouraPart_Firefox()
		}
	catch(e)
	{
	}
}

function SouraPart_Firefox()
{
	nLength = 0;
	FontDownNS.strFontsPath = "http://www.qurancomplex.com/TTF/";
	FontDownNS.DownLoadExx("QCF_BSML.TTF" , "2005 9 8", nLength);
}


//-->
</Script>


<HTML dir=rtl>
<head>

<META content="MS 5.00.2314.1000" name=GENERATOR >
<title>display</title>
<Script language="Javascript">
<!--
var nCurrSora      =112;
var nCurrAya       =1;
var strCurrTafseer ="";

function Recitation(nSora, nAyaInSora)
{
	nCurrSora = nSora;
	nCurrAya  = nAyaInSora;
	location.href = "/Quran/Recite/ReciteOneAya.asp?s=" + nCurrSora + "&f=" + nCurrAya + "&t=286&Reciter=0";
}
function ClickAyaArea(nSora, nAyaInSora)
{
	nCurrSora = nSora;
	nCurrAya = nAyaInSora;
	if (nCurrSora>1 && nCurrAya==0){
		return false;
	}

AyatServices("/quran/ayat_services.asp?l=arb&nsora="+nCurrSora+"&naya="+nCurrAya+"&mod=display")

	document.cookie = "DisplaySora=" + nSora;
	document.cookie = "DisplayAya=" + nAyaInSora;
}
//-->
</script>




<!--tips script-->

<script language="javascript" src="search.js"></script>
<!--script language="javascript" src="dynlayer.js"></script-->
<SCRIPT LANGUAGE="JavaScript">
<!--
//ns4 = (document.layers)? true:false
//ie4 = (document.all)? true:false
//function init()
//{
//	TipObj = new DynLayer('TipDiv');
//}
//-->
</SCRIPT>
<script language="javascript" src="/Shared/ChURL.JS"></script>
</head>
<BODY TOPMARGIN=0  LEFTMARGIN=0 rightmargin=0 bgcolor="#ffffff" >

	<Object id="FontDownATL"  
	height=0 
	width=0 
	classid="clsid:38D6D77C-5EC1-4A4A-AFEB-85FE780CD61A" VIEWASTEXT>
	</Object>
	<embed id="FontDownNSS" align="absbottom" type="application/fonttools-plugin" width=0 height=0>
	<SCRIPT LANGUAGE=javascript>
	<!--
		var FontDownNS;
		FontDownNS = document.getElementById("FontDownNSS");
	//-->
	</SCRIPT>

	<SCRIPT LANGUAGE="JavaScript">
	<!--
		var StrPage = "604";
		var strLength="100248";
		if(navigator.appName == "Microsoft Internet Explorer")
		{
			QuranFont_Display(StrPage,strLength)
		}
		if((navigator.vendor=="Firefox")||(navigator.appName == "Netscape"))
		{
			QuranFont_DisplayFireFox(StrPage,strLength);
		}

	//-->
	</Script>
	
<DIV align=center>

<div align=center>
<table  border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
	<tr>
		<td align=middle valign=top>
		<TABLE align=justify border=0 bgcolor="#fafafa"	 cellspacing="0" cellpadding="0" width="100%">
			<TR align=justify>
				<TD align=middle dir=ltr>
				
<table border="0" cellpadding="0" align=center cellspacing="0" bgcolor="#FFFFff">

<tr>
<td colspan=3>
<table border="0" cellpadding="0" align=center cellspacing="0" WIDTH=100%>
<tr>
<td width=95 dir=rtl align=left><SPAN class=sc_F1>&#64396;&#64543;</span></td>
<td width=108 dir=rtl ><SPAN class=sc_F1>&#64396;&#64542;</span></td>
<td width=120 dir=rtl ><SPAN class=sc_F1>&#64396;&#64541;</span></td>
<td align=right dir=rtl><SPAN class=sc_F1>&#64568;&#64598;</span></td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan=3 width=499 height=22>
<img width=499 height=22 src="/Quran/Images/up.jpg" ><br></td>
</tr>


	<tr>
<td width=23 height=725 background="/Quran/Images/left.jpg" ><br></td>

		<td align=center valign=top><!--FFFFE1 -->

</center>
		<TABLE align=justify border="1" bgcolor="#FEFEE4"	 cellspacing="0" cellpadding="0" width=453  height=100%>
			<TR align=justify dir=rtl>
				<TD align=middle>
					<html>
					<META http-equiv="Content-Type" CONTENT="text/html; charset=windows-1252">
					<head>
					<STYLE>
					.sc_F0 {FONT-FAMILY:QCF_P604; FONT-SIZE: 22pt; mso-font-charset: 0}
					.sc_F1 {FONT-FAMILY:QCF_BSML; FONT-SIZE: 20pt; mso-font-charset: 0}

					</STYLE>
					<STYLE>
					<!--
					 	@font-face {
						font-family: QCF_P604;
						font-style:  normal;
						font-weight: normal;

						}
					 	@font-face {
						font-family: QCF_BSML;
						font-style:  normal;
						font-weight: normal;
						}
					-->
					</STYLE>
					</head>
					<body>
					<TABLE  align=justify border=0 cellspace="0" cellpading="0" width=100%><br>
					  <TBODY>
<TR align=justify dir=rtl>
					    <TD align=middle>
							<SPAN class=sc_F0 style='line-height:165%'>
			<CENTER>
<TABLE dir=ltr cellSpacing=0 cellPadding=0 width="412" border=0>
					                    <TBODY>
				                    <TR>
					<td width=100% align="center" dir=rtl height=49 background="/Quran/Images/frame.gif" >
</span><SPAN align="center" class=sc_F1>&#64396;&#64541;</span>
</TD></TR></TBODY></TABLE></CENTER>
					<SPAN class=sc_F1>
					<A name=112_0></A><A class=black onclick=ClickAyaArea(112,0) target=_top><center>&#64337;&#64338;&#64339;</center></A>
					</SPAN>
					<SPAN class=sc_F0><A name=112_1></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(112,1) target=_top>&#64337;&#64338;&#64339;&#64340;&#64341;</A><A name=112_2></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(112,2) target=_top>&#64342;&#64343;&#64344;</A><A name=112_3></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(112,3) target=_top>&#64345;&#64346;</A><br><A name=112_3></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(112,3) target=_top>&#64347;&#64348;&#64349;</A><A name=112_4></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(112,4) target=_top>&#64350;&#64351;&#64352;&#64353;&#64354;&#64355;</A><br>

			<CENTER>
<TABLE dir=ltr cellSpacing=0 cellPadding=0 width="412" border=0>
					                    <TBODY>
				                    <TR>
					<td width=100% align="center" dir=rtl height=49 background="/Quran/Images/frame.gif" >
</span><SPAN align="center" class=sc_F1>&#64396;&#64542;</span>
</TD></TR></TBODY></TABLE></CENTER>


					<SPAN class=sc_F1>
					<A name=113_0></A><A class=black onclick=ClickAyaArea(113,0) target=_top><center>&#64337;&#64338;&#64339;</center></A>
					</SPAN>
					<SPAN class=sc_F0><A name=113_1></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(113,1) target=_top>&#64356;&#64357;&#64358;&#64359;&#64360;</A><A name=113_2></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(113,2) target=_top>&#64361;&#64362;&#64363;&#64364;&#64365;</A><A name=113_3></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(113,3) target=_top>&#64366;</A><br><A name=113_3></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(113,3) target=_top>&#64367;&#64368;&#64369;&#64370;&#64371;</A><A name=113_4></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(113,4) target=_top>&#64372;&#64373;&#64374;&#64375;</A><br><A name=113_4></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(113,4) target=_top>&#64376;&#64377;</A><A name=113_5></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(113,5) target=_top>&#64378;&#64379;&#64380;&#64381;&#64382;&#64383;</A><br>
			<CENTER>
<TABLE dir=ltr cellSpacing=0 cellPadding=0 width="412" border=0>
					                    <TBODY>
				                    <TR>
					<td width=100% align="center" dir=rtl height=49 background="/Quran/Images/frame.gif" >
</span><SPAN align="center" class=sc_F1>&#64396;&#64543;</span>
</TD></TR></TBODY></TABLE></CENTER>


					<SPAN class=sc_F1>
					<A name=114_0></A><A class=black onclick=ClickAyaArea(114,0) target=_top><center>&#64337;&#64338;&#64339;</center></A>
					</SPAN>
					<SPAN class=sc_F0><A name=114_1></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(114,1) target=_top>&#64384;&#64385;&#64386;&#64387;&#64388;</A><A name=114_2></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(114,2) target=_top>&#64389;&#64390;&#64391;</A><A name=114_3></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(114,3) target=_top>&#64392;</A><br><A name=114_3></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(114,3) target=_top>&#64393;&#64394;</A><A name=114_4></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(114,4) target=_top>&#64395;&#64396;&#64397;&#64398;&#64399;</A><A name=114_5></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(114,5) target=_top>&#64400;</A><br><A name=114_5></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(114,5) target=_top>&#64401;&#64402;&#64403;&#64404;&#64405;</A><br><A name=114_6></A><A class=black style='cursor: pointer; cursor: myhand;' onclick=ClickAyaArea(114,6) target=_top>&#64406;&#64407;&#64408;&#64409;</A></SPAN>
					</span>
</TD></TR></TBODY></TABLE></BODY>
				</td>
			</tr>
		</table>
		</td>
<td width=23 height=725 background="/Quran/Images/right.jpg" ><br></td>
	</tr>
<tr>
<td width=499 height=22 colspan=3 >
<img width=499  height=22 src="/Quran/Images/down.jpg" ><br></td>
</tr>

<tr>
<td colspan=3 align="center" ><b><Font Size="4"> &#x0666;&#x0660;&#x0664; </Font></b></td>
</tr>

</table>


				</TD>
			</TR>
		</TABLE>
		</td>
	</tr>
</table>

</div>

</DIV>
</BODY>
</HTML>

