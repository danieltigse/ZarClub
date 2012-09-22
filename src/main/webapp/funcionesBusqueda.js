var request;

function crearXMLHttpRequest() {
    var request = false;

    /* Does this browser support the XMLHttpRequest object? */
    if (window.XMLHttpRequest) {
      if (typeof XMLHttpRequest != 'undefined')
        /* Try to create a new XMLHttpRequest object */
        try {
          request = new XMLHttpRequest( );
        } catch (e) {
          request = false;
        }
    /* Does this browser support ActiveX objects? */
    }
    else if (window.ActiveXObject) {
      /* Try to create a new ActiveX XMLHTTP object */
      try {
        request = new ActiveXObject('Msxml2.XMLHTTP');
      } catch(e) {
        try {
          request = new ActiveXObject('Microsoft.XMLHTTP');
        } catch (e) {
          request = false;
        }
      }
    }
    return request;
}

function llenarComboECB()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboEstadoCivil",true);
	request.onreadystatechange=manejadorEC;
	request.send(null);
}

function manejadorEC()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("estados");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboCR();
}

function llenarComboCR()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboCiudad",true);
	request.onreadystatechange=manejadorCR;
	request.send(null);
}

function manejadorCR()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("ciudades");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboDISC();
}

function llenarComboDISC()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboDiscapacidad",true);
	request.onreadystatechange=manejadorDISC;
	request.send(null);
}

function manejadorDISC()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("discapacidades");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboLIC();
}

function llenarComboLIC()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboLicencia",true);
	request.onreadystatechange=manejadorLIC;
	request.send(null);
}

function manejadorLIC()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("licencias");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboINST();
}






function llenarComboINST()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboInstitucion",true);
	request.onreadystatechange=manejadorINST;
	request.send(null);
}

function manejadorINST()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("instituciones");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboEST();
}

function llenarComboEST()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboEstado",true);
	request.onreadystatechange=manejadorEST;
	request.send(null);
}

function manejadorEST()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("estadosedu");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboNIV();
}

function llenarComboNIV()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboNivel",true);
	request.onreadystatechange=manejadorNIV;
	request.send(null);
}

function manejadorNIV()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("niveles");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboAREA();
}







function llenarComboAREA()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboArea",true);
	request.onreadystatechange=manejadorAREA;
	request.send(null);
}

function manejadorAREA()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("areas");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboSECT();
}

function llenarComboSECT()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboSector",true);
	request.onreadystatechange=manejadorSECT;
	request.send(null);
}

function manejadorSECT()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("sectores");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboIDIOM();
}








function llenarComboIDIOM()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboIdioma",true);
	request.onreadystatechange=manejadorIDIOM;
	request.send(null);
}

function manejadorIDIOM()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("idiomas");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
    
    llenarComboCONO();
}







function llenarComboCONO()
{
	request = crearXMLHttpRequest( );
	request.open("GET","Combos?accion=comboConocimiento",true);
	request.onreadystatechange=manejadorCONO;
	request.send(null);
}

function manejadorCONO()
{
    var resp=request.responseXML;
    var x=resp.getElementsByTagName("nombre");
    var combo=document.getElementById("conocimientos");
    for(i=0;i<x.length;i++){
        var option=document.createElement("option");
        option.appendChild(document.createTextNode(x[i].firstChild.nodeValue));
        combo.appendChild(option);
    }
}
