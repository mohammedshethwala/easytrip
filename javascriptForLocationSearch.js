var req;
var isIE;

var completeField;
var completeTable;
var autoRow;

var completeField2;
var completeTable2;
var autoRow2;

var pickupLocation=false;
var returnLocation=false;

function init() {
    completeField = document.getElementById("searchId");
    completeTable = document.getElementById("complete-table");
    autoRow = document.getElementById("auto-row");
	
	completeField2 = document.getElementById("searchId2");
    completeTable2 = document.getElementById("complete-table2");
    autoRow2 = document.getElementById("auto-row2");
    //completeTable.style.top = getElementY(autoRow) + "px";
}

function doCompletion() {

	pickupLocation = true;
    var url = "AutoCompleteServlet?action=complete&id=" + escape(completeField.value);
    req = initRequest();
    req.open("GET", url, true);
    req.onreadystatechange = callback;
    req.send(null);
}

function doCompletion3() {

	returnLocation=true;
    var url = "AutoCompleteServlet?action=complete&id=" + escape(completeField2.value);
    req = initRequest();
    req.open("GET", url, true);
    req.onreadystatechange = callback;
    req.send(null);
}

function initRequest() {
    if (window.XMLHttpRequest) {
        if (navigator.userAgent.indexOf('MSIE') != -1) {
            isIE = true;
        }
        return new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        isIE = true;
        return new ActiveXObject("Microsoft.XMLHTTP");
    }
}

function callback() {
    clearTable();
	clearTable2();

    if (req.readyState == 4) {
        if (req.status == 200) {
            parseMessages(req.responseXML);
        }
    }
}


function appendProduct(id,name,city) {

    var row;
    var cell;
    var linkElement;
	
	if(pickupLocation==true)
	{
		if (isIE) {
			completeTable.style.display = 'block';
			row = completeTable.insertRow(completeTable.rows.length);
			cell = row.insertCell(0);
		} else {
			completeTable.style.display = 'table';
			completeTable.style.position = 'absolute';
			completeTable.style.width = '220px';
			completeTable.style.align = 'left';
			completeTable.style.background = '#fff';
			completeTable.style.left = '11.0%';
			row = document.createElement("tr");
			cell = document.createElement("td");
			row.appendChild(cell);
			completeTable.appendChild(row);
		}

		cell.className = "popupCell";

		linkElement = document.createElement("a");
		linkElement.className = "popupItem";
		linkElement.setAttribute("href", "index.jsp?action=lookup&id=" + name+"&locationValue="+name);
		linkElement.appendChild(document.createTextNode(name + ", " + city));
		cell.appendChild(linkElement);
		
		
	}
	
	else if(returnLocation==true)
	{
		if (isIE) {
			completeTable2.style.display = 'block';
			row = completeTable2.insertRow(completeTable2.rows.length);
			cell = row.insertCell(0);
		} else {
			completeTable2.style.display = 'table';
			completeTable2.style.position = 'absolute';
			completeTable2.style.width = '220px';
			completeTable2.style.align = 'left';
			completeTable2.style.background = '#fff';
			completeTable2.style.left = '35.2%';
			row = document.createElement("tr");
			cell = document.createElement("td");
			row.appendChild(cell);
			completeTable2.appendChild(row);
		}

		cell.className = "popupCell";

		linkElement = document.createElement("a");
		linkElement.className = "popupItem";
		linkElement.setAttribute("href", "index.jsp?action=lookup&id=" + name+"&locationValue2="+name);
		linkElement.appendChild(document.createTextNode(name + ", " + city));
		cell.appendChild(linkElement);
		
		returnLocation=false;
	}
	
	returnLocation=false;
    
}

function clearTable() {
    if (completeTable.getElementsByTagName("tr").length > 0) {
        completeTable.style.display = 'none';
        for (loop = completeTable.childNodes.length -1; loop >= 0 ; loop--) {
            completeTable.removeChild(completeTable.childNodes[loop]);
        }
    }
}

function clearTable2() {
    if (completeTable2.getElementsByTagName("tr").length > 0) {
        completeTable2.style.display = 'none';
        for (loop = completeTable2.childNodes.length -1; loop >= 0 ; loop--) {
            completeTable2.removeChild(completeTable2.childNodes[loop]);
        }
    }
}

function getElementY(element){
    
    var targetTop = 0;
    
    if (element.offsetParent) {
        while (element.offsetParent) {
            targetTop += element.offsetTop;
            element = element.offsetParent;
        }
    } else if (element.y) {
        targetTop += element.y;
    }
    return targetTop;
}

function parseMessages(responseXML) {
    
    // no matches returned
    if (responseXML == null) {
        return false;
    } else {

        var locations = responseXML.getElementsByTagName("locations")[0];

        if (locations.childNodes.length > 0) {
            completeTable.setAttribute("bordercolor", "black");
            completeTable.setAttribute("border", "1");
    
            for (loop = 0; loop < locations.childNodes.length; loop++) {
                var location = locations.childNodes[loop];
                var id = location.getElementsByTagName("id")[0];
                var name = location.getElementsByTagName("name")[0];
                var city = location.getElementsByTagName("city")[0];
				
                appendProduct(id.childNodes[0].nodeValue,
                    name.childNodes[0].nodeValue,
                    city.childNodes[0].nodeValue);
            }
        }
    }
}