<html>

<head>
<title>
 login
</title>

<link rel="stylesheet" type="text/css" href="login.css">

<style type="text/css">

<!--

a{
color:#000000;
text-decoration:none;
font-size:12;
font-family: "Garamound";
}

.field{
color:#000000;

font-size:16;
font-family: "Garamound";
}

a:hover{
color:#FF00FF;

font-size:14;
font-family: "courier New";
}


.menu{
visibility: hiddden;
position: absolute;
padding: 2px;
background-color:#FCDFFF;
border-style: solid;
border-width: 1px;
border-color: #33A1DE;
font-family: "Courier New";
font-size: 11;
left: -1000;
top: -1000;
}

-->

</style>


<script language="javascript">

 function changeColor()
 {
  var td=document.getElementById("change");
  td.bgColor="#f0d0f0";
}

 function restoreColor()
{
 var td=document.getElementById("change");
 td.bgColor="#F0D0D1";
}

 function openMenuAbsolute(divMenu,xPos,yPos)
  {
   hideLevel(divMenu.level);
   divMenu.style.left=xPos;
   divMenu.style.top=yPos;
   divMenu.style.visibility="visible";
  }

 function openMenuRelative(divMenu,parent,position)
  {
   xPos=0;yPos=0;
    //subtract 4 because of menu's border

   
    if(position=="BOTTOM")
    yPos=parent.clientHeight;
   
    else if(position=="RIGHT")
    xPos=parent.clientWidth;


   do{
       if(parent.tagName !="CENTER")
        {
	  xPos +=parent.offsetLeft;
          yPos +=parent.offsetTop;

           if(parent.border !=null)
	     {
		xPos -=parent.border*2;
		yPos -=parent.border*2;
	      }
          }
           parent=parent.parentElement;
          
    }while(parent !=null);

   
      openMenuAbsolute(divMenu,xPos,yPos);
   }


 function hideLevel(level)

  {
    //Get all the div tags on the document
    divTags=document.all.tags("div");  
   
     for(i=0;i<divTags.length;i++)
     {
       if(divTags[i].className== "menu" && divTags[i].level >=level)
         {
            //Hide the menu
	     divTags[i].style.visibility="hidden";
	     divTags[i].style.left= -1000;
	     divTags[i].style.top = -1000;
         }
      }
   }
</script>


</head>



<body bgcolor=#ffffff onMouseUp= "JavaScript:hideLevel(0);" onResize="JavaScript:hideLevel(0);">


<img style="margin-left:20px" src="top.gif" width="99.5%" height="14%">

<div id="content">


<table id="table1" width=800 height=23>
<tr><td align="left"><font color=#666666 size=5 >Personal Information</font></td></tr>
</table>

<table id="table2">
<tr><td>
<b>All</b> <font color="#ff3300">*</font>&nbsp;<b>marked fields are mandatory</b>
</td></tr>
</table>
<br>
<br>

<table id="table3" cellspacing=2 width=600 height=300>
<tr style="top-boder:1;bottom-border:1">
<td style="top-boder:1;bottom-border:1">Title&nbsp; <font color="#ff3300">*</font>
</td>
<td><select name="title"  size="1">
                                       
<option value="" selected="selected">-Select-</option>
                                                                               
<option value="MR">MR</option>
                                                                               
<option value="RS">MRS</option>
</td>
</tr>

<tr style="top-boder:0;bottom-border:0">
<td class="field">First Name &nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>

<tr style="top-boder:0;bottom-border:0">
<td>Middle Name&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>

<tr style="top-boder:0;bottom-border:0">
<td>Last Name&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>

<tr style="top-boder:0;bottom-border:0">
<td>Gender&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>

<tr>
<td>Date Of Birth&nbsp; <font color="#ff3300">*</font><td align="left">	<select name="dobDay" >
                                        <option value="" selected="selected">Day</option>
									    
														 <option value="01">1</option>
										
														 <option value="02">2</option>
										
														 <option value="03">3</option>
										
														 <option value="04">4</option>
										
														 <option value="05">5</option>
										
														 <option value="06">6</option>
										
														 <option value="07">7</option>
										
														 <option value="08">8</option>
										
														 <option value="09">9</option>
										
														 <option value="10">10</option>
										
														 <option value="11">11</option>
										
														 <option value="12">12</option>
										
														 <option value="13">13</option>
										
														 <option value="14">14</option>
										
														 <option value="15">15</option>
										
														 <option value="16">16</option>
										
														 <option value="17">17</option>
										
														 <option value="18">18</option>
										
														 <option value="19">19</option>
										
														 <option value="20">20</option>
										
														 <option value="21">21</option>
										
														 <option value="22">22</option>
										
														 <option value="23">23</option>
										
														 <option value="24">24</option>
										
														 <option value="25">25</option>
										
														 <option value="26">26</option>
										
														 <option value="27">27</option>
										
														 <option value="28">28</option>
										
														 <option value="29">29</option>
										
														 <option value="30">30</option>
										
														 <option value="31">31</option></select>
                                                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="dobMonth" class="blacktext">
                                                                                          <option value="" selected="selected">Month</option>
									    
														 <option value="01">January</option>
										
														 <option value="02">February</option>
										
														 <option value="03">March</option>
										
														 <option value="04">April</option>
										
														 <option value="05">May</option>
										
														 <option value="06">June</option>
										
														 <option value="07">July</option>
										
														 <option value="08">August</option>
										
														 <option value="09">September</option>
										
														 <option value="10">October</option>
										
														 <option value="11">November</option>
										
														 <option value="12">December</option></td>
							                      	<td align="left">           <select name="dobYear" class="blacktext">
                                                                                 <option value="" selected="selected">Year</option>
										
									    
														 <option value="1920">1920</option>
										
														 <option value="1921">1921</option>
										
														 <option value="1922">1922</option>
										
														 <option value="1923">1923</option>
										
														 <option value="1924">1924</option>
										
														 <option value="1925">1925</option>
										
														 <option value="1926">1926</option>
										
														 <option value="1927">1927</option>
										
														 <option value="1928">1928</option>
										
														 <option value="1929">1929</option>
										
														 <option value="1930">1930</option>
										
														 <option value="1931">1931</option>
										
														 <option value="1932">1932</option>
										
														 <option value="1933">1933</option>
										
														 <option value="1934">1934</option>
										
														 <option value="1935">1935</option>
										
														 <option value="1936">1936</option>
										
														 <option value="1937">1937</option>
										
														 <option value="1938">1938</option>
										
														 <option value="1939">1939</option>
										
														 <option value="1940">1940</option>
										
														 <option value="1941">1941</option>
										
														 <option value="1942">1942</option>
										
														 <option value="1943">1943</option>
										
														 <option value="1944">1944</option>
										
														 <option value="1945">1945</option>
										
														 <option value="1946">1946</option>
										
														 <option value="1947">1947</option>
										
														 <option value="1948">1948</option>
										
														 <option value="1949">1949</option>
										
														 <option value="1950">1950</option>
										
														 <option value="1951">1951</option>
										
														 <option value="1952">1952</option>
										
														 <option value="1953">1953</option>
										
														 <option value="1954">1954</option>
										
														 <option value="1955">1955</option>
										
														 <option value="1956">1956</option>
										
														 <option value="1957">1957</option>
										
														 <option value="1958">1958</option>
										
														 <option value="1959">1959</option>
										
														 <option value="1960">1960</option>
										
														 <option value="1961">1961</option>
										
														 <option value="1962">1962</option>
										
														 <option value="1963">1963</option>
										
														 <option value="1964">1964</option>
										
														 <option value="1965">1965</option>
										
														 <option value="1966">1966</option>
										
														 <option value="1967">1967</option>
										
														 <option value="1968">1968</option>
										
														 <option value="1969">1969</option>
										
														 <option value="1970">1970</option>
										
														 <option value="1971">1971</option>
										
														 <option value="1972">1972</option>
										
														 <option value="1973">1973</option>
										
														 <option value="1974">1974</option>
										
														 <option value="1975">1975</option>
										
														 <option value="1976">1976</option>
										
														 <option value="1977">1977</option>
										
														 <option value="1978">1978</option>
										
														 <option value="1979">1979</option>
										
														 <option value="1980">1980</option>
										
														 <option value="1981">1981</option>
										
														 <option value="1982">1982</option>
										
														 <option value="1983">1983</option>
										
														 <option value="1984">1984</option>
										
														 <option value="1985">1985</option>
										
														 <option value="1986">1986</option>
										
														 <option value="1987">1987</option>
										
														 <option value="1988">1988</option>
										
														 <option value="1989">1989</option>
										
														 <option value="1990">1990</option>
										
														 <option value="1991">1991</option>
										
														 <option value="1992">1992</option>
										
														 <option value="1993">1993</option>
										
														 <option value="1994">1994</option>
										
														 <option value="1995">1995</option>
										
														 <option value="1996">1996</option>
										
														 <option value="1997">1997</option>
										
														 <option value="1998">1998</option>
										
														 <option value="1999">1999</option>
										
														 <option value="2000">2000</option>
										
														 <option value="2001">2001</option>
										
														 <option value="2002">2002</option>
										
														 <option value="2003">2003</option>
										
														 <option value="2004">2004</option>
										
														 <option value="2005">2005</option>
										</td>
</tr>

<tr>
<td>E-mail&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>
</table>


<table id="table4" width=800 height=26>
<tr bgcolor=#ffffcc >
<td>
<font color=#666666 size=5> Mailing Address&nbsp; <font color="#ff3300"></font>
</tr>
</table>


<table id="table5" cellspacing=2 width=600 height=500>
<tr>
<td>Company Name&nbsp; <font color="#ff3300"></font><td><input type="field" size=25></td>
</tr>

<tr>
<td>House No.&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>

<tr>
<td>Street/Road&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>
<tr>
<td>Town&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>

<tr>
<td>City&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>

<tr>
<td>State&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>


<tr>
<td>Country&nbsp; <font color="#ff3300">*</font><td>				  <select name="addressCountry" size="1" id="addressCountry" class="box" onchange="fnGetStates('INT')">
                                              <!--getState method featches the statea of respective country -->
                                              <option selected="selected" value="">Select Country</option>
                                              
                                              <option value="AF">AFGHANISTAN</option>
                                              
                                              <option value="AL">ALBANIA</option>
                                              
                                              <option value="DZ">ALGERIA</option>
                                              
                                              <option value="AS">AMERICAN SAMOA</option>
                                              
                                              <option value="AD">ANDORRA</option>
                                              
                                              <option value="AO">ANGOLA</option>
                                              
                                              <option value="AI">ANGUILLA</option>
                                              
                                              <option value="AQ">ANTARCTICA</option>
                                              
                                              <option value="AG">ANTIGUA AND BARBUDA</option>
                                              
                                              <option value="AR">ARGENTINA</option>
                                              
                                              <option value="AM">ARMENIA</option>
                                              
                                              <option value="AW">ARUBA</option>
                                              
                                              <option value="AH">ASHMORE AND CARTIER </option>
                                              
                                              <option value="AU">AUSTRALIA</option>
                                              
                                              <option value="AT">AUSTRIA</option>
                                              
                                              <option value="AZ">AZERBAIJAN</option>
                                              
                                              <option value="BS">BAHAMAS</option>
                                              
                                              <option value="BH">BAHRAIN</option>
                                              
                                              <option value="FQ">BAKER ISLAND</option>
                                              
                                              <option value="BD">BANGLADESH</option>
                                              
                                              <option value="BB">BARBADOS</option>
                                              
                                              <option value="BX">BASSAS DA INDIA</option>
                                              
                                              <option value="BY">BELARUS</option>
                                              
                                              <option value="BE">BELGIUM</option>
                                              
                                              <option value="BZ">BELIZE</option>
                                              
                                              <option value="BJ">BENIN</option>
                                              
                                              <option value="BM">BERMUDA</option>
                                              
                                              <option value="BT">BHUTAN</option>
                                              
                                              <option value="BO">BOLIVIA</option>
                                              
                                              <option value="BA">BOSNIA AND HERZEGOVI</option>
                                              
                                              <option value="BW">BOTSWANA</option>
                                              
                                              <option value="BV">BOUVET ISLAND</option>
                                              
                                              <option value="BR">BRAZIL</option>
                                              
                                              <option value="IO">BRITISH INDIAN OCEAN</option>
                                              
                                              <option value="VG">BRITISH VIRGIN IS.</option>
                                              
                                              <option value="BN">BRUNEI</option>
                                              
                                              <option value="BG">BULGARIA</option>
                                              
                                              <option value="UV">BURKINA</option>
                                              
                                              <option value="BF">BURKINO FASO</option>
                                              
                                              <option value="BU">BURMA</option>
                                              
                                              <option value="BI">BURUNDI</option>
                                              
                                              <option value="KH">CAMBODIA</option>
                                              
                                              <option value="CM">CAMEROON</option>
                                              
                                              <option value="CA">CANADA</option>
                                              
                                              <option value="CV">CAPE VERDE</option>
                                              
                                              <option value="KY">CAYMAN ISLANDS</option>
                                              
                                              <option value="CF">CENTRAL AFRICAN REP.</option>
                                              
                                              <option value="TD">CHAD</option>
                                              
                                              <option value="CL">CHILE</option>
                                              
                                              <option value="CN">CHINA</option>
                                              
                                              <option value="CX">CHRISTMAS ISLAND</option>
                                              
                                              <option value="IP">CLIPPERTON ISLAND</option>
                                              
                                              <option value="CC">COCOS (KEELING) ISLA</option>
                                              
                                              <option value="CO">COLOMBIA</option>
                                              
                                              <option value="KM">COMOROS</option>
                                              
                                              <option value="CG">CONGO</option>
                                              
                                              <option value="CK">COOK ISLANDS</option>
                                              
                                              <option value="CB">CORAL SEA ISLANDS</option>
                                              
                                              <option value="CR">COSTA RICA</option>
                                              
                                              <option value="IV">COTE D'IVOIRE</option>
                                              
                                              <option value="COUNT">COUNTRYNAME</option>
                                              
                                              <option value="HR">CROATIA</option>
                                              
                                              <option value="CU">CUBA</option>
                                              
                                              <option value="CY">CYPRUS</option>
                                              
                                              <option value="CZ">CZECH REPUBLIC</option>
                                              
                                              <option value="CD">DEM REP OF THE CONGO</option>
                                              
                                              <option value="DK">DENMARK</option>
                                              
                                              <option value="DJ">DJIBOUTI</option>
                                              
                                              <option value="DM">DOMINICA</option>
                                              
                                              <option value="DO">DOMINICAN REPUBLIC</option>
                                              
                                              <option value="EC">ECUADOR</option>
                                              
                                              <option value="EG">EGYPT</option>
                                              
                                              <option value="SV">EL SALVADOR</option>
                                              
                                              <option value="GQ">EQUATORIAL GUINEA</option>
                                              
                                              <option value="ER">ERITREA</option>
                                              
                                              <option value="EE">ESTONIA</option>
                                              
                                              <option value="ET">ETHIOPIA</option>
                                              
                                              <option value="EU">EUROPA ISLAND</option>
                                              
                                              <option value="FO">FAEROE ISLANDS</option>
                                              
                                              <option value="FK">FALKLAND ISLANDS (IS</option>
                                              
                                              <option value="FE">FAROE ISLANDS</option>
                                              
                                              <option value="FD">FEDERATED STATES OF </option>
                                              
                                              <option value="FJ">FIJI</option>
                                              
                                              <option value="FI">FINLAND</option>
                                              
                                              <option value="FR">FRANCE</option>
                                              
                                              <option value="FA">FRENCH ANTILLES</option>
                                              
                                              <option value="GF">FRENCH GUIANA</option>
                                              
                                              <option value="PF">FRENCH POLYNESIA</option>
                                              
                                              <option value="FS">FRENCH SOUTHERN AND </option>
                                              
                                              <option value="GA">GABON</option>
                                              
                                              <option value="GM">GAMBIA</option>
                                              
                                              <option value="XA">GAZA STRIP</option>
                                              
                                              <option value="GE">GEORGIA</option>
                                              
                                              <option value="DE">GERMANY</option>
                                              
                                              <option value="GH">GHANA</option>
                                              
                                              <option value="GI">GIBRALTAR</option>
                                              
                                              <option value="GO">GLORIOSO ISLANDS</option>
                                              
                                              <option value="GR">GREECE</option>
                                              
                                              <option value="GL">GREENLAND</option>
                                              
                                              <option value="GD">GRENADA</option>
                                              
                                              <option value="GP">GUADELOUPE</option>
                                              
                                              <option value="GU">GUAM</option>
                                              
                                              <option value="GT">GUATEMALA</option>
                                              
                                              <option value="GK">GUERNSEY</option>
                                              
                                              <option value="GN">GUINEA</option>
                                              
                                              <option value="GW">GUINEA-BISSAU</option>
                                              
                                              <option value="GY">GUYANA</option>
                                              
                                              <option value="HT">HAITI</option>
                                              
                                              <option value="HM">HEARD ISLAND AND MCD</option>
                                              
                                              <option value="XH">HELD TERRITORIES</option>
                                              
                                              <option value="HN">HONDURAS</option>
                                              
                                              <option value="HK">HONG KONG</option>
                                              
                                              <option value="HQ">HOWLAND ISLAND</option>
                                              
                                              <option value="HU">HUNGARY</option>
                                              
                                              <option value="IS">ICELAND</option>
                                              
                                              <option value="IN">INDIA</option>
                                              
                                              <option value="XI">INDIAN OCEAN ISLANDS</option>
                                              
                                              <option value="ID">INDONESIA</option>
                                              
                                              <option value="IR">IRAN</option>
                                              
                                              <option value="IQ">IRAQ</option>
                                              
                                              <option value="IE">IRELAND</option>
                                              
                                              <option value="IL">ISRAEL</option>
                                              
                                              <option value="IT">ITALY</option>
                                              
                                              <option value="CI">IVORY COAST</option>
                                              
                                              <option value="JM">JAMAICA</option>
                                              
                                              <option value="JN">JAN MAYEN</option>
                                              
                                              <option value="JP">JAPAN</option>
                                              
                                              <option value="DQ">JARVIS ISLAND</option>
                                              
                                              <option value="JE">JERSEY</option>
                                              
                                              <option value="JQ">JOHNSTON ATOLL</option>
                                              
                                              <option value="JO">JORDAN</option>
                                              
                                              <option value="JU">JUAN DE NOVA ISLAND</option>
                                              
                                              <option value="KZ">KAZAKHSTAN</option>
                                              
                                              <option value="KE">KENYA</option>
                                              
                                              <option value="KQ">KINGMAN REEF</option>
                                              
                                              <option value="KI">KIRIBATI</option>
                                              
                                              <option value="KP">KOREA, DEMOCRATIC PE</option>
                                              
                                              <option value="KS">KOREA, REPUBLIC OF</option>
                                              
                                              <option value="KW">KUWAIT</option>
                                              
                                              <option value="KG">KYRGYZSTAN</option>
                                              
                                              <option value="LA">LAOS</option>
                                              
                                              <option value="LV">LATVIA</option>
                                              
                                              <option value="LB">LEBANON</option>
                                              
                                              <option value="LS">LESOTHO</option>
                                              
                                              <option value="LR">LIBERIA</option>
                                              
                                              <option value="LY">LIBYA</option>
                                              
                                              <option value="LI">LIECHTENSTEIN</option>
                                              
                                              <option value="LT">LITHUANIA</option>
                                              
                                              <option value="LU">LUXEMBOURG</option>
                                              
                                              <option value="MO">MACAU</option>
                                              
                                              <option value="MK">MACEDONIA</option>
                                              
                                              <option value="MG">MADAGASCAR</option>
                                              
                                              <option value="MW">MALAWI</option>
                                              
                                              <option value="MY">MALAYSIA</option>
                                              
                                              <option value="MV">MALDIVES</option>
                                              
                                              <option value="ML">MALI</option>
                                              
                                              <option value="MT">MALTA</option>
                                              
                                              <option value="IM">MAN, ISLE OF</option>
                                              
                                              <option value="PC">MARIANA ISLANDS</option>
                                              
                                              <option value="MH">MARSHALL ISLANDS</option>
                                              
                                              <option value="MQ">MARTINIQUE</option>
                                              
                                              <option value="MR">MAURITANIA</option>
                                              
                                              <option value="MU">MAURITIUS</option>
                                              
                                              <option value="YT">MAYOTTE</option>
                                              
                                              <option value="MX">MEXICO</option>
                                              
                                              <option value="FM">MICRONESIA</option>
                                              
                                              <option value="MI">MIDWAY ISLANDS</option>
                                              
                                              <option value="MD">MOLDOVA</option>
                                              
                                              <option value="MC">MONACO</option>
                                              
                                              <option value="MN">MONGOLIA</option>
                                              
                                              <option value="MS">MONTSERRAT</option>
                                              
                                              <option value="MA">MOROCCO</option>
                                              
                                              <option value="MZ">MOZAMBIQUE</option>
                                              
                                              <option value="MM">MYANMAR</option>
                                              
                                              <option value="NA">NAMIBIA</option>
                                              
                                              <option value="NR">NAURU</option>
                                              
                                              <option value="BQ">NAVASSA ISLAND</option>
                                              
                                              <option value="NP">NEPAL</option>
                                              
                                              <option value="NL">NETHERLANDS</option>
                                              
                                              <option value="AN">NETHERLANDS ANTILLES</option>
                                              
                                              <option value="NC">NEW CALEDONIA</option>
                                              
                                              <option value="NZ">NEW ZEALAND</option>
                                              
                                              <option value="NI">NICARAGUA</option>
                                              
                                              <option value="NE">NIGER</option>
                                              
                                              <option value="NG">NIGERIA</option>
                                              
                                              <option value="NU">NIUE</option>
                                              
                                              <option value="NF">NORFOLK ISLAND</option>
                                              
                                              <option value="XB">NORTHERN IRELAND</option>
                                              
                                              <option value="CQ">NORTHERN MARIANA ISL</option>
                                              
                                              <option value="NO">NORWAY</option>
                                              
                                              <option value="OM">OMAN</option>
                                              
                                              <option value="PK">PAKISTAN</option>
                                              
                                              <option value="PW">PALAU</option>
                                              
                                              <option value="LQ">PALMYRA ATOLL</option>
                                              
                                              <option value="PA">PANAMA</option>
                                              
                                              <option value="PG">PAPUA NEW GUINEA</option>
                                              
                                              <option value="PX">PARACEL ISLANDS</option>
                                              
                                              <option value="PY">PARAGUAY</option>
                                              
                                              <option value="PE">PERU</option>
                                              
                                              <option value="PH">PHILIPPINES</option>
                                              
                                              <option value="PI">PITCAIRN ISLANDS</option>
                                              
                                              <option value="PL">POLAND</option>
                                              
                                              <option value="PT">PORTUGAL</option>
                                              
                                              <option value="PR">PUERTO RICO</option>
                                              
                                              <option value="QA">QATAR</option>
                                              
                                              <option value="RE">REUNION</option>
                                              
                                              <option value="RO">ROMANIA</option>
                                              
                                              <option value="RU">RUSSIA</option>
                                              
                                              <option value="RW">RWANDA</option>
                                              
                                              <option value="MP">SAIPAN</option>
                                              
                                              <option value="PU">SAMOA, INDEP. STATE </option>
                                              
                                              <option value="SM">SAN MARINO</option>
                                              
                                              <option value="ST">SAO TOME AND PRINCIP</option>
                                              
                                              <option value="SA">SAUDI ARABIA</option>
                                              
                                              <option value="SN">SENEGAL</option>
                                              
                                              <option value="CS">SERBIA &amp; MONTENEGRO</option>
                                              
                                              <option value="SC">SEYCHELLES</option>
                                              
                                              <option value="SL">SIERRA LEONE</option>
                                              
                                              <option value="SG">SINGAPORE</option>
                                              
                                              <option value="SK">SLOVAK REPUBLIC</option>
                                              
                                              <option value="SI">SLOVENIA</option>
                                              
                                              <option value="SB">SOLOMON ISLANDS</option>
                                              
                                              <option value="SO">SOMALIA</option>
                                              
                                              <option value="ZA">SOUTH AFRICA</option>
                                              
                                              <option value="SX">SOUTH GEORGIA AND TH</option>
                                              
                                              <option value="KR">SOUTH KOREA</option>
                                              
                                              <option value="ES">SPAIN</option>
                                              
                                              <option value="SP">SPRATLY ISLANDS</option>
                                              
                                              <option value="LK">SRI LANKA</option>
                                              
                                              <option value="SH">ST. HELENA</option>
                                              
                                              <option value="KN">ST. KITTS &amp; NEVIS</option>
                                              
                                              <option value="LC">ST. LUCIA</option>
                                              
                                              <option value="PM">ST. PIERRE AND MIQUE</option>
                                              
                                              <option value="VC">ST. VINCENT AND THE </option>
                                              
                                              <option value="SD">SUDAN</option>
                                              
                                              <option value="SR">SURINAME</option>
                                              
                                              <option value="SW">SVALBARD</option>
                                              
                                              <option value="SZ">SWAZILAND</option>
                                              
                                              <option value="SE">SWEDEN</option>
                                              
                                              <option value="CH">SWITZERLAND</option>
                                              
                                              <option value="SY">SYRIA</option>
                                              
                                              <option value="TW">TAIWAN</option>
                                              
                                              <option value="TJ">TAJIKISTAN</option>
                                              
                                              <option value="TZ">TANZANIA</option>
                                              
                                              <option value="TH">THAILAND</option>
                                              
                                              <option value="TL">TIMOR-LESTE</option>
                                              
                                              <option value="TG">TOGO</option>
                                              
                                              <option value="TK">TOKELAU</option>
                                              
                                              <option value="TO">TONGA</option>
                                              
                                              <option value="TT">TRINIDAD AND TOBAGO</option>
                                              
                                              <option value="TE">TROMELIN ISLAND</option>
                                              
                                              <option value="PS">TRUST TERRITORY OF T</option>
                                              
                                              <option value="TN">TUNISIA</option>
                                              
                                              <option value="TR">TURKEY</option>
                                              
                                              <option value="TM">TURKMENISTAN</option>
                                              
                                              <option value="TC">TURKS &amp; CAICOS IS.</option>
                                              
                                              <option value="TV">TUVALU</option>
                                              
                                              <option value="VI">U.S. VIRGIN ISLANDS</option>
                                              
                                              <option value="UG">UGANDA</option>
                                              
                                              <option value="UA">UKRAINE</option>
                                              
                                              <option value="SU">UNION SOVIET SOCIALI</option>
                                              
                                              <option value="AE">UNITED ARAB EMIRATES</option>
                                              
                                              <option value="UK">UNITED KINGDOM</option>
                                              
                                              <option value="US">UNITED STATES</option>
                                              
                                              <option value="UY">URUGUAY</option>
                                              
                                              <option value="UM">US MINOR OUTLYING IS</option>
                                              
                                              <option value="UP">US TERRITORIES AND P</option>
                                              
                                              <option value="UZ">UZBEKISTAN</option>
                                              
                                              <option value="VU">VANUATU</option>
                                              
                                              <option value="VA">VATICAN CITY</option>
                                              
                                              <option value="VE">VENEZUELA</option>
                                              
                                              <option value="VN">VIETNAM</option>
                                              
                                              <option value="VQ">VIRGIN ISLANDS</option>
                                              
                                              <option value="WQ">WAKE ISLAND</option>
                                              
                                              <option value="WF">WALLIS AND FUTUNA</option>
                                              
                                              <option value="WE">WEST BANK</option>
                                              
                                              <option value="WI">WESTERN SAHARA</option>
                                              
                                              <option value="WS">WESTERN SAMOA</option>
                                              
                                              <option value="YE">YEMEN</option>
                                              
                                              <option value="YU">YUGOSLAVIA</option>
                                              
                                              <option value="ZR">ZAIRE</option>
                                              
                                              <option value="ZM">ZAMBIA</option>
                                              
                                              <option value="ZW">ZIMBABWE</option>
                                              
                                            </select></td>
</tr>

<tr>
<td>Postal Code&nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>

<tr>
<td>&nbsp;</td><td>Std Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phone No.</td>
</tr>


<tr>
<td>Residence Phone&nbsp; <font color="#ff3300">*</font><td> <input type="field" size=6>&nbsp;&nbsp;&nbsp;&nbsp;<input type="field" size=12></td>
</tr>

<tr>
<td>Mobile Phone &nbsp; <font color="#ff3300">*</font><td><input type="field" size=25></td>
</tr>
</table>





<table id="table6" cellspacing=2 width=800 height=25 bgcolor=#fffccc>
<tr>
<td> <font color="#666666" size=5>Security Information</font></td>
</tr>
</table>



<table  id="table7" cellspacing=2 width=600 height=150>
<tr>
<td width=30%>Login Id &nbsp;<font color="#ff3300">*</font></td>
<td ><input type="field" size=25></td>
</tr>

<tr>
<td>Password&nbsp; <font color="#ff3300">*</font></td>
<td><input type="field" size=25></td>
</tr>

<tr>
<td>Confirm Password&nbsp; <font color="#ff3300">*</font></td>
<td><input type="field" size=25></td>
</tr>

<tr>
<td colspan=2><input type="radio">&nbsp;&nbsp;I agree with all <b>Terms And Condition</b> of Penguin Club  </td>
</tr>

<tr> 
<td align="center" colspan=2><input type="submit" value="Sumbit"></td>
</tr>  
</div>
</body>
</html>
