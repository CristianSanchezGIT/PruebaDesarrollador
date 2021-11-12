
$(document).ready(function (){
	$.ajax({
		type: "GET",
		url: "http://localhost:8080/Representante",
		dataType: "json",
		success: function(data){
			
			$.each(data, function(i,item){
				var repre = "<option value='"+item.id_representante_legal+"'>"+
								item.nombre_completo+
							"</option>";
				$("#representante").append(repre);	
			});

		},
	});	
	
	$("#guardar").click(function (){

		$("#textoModal").empty();	
		
		if($("#representante").val().length == 0){
			$("#textoModal").append("Campo Representante Esta Vacio");
			$("#miModal").modal("show");	
		}else if($("#tipoDoc").val().length == 0){
			$("#textoModal").append("Campo Tipo Documento Esta Vacio");
			$("#miModal").modal("show");
		}else if($("#numerodoc").val().length == 0){
			$("#textoModal").append("Campo Numero De Documento Esta Vacio");
			$("#miModal").modal("show");
		}else if($("#nombre").val().length == 0){
			$("#textoModal").append("Campo Nombre Completo Esta Vacio");
			$("#miModal").modal("show");
		}else if($("#direccion").val().length == 0){
			$("#textoModal").append("Campo Direccion Esta Vacio");
			$("#miModal").modal("show");
		}else if($("#ciudad").val().length == 0){
			$("#textoModal").append("Campo Ciudad Esta Vacio");
			$("#miModal").modal("show");
		}else if($("#departamento").val().length == 0){
			$("#textoModal").append("Campo Departamento Esta Vacio");
			$("#miModal").modal("show");
		}else if($("#pais").val().length == 0){
			$("#textoModal").append("Campo Pais Esta Vacio");
			$("#miModal").modal("show");
		}else if($("#telefono").val().length == 0){
			$("#textoModal").append("Campo Telefono Esta Vacio");
			$("#miModal").modal("show");
		}else{
			
			
			var DatosEnvia = {
				id_representante_legal: $("#representante").val(),
			    tipo_documento: $("#tipoDoc").val(),
			    numero_documento: $("#numerodoc").val(),
			    nombre_completo: $("#nombre").val(),
			    direccion: $("#direccion").val(),
			    ciudad: $("#ciudad").val(),
			    departamento: $("#departamento").val(),
			    pais: $("#pais").val(),
			    telefono: $("#telefono").val(),
			};
			
			console.log(JSON.stringify(DatosEnvia));
			
			/*$.ajax({
				type: "POST",
				url: "http://localhost:8080/Empresa",
				dataType: "json",
				data: JSON.stringify(DatosEnvia),
				success: function(data){
					console.log(JSON.stringify("respuesta es : "+data));
				},
			});*/arguments
			
			fetch("http://localhost:8080/Empresa",{
				method: "post",
				body: JSON.stringify(DatosEnvia),
				headers: {
				    'Content-type': 'application/json; charset=UTF-8',
				}
			}).then(function (respuesta){
				return respuesta.json();
			}).then(function (datosServidor){
				console.log(datosServidor);+
				
				$("#formEmpresa")[0].reset();
				$("#textoModal").append("Se guardo correctamente la empresa "+datosServidor.nombre_completo+" Con el ID: "+datosServidor.id_empresa);
				$("#miModal").modal("show");
				
			});
		}
	});
	
	
	$("#CerrarModal").click(function (){
		$("#miModal").modal("hide");
	});
	
	
});
