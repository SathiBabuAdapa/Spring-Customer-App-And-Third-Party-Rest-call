<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>Covid-19 Latest Updates(Andhra Pradesh)</title>
	
	<!-- reference our style sheet -->
	
	 <style>
		body {
		    background-image: url("${pageContext.request.contextPath}/resources/images/covid3.jpg");
		}
		
	</style>

	
		<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

</head>

<style>
		
		.dataTables_filter{
		width:300px;
		height:35px;
		}
		
		</style>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Covid-19 Latest Updates(Andhra Pradesh)</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
			
	<script>
	
		
       var data=${covidData}
		
		var andhraData=data["Andhra Pradesh"]
		var allDstrictsData=andhraData["districtData"]
		console.log("allDstrictsData>>>>>>   ",allDstrictsData);
		console.log("data>>>>>>>    ",data);
		var Anantapur=allDstrictsData["Anantapur"];
		var Chittoor=allDstrictsData["Chittoor"];
		var eastGodhavari=allDstrictsData["East Godavari"];
		var Guntur=allDstrictsData["Guntur"];
		var Krishna=allDstrictsData["Krishna"];
		var Kurnool=allDstrictsData["Kurnool"];
		var Prakasam=allDstrictsData["Prakasam"];
		var Nellore=allDstrictsData["S.P.S. Nellore"];
		var Visakhapatnam=allDstrictsData["Visakhapatnam"];
		var westGodavari=allDstrictsData["West Godavari"];
		var Kadapa=allDstrictsData["Y.S.R. Kadapa"];	
		
		var Srikakulam=allDstrictsData["Srikakulam"]
		
		//["Andhra Pradesh"].districtData.Srikakulam
		console.log("allDstrictsData>>>>>>   "+Anantapur.confirmed);
		// var obj = JSON.parse(data[1]);
		// alert("obj>>>>>>>>>>>  "+obj)	
			
		 var tableData="";
		  tableData+="<table id='example'>"
		  tableData+="<thead><tr style='background-color:#FFD733'>"
		  tableData+="<th>District</th>"
		  tableData+="<th>Conformed</th>"
		  tableData+="<th>Active</th>"
		  tableData+="<th>Recovered</th>"
		  tableData+="<th>Deceased</th>"
		  
		  tableData+="</tr> </thead>"
		  tableData+="<tbody>"
			var totConformed=Srikakulam.confirmed+Anantapur.confirmed+Chittoor.confirmed+eastGodhavari.confirmed+Guntur.confirmed+Krishna.confirmed+Kurnool.confirmed+Prakasam.confirmed+Nellore.confirmed+Visakhapatnam.confirmed+westGodavari.confirmed+Kadapa.confirmed
			var totActive=Srikakulam.active+Anantapur.active+Chittoor.active+eastGodhavari.active+Guntur.active+Krishna.active+Kurnool.active+Prakasam.active+Nellore.active+Visakhapatnam.active+westGodavari.active+Kadapa.active
			var totRedovered=Srikakulam.recovered+Anantapur.recovered+Chittoor.recovered+eastGodhavari.recovered+Guntur.recovered+Krishna.recovered+Kurnool.recovered+Prakasam.recovered+Nellore.recovered+Visakhapatnam.recovered+westGodavari.recovered+Kadapa.recovered
			var totDeceased=Srikakulam.deceased+Anantapur.deceased+Chittoor.deceased+eastGodhavari.deceased+Guntur.deceased+Krishna.deceased+Kurnool.deceased+Prakasam.deceased+Nellore.deceased+Visakhapatnam.deceased+westGodavari.deceased+Kadapa.deceased
			
			tableData+="<tr>"
			tableData+="<td> Anantapur </td>"
			if(Anantapur.confirmed>100){
				tableData+="<td style='padding-left: 116px;color:red'> "+Anantapur.confirmed+" </td>"
			}else{
				tableData+="<td style='padding-left: 116px;'> "+Anantapur.confirmed+" </td>"
			}
			
			tableData+="<td>"+Anantapur.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Anantapur.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'	>"+Anantapur.deceased+"</td>"					
			tableData+="</tr>"
					
			
				tableData+="<tr>"
					tableData+="<td> Srikakulam </td>"
					if(Srikakulam.confirmed>100){
						tableData+="<td style='padding-left: 116px;color:red'> "+Srikakulam.confirmed+" </td>"
					}else{
						tableData+="<td style='padding-left: 116px;'> "+Srikakulam.confirmed+" </td>"
					}
					
					tableData+="<td>"+Srikakulam.active+"</td>"
					tableData+="<td style='padding-left: 96px;'>"+Srikakulam.recovered+"</td>"
					tableData+="<td style='padding-left: 96px;'	>"+Srikakulam.deceased+"</td>"					
					tableData+="</tr>"
			
			
			
		    tableData+="<tr style='background-color: #d6c3c3bf;'>"
			tableData+="<td>  East Godavari </td>"
			
				if(eastGodhavari.confirmed>100){
					tableData+="<td style='padding-left: 116px;color:red'> "+eastGodhavari.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+eastGodhavari.confirmed+" </td>"
				}
			
			
			tableData+="<td>"+eastGodhavari.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+eastGodhavari.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+eastGodhavari.deceased+"</td>"					
			tableData+="</tr>"
			
	        tableData+="<tr >"
			tableData+="<td>  Chittoor </td>"
			
				if(eastGodhavari.confirmed>100){
					tableData+="<td style='padding-left: 116px;color:red'> "+Chittoor.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+Chittoor.confirmed+" </td>"
				}
			
			
			tableData+="<td>"+Chittoor.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Chittoor.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Chittoor.deceased+"</td>"					
			tableData+="</tr>"
				
		    tableData+="<tr style='background-color: #d6c3c3bf;'>"
			tableData+="<td>  Guntur </td>"
			
				if(Guntur.confirmed>100){
					tableData+="<td style='padding-left: 116px;color: red;'> "+Guntur.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+Guntur.confirmed+" </td>"
				}
					
			tableData+="<td>"+Guntur.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Guntur.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Guntur.deceased+"</td>"					
			tableData+="</tr>"
			
		    tableData+="<tr>"
			tableData+="<td>  Krishna </td>"
			
				if(Krishna.confirmed>100){
					tableData+="<td style='padding-left: 116px;color: red;'> "+Krishna.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+Krishna.confirmed+" </td>"
				}
			
			tableData+="<td>"+Krishna.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Krishna.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Krishna.deceased+"</td>"					
			tableData+="</tr>"
			
			
	        tableData+="<tr style='background-color: #d6c3c3bf;'>"
			tableData+="<td>  Kurnool </td>"
			
			
				if(Kurnool.confirmed>100){
					tableData+="<td style='padding-left: 116px;color: red;'> "+Kurnool.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+Kurnool.confirmed+" </td>"
				}
			
			
			tableData+="<td>"+Kurnool.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Kurnool.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Kurnool.deceased+"</td>"					
			tableData+="</tr>"

		    tableData+="<tr>"
			tableData+="<td>  Prakasam </td>"

				if(Prakasam.confirmed>100){
					tableData+="<td style='padding-left: 116px;color: red;'> "+Prakasam.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+Prakasam.confirmed+" </td>"
				}
			
			tableData+="<td>"+Prakasam.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Prakasam.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Prakasam.deceased+"</td>"					
			tableData+="</tr>"
			
	        tableData+="<tr style='background-color: #d6c3c3bf;'>"
			tableData+="<td>  Nellore </td>"

				if(Nellore.confirmed>100){
					tableData+="<td style='padding-left: 116px;color: red;'> "+Nellore.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+Nellore.confirmed+" </td>"
				}
			
			tableData+="<td>"+Nellore.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Nellore.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Nellore.deceased+"</td>"					
			tableData+="</tr>"
			
		    tableData+="<tr>"
			tableData+="<td>  Visakhapatnam </td>"
			
				if(Nellore.confirmed>100){
					tableData+="<td style='padding-left: 116px;color: red;'> "+Visakhapatnam.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+Visakhapatnam.confirmed+" </td>"
				}
			
			
			tableData+="<td>"+Visakhapatnam.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Visakhapatnam.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Visakhapatnam.deceased+"</td>"					
			tableData+="</tr>"
		    
			tableData+="<tr style='background-color: #d6c3c3bf;'>"
			tableData+="<td>  West Godavari </td>"

				if(westGodavari.confirmed>100){
					tableData+="<td style='padding-left: 116px;color: red;'> "+westGodavari.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+westGodavari.confirmed+" </td>"
				}
			
			tableData+="<td>"+westGodavari.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+westGodavari.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+westGodavari.deceased+"</td>"					
			tableData+="</tr>"	
			debugger;
				
		    tableData+="<tr >"
			tableData+="<td>  Y.S.R. Kadapa </td>"

				if(Kadapa.confirmed>100){
					tableData+="<td style='padding-left: 116px;color: red;'> "+Kadapa.confirmed+" </td>"
				}else{
					tableData+="<td style='padding-left: 116px;'> "+Kadapa.confirmed+" </td>"
				}
			
			tableData+="<td>"+Kadapa.active+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Kadapa.recovered+"</td>"
			tableData+="<td style='padding-left: 96px;'>"+Kadapa.deceased+"</td>"					
			tableData+="</tr>"				
			tableData+="</tbody>"
			
			
			tableData+="<tfoot>"			
				tableData+="<tr style='background-color:#FFD733' >"
				tableData+="<td>  Total Data </td>"
				tableData+="<td style='padding-left: 116px;'> "+totConformed+" </td>"
				tableData+="<td>"+totActive+"</td>"
				tableData+="<td style='padding-left: 96px;'>"+totRedovered+"</td>"
				tableData+="<td style='padding-left: 96px;'>"+totDeceased+"</td>"					
				tableData+="</tr>"	
			tableData+="</tfoot>"
			tableData+="</table>"
	 $("#content").append(tableData)
	
	</script>
	
	  <!--  adding data table  -->
		  

<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"> 



<script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdn.datatables.net/rowreorder/1.2.5/js/dataTables.rowReorder.min.js"></script>

<script src="https://cdn.datatables.net/scroller/2.0.0/js/dataTables.scroller.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js"></script>

<script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/rowreorder/1.2.5/css/rowReorder.dataTables.min.css">

<link rel="stylesheet" href="https://cdn.datatables.net/scroller/2.0.0/css/scroller.dataTables.min.css">


		  <!-- adding data table -->
	<script>
//$(document).ready( function () {
  var table=  $('#example').DataTable({
	   dom: 'Bfrtip',
	   keys: true,
	   rowReorder: true,
	   deferRender:    true,
        scrollY:        400,
        scrollCollapse: true,
        scroller:       true,
        select:         true,
          sorting:false,
		
      buttons: [
            'copy',
          
            'excel',
            
			 'pdf',
             
			 'print',
			 
	        {
			    extend: 'colvis',
                postfixButtons: [ 'colvisRestore' ],
            }
             
        ]
	});

	 $('#example tbody')
        .on( 'mouseenter', 'td', function () {
            var colIdx = table.cell(this).index().column;
 
            $( table.cells().nodes() ).removeClass( 'highlight' );
            $( table.column( colIdx ).nodes() ).addClass( 'highlight' );
        } );
//} );



</script>

</body>

</html>









