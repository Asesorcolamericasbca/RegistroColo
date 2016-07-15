/**
 * 
 */

function printhi()
{
	alert("hi");
}

function buttnuts(tarp)
{
	var grayfxinit, grayfx;
	grayfxinit = document.getElementById(tarp);
	
	grayfx = startgrayfx(grayfxinit);
	
	if(grayfx)
	{
		grayfx.clearColor(0.0, 0.0, 0.0, 1.0);
		grayfx.enable(grayfx.DEPTH_TEST);
		grayfx.depthFunc(grayfx.LEQUAL);
		grayfx.clear(grayfx.COLOR_BUFFER_BIT | grayfx.DEPTH_BUFFER_BIT);
	}
}

function startgrayfx(xergs)
{
	var degrayfx = null;
	
	try
	{
		degrayfx = xergs.getContext("webgl") || xergs.getContext("experimental-webgl");
	}
	catch(e)
	{}
	
	if(!degrayfx)
	{
		alert("oh noes!!");
		degrayfx = null;
	}
	
	return degrayfx;
	
}