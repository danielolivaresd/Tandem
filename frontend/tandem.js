
function n(a) {
    
    window.open (a,'_self',false);
}


function add(tab){
	var table = document.getElementById(tab);
    var row = table.insertRow(1);
    var cell1 = row.insertCell(0);
    
    cell1.innerHTML = "<input type='text' placeholder='Language' style='width:200px !important;'><br> <select><option value='n'>Level</option><option value='beg'>Beginner</option><option value='adv'>Advanced</option><option value='mas'>Master</option></select>";
    					
    
}

function timetable(a){
	var c = document.getElementById(a).style.backgroundColor;
	
	if (c== 'transparent' || c == "") {
		document.getElementById(a).style.backgroundColor ='#1abc9c';
		
	}else{
		document.getElementById(a).style.backgroundColor ='transparent';
		
	}
	
}