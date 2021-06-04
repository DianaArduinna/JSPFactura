<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Desafío JSP: Generador de Factura</title>
    <link rel="icon" href="./assets/img/favicon.png" sizes="32x32">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>

<body>
    <div class="low-res m-5">
        <h3>¡Error!<br><br>La resolución de pantalla en su dispositivo no es compatible con este servicio.<br><br>Se requiere una resolución mínima de 992 píxeles.</h3>
    </div>
    <div class="principal container-fluid py-3">
        <div class="row-fluid">
            <div class="col-12">
                <!-- Navegación -->
                <nav class="navegacion navbar flex-nowrap rounded shadow-sm border mb-2">
                    <div>
                        <a href="https://www.tutorialspoint.com/html5/index.htm" target="_blank" title="HTML5 Tutorial"><img class="navegacion__img--lab-logo" src="./assets/img/html5.png" alt=""></a>
                        <a href="https://www.tutorialspoint.com/css/index.htm" target="_blank" title="CSS Tutorial"><img class="navegacion__img--lab-logo" src="./assets/img/css3.png" alt=""></a>
                        <a href="https://www.tutorialspoint.com/javascript/index.htm" target="_blank" title="JavaScript Tutorial"><img class="navegacion__img--lab-logo" src="./assets/img/js.png" alt=""></a>
                        <a href="https://www.tutorialspoint.com/bootstrap/index.htm" target="_blank" title="Bootstrap Tutorial"><img class="navegacion__img--lab-logo" src="./assets/img/bootstrap.png" alt=""></a>
                        <a href="https://www.tutorialspoint.com/jsp/index.htm" target="_blank" title="JSP Tutorial"><img class="navegacion__img--lab-logo" src="./assets/img/javaee.png" alt=""></a>
                    </div>
                    <div class="pr-2">
                        <span class="navegacion__titulo">Generador de Factura</span><a href="./assets/pdf/GeneradorFactura.pdf" target="_blank" title="Info. Desafío"><img class="navegacion__img--lab-logo" src="./assets/img/pdf.png" alt=""></a>
                    </div>
                </nav>
                <!-- Fin navegación -->

                <!-- Contenido -->
                <div class="contenido container-fluid rounded shadow-sm border mb-2 py-2 px-2">
                    <div class="row">
                        <div class="col-12">
                            <div class="contenido__area-desarrollo p-2 rounded">

                                <div class="container bg-ligth flex-nowrap text-nowrap mt-4">
                                    <div class="row">
                                        <div class="col-8">
                                            <img class="invoice-logo" src="./assets/img/company_logo.png" alt="">
                                        </div>
                                        <div class="col-4">
                                            <div class="sii-text">
                                                <div class="border border-danger py-2 rounded">
                                                    <span class="sii-text--red">R.U.T. 77.123.456-X<br></span>
                                                    <span class="sii-text--red">FACTURA ELECTRÓNICA<br></span>
                                                    <!-- https://www.rapidtables.com/web/html/html-codes.html -->
                                                    <span class="sii-text--red">N&ordm; 0000<br></span>
                                                </div>
                                                <span class="sii-text--white">S.I.I. WEB REALM</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row text-nowrap">
                                        <div class="col-12">
                                            <form action="factura" method="POST">
                                                <div class="row my-2 py-1">
                                                        <div class="col-4">
                                                            <input type="text" name="nombre" class="form-control" id="nombre" placeholder="Nombre completo" required>
                                                        </div>
                                                        <div class="col-4">
                                                            <input type="text" name="empresa" class="form-control" id="empresa" placeholder="Empresa" required>
                                                        </div>
                                                        <div class="col-4">
                                                            <input type="text" name="rut" class="form-control" id="rut" placeholder="RUT" required>
                                                        </div>
                                                    </div>
                                                    <div class="row my-2 py-1">
                                                        <div class="col-4">
                                                            <input type="text" name="direccion" class="form-control" id="direccion" placeholder="Dirección" required>
                                                        </div>
                                                        <div class="col-4">
                                                            <input type="text" name="ciudad" class="form-control" id="ciudad" placeholder="Ciudad" required>
                                                        </div>
                                                        <div class="col-4">
                                                            <input type="text" name="pais" class="form-control" id="pais" placeholder="País" required>
                                                        </div>
                                                    </div>
                                                    <div class="row bg-primary py-1 text-center text-white">
                                                        <div class="col-2">
                                                            <span>CÓDIGO</span>
                                                        </div>
                                                        <div class="col-5">
                                                            <span>DESCRIPCIÓN</span>
                                                        </div>
                                                        <div class="col-3">
                                                            <span>VALOR UNITARIO</span>
                                                        </div>
                                                        <div class="col-2">
                                                            <span>CANTIDAD</span>
                                                        </div>
                                                    </div>

                                                    <div class="row form__fila-impar py-1 text-center">
                                                        <div class="col-2">
                                                            <div class="form__items-txt--cod">VTIC-0001</div>
                                                            <input type="hidden" name="codItem01" value="VTIC-0001">
                                                        </div>
                                                        <div class="col-5">
                                                            <div class="form__items-txt--desc">Válvulas Titanio de Carrera</div>
                                                            <input type="hidden" name="descItem01" value="Válvulas Titanio de Carrera">
                                                        </div>
                                                        <div class="col-3">
                                                            <div class="form__items-txt--right">$120.000 CLP</div>
                                                            <input type="hidden" name="valorItem01" value="120000">
                                                        </div>
                                                        <div class="col-2">
                                                            <input class="form__items-txt w-75" type="number" name="cantItem01" class="form-control" id="cantItem01" placeholder="min. 1" min="1" max="100" required>
                                                        </div>
                                                    </div>
                                                    <div class="row form__fila-par py-1 text-center">
                                                        <div class="col-2">
                                                            <div class="form__items-txt--cod">TCOM-0201</div>
                                                            <input type="hidden" name="codItem02" value="TCOM-0201">
                                                        </div>
                                                        <div class="col-5">
                                                            <div class="form__items-txt--desc">Turbo de Competición Multimarca</div>
                                                            <input type="hidden" name="descItem02" value="Turbo de Competición Multimarca">
                                                        </div>
                                                        <div class="col-3">
                                                            <div class="form__items-txt--right">$1.700.000 CLP</div>
                                                            <input type="hidden" name="valorItem02" value="1700000">
                                                        </div>
                                                        <div class="col-2">
                                                            <input class="form__items-txt w-75" type="number" name="cantItem02" class="form-control" id="cantItem02" placeholder="min. 1" min="1" max="100" required>
                                                        </div>
                                                    </div>
                                                    <div class="row form__fila-impar py-1 text-center">
                                                        <div class="col-2">
                                                            <div class="form__items-txt--cod">KFRC-0060</div>
                                                            <input type="hidden" name="codItem03" value="KFRC-0060">
                                                        </div>
                                                        <div class="col-5">
                                                            <div class="form__items-txt--desc">Kit Frenos Competición</div>
                                                            <input type="hidden" name="descItem03" value="Kit Frenos Competición">
                                                        </div>
                                                        <div class="col-3">
                                                            <div class="form__items-txt--right">$760.000 CLP</div>
                                                            <input type="hidden" name="valorItem03" value="760000">
                                                        </div>
                                                        <div class="col-2">
                                                            <input class="form__items-txt w-75" type="number" name="cantItem03" class="form-control" id="cantItem03" placeholder="min. 1" min="1" max="100" required>
                                                        </div>
                                                    </div>
                                                    <div class="row form__fila-par py-1 text-center">
                                                        <div class="col-2">
                                                            <div class="form__items-txt--cod">SREC-8881</div>
                                                            <input type="hidden" name="codItem04" value="SREC-8881">
                                                        </div>
                                                        <div class="col-5">
                                                            <div class="form__items-txt--desc">Sistema Enfriamiento Motor Carrera</div>
                                                            <input type="hidden" name="descItem04" value="Sistema Enfriamiento Motor Carrera">
                                                        </div>
                                                        <div class="col-3">
                                                            <div class="form__items-txt--right">$2.300.000 CLP</div>
                                                            <input type="hidden" name="valorItem04" value="2300000">
                                                        </div>
                                                        <div class="col-2">
                                                            <input class="form__items-txt w-75" type="number" name="cantItem04" class="form-control" id="cantItem04" placeholder="min. 1" min="1" max="100" required>
                                                        </div>
                                                    </div>
                                                    <div class="row form__fila-impar py-1 text-center">
                                                        <div class="col-2">
                                                            <div class="form__items-txt--cod">WSTD-0033</div>
                                                            <input type="hidden" name="codItem05" value="WSTD-0033">
                                                        </div>
                                                        <div class="col-5">
                                                            <div class="form__items-txt--desc">Plumillas Limpiaparabrisas Estándar</div>
                                                            <input type="hidden" name="descItem05" value="Plumillas Limpiaparabrisas Estándar">
                                                        </div>
                                                        <div class="col-3">
                                                            <div class="form__items-txt--right">$10.000 CLP</div>
                                                            <input type="hidden" name="valorItem05" value="10000">
                                                        </div>
                                                        <div class="col-2">
                                                            <input class="form__items-txt w-75" type="number" name="cantItem05" class="form-control" id="cantItem05" placeholder="min. 1" min="1" max="100" required>
                                                        </div>
                                                    </div>
                                                    <div class="row my-2 py-1">
                                                        <div class="col-6 text-right">
                                                            <button type="submit" class="btn btn-success">Genera Factura</button>
                                                        </div>
                                                        <div class="col-6 text-left">
                                                            <button type="reset" class="btn btn-secondary">Limpiar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fin contenido -->

                <!-- Pie -->
                <div class="pie container-fluid rounded shadow-sm border py-3">
                    <div class="row">
                        <div class="col-12">
                            <div class="text-center">
                                <span><img id="pie__img--desafiolatam-logo" src="./assets/img/desafiolatam-logo.png" alt=""></span>
                                <span><img id="pie__img--ecamp-logo" src="./assets/img/ecamp-logo.png" alt=""></span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fin pie -->
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
</body>

</html>