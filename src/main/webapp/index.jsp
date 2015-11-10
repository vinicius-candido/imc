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

<div class="container" style="margin-top:30px">
<div class="col-md-4">
<div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"></h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Massa" name="massa" type="numeric" autofocus="">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Altura" name="altura" type="numeric" value="">
                                </div>
                                <div class="checkbox">
                                    <!-- <label> 		AQUI É A PARTE DO LEMBRAR-ME
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label> -->
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <a href="javascript:;" class="btn btn-sm btn-success">Calcular</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
</div>
<br>
</div>














	<div class="container">
		<div class="row">
		  <h1 style="text-align: center; color: dark-blue;">Calcule seu IMC</h1>
		  <BR>
		  <form>
		    Nome: <input type="text" name="nome">
		    <br><br>
		    Massa (em Kg): <input type="numeric" name="massa">
		    <br><br>
		    Altura (em M): <input type="numeric" name="altura">
		    <input type="submit">
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
