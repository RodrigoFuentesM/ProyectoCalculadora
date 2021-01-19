<html>
<head>
<meta http-quiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Calculadora</title>
</head>
<body>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form action="CalcServlet" method="POST">
					<h4 class="mt-4">Calculadora</h4>
					<div class="form-group">
						<label for="peso">Número 1</label> <input type="text"
							class="form-control" id="n1" name="n1" required />
					</div>
					<div class="form-group">
						<label for="estatura">Número 2</label> <input type="text"
							class="form-control" id="n2" name="n2" required />
					</div>
					<div class="form-group">
						<label for="operacion">Elija Operación</label> <select
							class="form-control" id="operacion" name="operacion" required>
							<option value="1">Suma</option>
							<option value="2">Resta</option>
							<option value="3">Multiplicación</option>
							<option value="4">División</option>
						</select>
					</div>
					<input type="submit" class="btn btn-success btn-block"
						value="Calcular" id="calcular" />
					<div class="form-group mt-4">
						<label for="calcular">Resultado</label> <input type="text"
							class="form-control" id="resultado" name="resultado" disabled
							value=<%if (request.getSession().getAttribute("resultado") == null) {
				out.println("");
			} else {
				out.println(request.getSession().getAttribute("resultado"));
			}%>>
					</div>

				</form>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>