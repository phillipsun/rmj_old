var iAaCTA=false;

function autoactivate0(){
  iAaCTA=testBrowser();
  if(iAaCTA){document.write('<!-- ')}
  }

function autoactivate1(obj_id){
  if(iAaCTA){
    var obj=document.getElementById(obj_id);
    var objCode=obj.innerHTML;
    var iAaFrom=objCode.indexOf('<object');
    var iAaTo=objCode.indexOf('</object>')+9;
    objCode=objCode.substring(iAaFrom,iAaTo);
    document.write(objCode);
    }
  }

function testBrowser(){
  var sBrowser=navigator.userAgent.toLowerCase();
  var iAaPos=sBrowser.indexOf('msie');
  var iAaOpera=sBrowser.indexOf('opera');
  if(iAaPos>-1){
    if(parseInt(sBrowser.charAt(iAaPos+5))>5){return true}
    }
  if(iAaOpera>-1){
	  if(parseInt(sBrowser.charAt(iAaOpera+6))>8){return true}
    }
  return false;
  }
  
function cookieWrite(cookiename,value,days){
  var expiredate=new Date();
  expiredate.setDate(expiredate.getDate()+days);
  document.cookie=cookiename+'='+escape(value)+((days==null) ? '' : ';expires='+expiredate);
  }	  
  
function cookieExists(cookiename){
  if (document.cookie.length>0){
    var cookieindex=document.cookie.indexOf(cookiename+'=');
    if (cookieindex>-1){return true}
    else{return false}
    }
  }
  
function cookieRead(cookiename){
  if (document.cookie.length>0){
    var cookieindex=document.cookie.indexOf(cookiename+'=');
    if (cookieindex>-1){
	    var istart=cookieindex+cookiename.length+1; 
      var iend=document.cookie.indexOf(";",istart);
      if (iend<0) iend=document.cookie.length;
      return unescape(document.cookie.substring(istart,iend));
      }
    } 
  return '';
  }
  
function validateForm(theform,msg){
	var form_elements=theform.elements;
	for (x=0;x<=form_elements.length-1;x++){
		var form_obj=form_elements[x];
		var sClassName=form_obj.className;
		if (sClassName!=undefined && sClassName.indexOf('required')>-1) {
			var sType=form_obj.type;
			var sValue=form_obj.value;
			sValue=sValue.replace(/^\s*|\s*$/g,'');
			if (sType.indexOf('select-')==0) {
				sType='select';
				sValue='x';
			  }
			if (sValue=='' || (sType=='select' && form_obj.selectedIndex<1)) {
				alert(msg+'\r\n\r\n'+form_obj.name+' ('+form_obj.type+')');
				return false;
			  }
		  }
		}
	return true;
  }
  
function opacitySet(obj,percent){
	var percent=Math.round(percent);
	var val=percent/100; 
	obj.style.opacity=val; 
	obj.style.MozOpacity=val; 
	obj.style.KhtmlOpacity=val;
	obj.style.filter='alpha(opacity='+percent+')';
  }
  
function opacityGet(obj){
	var val=obj.style.opacity;
	if (val==undefined) {return 100}
	if (val=='') {val=obj.style.MozOpacity}
	if (val=='') {val=obj.style.KhtmlOpacity}
	if (isNaN(val)) {val=100} else {val=val*100}
	return val;
  }
  
var aFadeObjs=new Array();

function fadeHalt(obj){
	var id=obj.id;
	for (x=0;x<aFadeObjs.length;x++){
		if (aFadeObjs[x].obj==id) {
			clearTimeout(aFadeObjs[x].tmr);
			aFadeObjs[x].tgt=-1;
			return x;
			break;
			}
	  }
	return -1;
  }
  
function fadeTgtVal(obj){
	var id=obj.id;
	for (x=0;x<aFadeObjs.length;x++){
		if (aFadeObjs[x].obj==id) {
			return aFadeObjs[x].tgt;
			break;
			}
	  }
	return -1;
  }
  
function fader(idx){
	var objx=document.getElementById(aFadeObjs[idx].obj);
	var valx=aFadeObjs[idx].val+aFadeObjs[idx].step;
	aFadeObjs[idx].val=valx;
	if (Math.round(valx)!=aFadeObjs[idx].tgt) {
		opacitySet(objx,valx);
		aFadeObjs[idx].tmr=setTimeout('fader('+idx+')',50);
    }
  else {
	  opacitySet(objx,aFadeObjs[idx].tgt);
	  aFadeObjs[idx].tgt=-1;
	  }
  }
  
function fadeTo(objx,opacity){
	if (fadeTgtVal(objx)!=opacity) {
		var argv=arguments;
	  var argc=arguments.length;
	  var secs=(argc>2) ? argv[2] : 0;
		var idx=fadeHalt(objx);
		if (secs<0.1) {opacitySet(objx,opacity)}
		else {
		  var opacityx=opacityGet(objx);
		  if (opacityx!=opacity) {
		    var stepx=(opacity-opacityx)/(secs*20);
		    if (idx<0){idx=aFadeObjs.length}; 
		    var tmrx=setTimeout('fader('+idx+')',50);
		    aFadeObjs[idx]={obj:objx.id, tmr:tmrx, val:opacityx, step:stepx, tgt:opacity};
	      }
	    }
    }
  }

var aSlideObjs=new Array();
  
function slideHalt(obj){
	var id=obj.id;
	for (x=0;x<aSlideObjs.length;x++){
		if (aSlideObjs[x].obj==id) {
			clearTimeout(aSlideObjs[x].tmr);
			return x;
			break;
			}
	  }
	return -1;
  }
  
function slider(idx){
	var objx=document.getElementById(aSlideObjs[idx].obj);
	var valx=Number(aSlideObjs[idx].x)+Number(aSlideObjs[idx].stepx);
	aSlideObjs[idx].x=valx;
	var valy=Number(aSlideObjs[idx].y)+Number(aSlideObjs[idx].stepy);
	aSlideObjs[idx].y=valy;
	if (Math.round(valx)!=aSlideObjs[idx].tgtx) {
		objx.style.left=valx+'px';
		objx.style.top=valy+'px';
		aSlideObjs[idx].tmr=setTimeout('slider('+idx+')',50);
    }
  else {
	  objx.style.left=aSlideObjs[idx].tgtx;
	  objx.style.top=aSlideObjs[idx].tgty;
	  }
  }
  
function stripPx(coord){
	var idx=coord.indexOf('px');
	if (idx>-1){return coord.substring(0,idx)} else {return coord}
  }
  
function slideTo(objx,xpos,ypos,secs){
	var idx=slideHalt(objx);
	var valx=stripPx(objx.style.left);
	var valy=stripPx(objx.style.top);
	var sx=(xpos-valx)/(secs*20);
	var sy=(ypos-valy)/(secs*20);
	if (idx<0){idx=aSlideObjs.length}; 
	var tmrx=setTimeout('slider('+idx+')',100);
	aSlideObjs[idx]={obj:objx.id, tmr:tmrx, x:valx, y:valy, stepx:sx, stepy:sy, tgtx:xpos, tgty:ypos};
  }

