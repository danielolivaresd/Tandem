
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
    
    cell1.innerHTML = "<input type='text' placeholder='Language' style='width:200px !important;'><br> <select><option value='n'>Nivel</option><option value='beg'>Principiante</option><option value='adv'>Avanzado</option><option value='mas'>Experto</option></select>";
   				
    
}

function idi(tab){
    var table = document.getElementById(tab);
    var row = table.insertRow(1);
    var cell1 = row.insertCell(0);
    
    cell1.innerHTML = "<select><option value='eng'>Inglés</option><option value='spa'>Español</option><option value='ger'>Alemán</option><option value='fre'>Fránces</option><option value='kor'>Koreano</option><option value='por'>Portugués</option><option value='Rus'>Ruso</option><option value='chi'>Chino</option></select><br><select><option value='n'>Nivel</option><option value='beg'>Principiante</option><option value='adv'>Avanzado</option><option value='mas'>Experto</option></select>";         
    
}