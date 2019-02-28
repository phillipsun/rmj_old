<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>RMJ Landscapes....Call Us today</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
</head>

<body bgcolor="#97AE99" text="#FFFFFF" link="#FFFFFF" vlink="#FFFFFF" alink="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('Nav_on/aboutus.jpg','Nav_on/aboutus_on.jpg','Nav_on/whatweoffer_on.jpg','Nav_on/portfolio_on.jpg')">
<table width="900" height="517" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr valign="top"> 
    <td height="115" colspan="3"><font size="1" face="Arial, Helvetica, sans-serif"><img src="Nav%20Images/upper.jpg" width="900" height="115"></font></td>
  </tr>
  <tr> 
    <td width="186" height="403" valign="top"> <font size="1" face="Arial, Helvetica, sans-serif"><a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','Nav_on/aboutus.jpg',1)"><img src="Nav%20Images/navup.jpg" width="160" height="43" border="0"></a><a href="index.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image11','','Nav_on/aboutus_on.jpg',1)"><img src="Nav_off/aboutus_off.jpg" name="Image11" width="160" height="20" border="0"></a><a href="whatweoffer.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image12','','Nav_on/whatweoffer_on.jpg',1)"><img src="Nav_off/whatweoffer_off.jpg" name="Image12" width="160" height="20" border="0"></a><a href="portfolio.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image10','','Nav_on/portfolio_on.jpg',1)"><img src="Nav_off/portfolio_off.jpg" name="Image10" width="160" height="20" border="0"></a><img src="Nav_on/contact_on.jpg" width="160" height="20" border="0"><img src="Nav%20Images/navlower5.jpg" width="160" height="279"> 
      <a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image3','','Nav_on/aboutus.jpg',1)"> 
      </a></font></td>
    <td width="428" valign="top"><br> <table width="413" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="407"><img src="Images/contacttitle.jpg" width="94" height="21"><br> 
            <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td><font color="#000000" size="2" face="Arial, Helvetica, sans-serif">Thank You 
                  for contacting RMJ Landscapes, Inc. We will respond to your 
                  message shortly. If you have an immediate question please contact 
                  us at 972-424-7251.</font></td>
              </tr>
            </table>
            <div align="center"> 
              <table width="95%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr valign="middle"> 
                  <td width="100%" colspan="2"> <p> 
                      <%
'*****************************************************
'Response.Write "A visitor has filled out the Contact page on the RMJ Landscape site.<br>" _
'		& "    Date: " & Now() & "<br><br>" _
'		& "    Name: " & Request("name") & "<br>" _
'		& " Address: " & Request("address") & "<br>" _
'		& "          " & Request("city") & ", " & Request("state") & " " & Request("zip") & "<br>" _
'		& "   Phone: " & Request("phone") & "<br>" _
'		& "   Email: " & Request("email") & "<br><br>" _
'		& "Comments: " & Request("comments")


'Lets send some mail if they are paying by credit card
'If Request("Submit") = "Submit1" Then
	strName = Request("name")
'	strLastName = Request("")
	strPhone = Request("phone")
	strAddress1 = Request("address")
	strAddress2 = Request("city") & ", " & Request("state") & " " & Request("zip")
	strTo = "foldm@rmjlandscapes.com"
'	strTo = "ruben@rmjlandscapes.com"
'	strTo = "yeltnab1@hotmail.com"
	strFrom = Request("Name")
	strEmail = Request("email")
	strComments = Request("comments")
	strSubject = "Contact Form — RMJ Landscapes"

	Dim objCDO
	Set objCDO = Server.CreateObject("CDONTS.NewMail") 
	objCDO.To = strTo
	objCDO.From = strFrom & "<" & strEmail & ">"
'	objCDO.bcc = "tester@bantleydesign.com"
	objCDO.Subject = strSubject
	objCDO.Body = "Note: A visitor has filled out the Contact page on the RMJ Landscape site." & VbCrLf _
		& "    Date: " & Now() & VbCrLf & VbCrLf _
		& "    Name: " & strName & VbCrLf _
		& " Address: " & strAddress1 & VbCrLf _
		& "          " & strAddress2 & VbCrLf _
		& "   Phone: " & strPhone & VbCrLf _
		& "   Email: " & strEmail & VbCrLf & VbCrLf _
		& "Comments: " & strComments
	objCDO.Send
	Set objCDO = Nothing
'End if
%>
                    </p></td>
                </tr>
              </table>
            </div></td>
        </tr>
      </table>
      <div align="center"><font color="#000000" size="1" face="Arial, Helvetica, sans-serif">&nbsp; 
        <br>
        <font size="2">RMJ Landscapes, Inc.<br>
        PO Box 940144<br>
        Plano, Texas 75094<br>
        972-424-7251</font></font><font color="#000000"><br>
        <font size="2" face="Arial, Helvetica, sans-serif"><a href="mailto:foldm@rmjlandscapes.com">foldm@rmjlandscapes.com</a> 
        </font></font></div>
      <div align="center"> 
        <p><font color="#000000" face="Arial, Helvetica, sans-serif"><font size="1">RMJ 
          Landscapes, Inc.<br>
          &copy;2004, all rights reserved</font></font></p>
        <p>&nbsp;</p>
      </div></td>
    <td width="286" valign="top" bgcolor="#660000"><div align="left"> 
        <table width="250" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr> 
            <td width="250" colspan="2"><img src="Images/tulip.jpg" width="250" height="333"> 
              <div align="center"></div>
              <div align="center"></div></td>
          </tr>
        </table>
      </div></td>
  </tr>
</table>
<div align="center">
  <table width="901" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td width="901" bgcolor="#660000">&nbsp;</td>
    </tr>
    <tr> 
      <td bgcolor="#000000"><div align="center"><font size="1" face="Arial, Helvetica, sans-serif"><strong><a href="index.htm">About 
          Us</a></strong> | <a href="whatweoffer.htm">What We Offer</a> |<a href="portfolio.htm"> 
          Portfolio/Examples</a> | Contact Us</font></div></td>
    </tr>
    <tr> 
      <td bgcolor="#666633">&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
