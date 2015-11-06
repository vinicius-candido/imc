<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>IMC</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="row">
		  <h1 style="text-align: center; color: dark-blue;">Calcule seu IMC</h1>
		  <BR>
		  <form role="form">
		    Nome: <input type="text" name="nome">
		    <br>
		    Massa (em Kg): <input type="numeric" name="massa">
		    <br>
		    Altura (em M): <input type="numeric" name="altura">
		    <input type="submit">Calcular</input>
		  </form>
		  <br>
		  <h2>
		  Resultado: <%
		    //Formula Calculo IMC
		  	String nome = request.getParameter("nome");
		    nome = nome == null ? "" : nome;
		    
		    double m = request.getParameter("massa") == null ? 0.0 : Float.parseFloat(request.getParameter("massa"));
		    double a = request.getParameter("altura") == null ? 0.0 : Float.parseFloat(request.getParameter("altura"));
		    
		    Double imc;
		    imc = m/(a*a);
		  %>
		  </h2>
		  <br>
		  <h2>
		  <%
		  //Retorna valores
		  	if(imc.isNaN() == false)
		  		out.print("O IMC de "+nome+" eh: "+java.lang.Math.round(imc));
		    %>
		  </h2>
		</div>
	</div>
</body>
</html>
