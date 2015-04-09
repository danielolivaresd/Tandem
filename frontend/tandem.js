
function n() {
    
    window.open ('unete2.html','_self',false);
}

function b() {
    
    window.open ('unete.html','_self',false);
}

function add(tab){
	var table = document.getElementById(tab);
    var row = table.insertRow(1);
    var cell1 = row.insertCell(0);
    
    cell1.innerHTML = "<input type='text' placeholder='Language' style='width:200px !important;'><br> <select><option value='n'>Level</option><option value='beg'>Beginner</option><option value='adv'>Advanced</option><option value='mas'>Master</option></select>";
    					
    
}