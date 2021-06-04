<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%    
    String nombre = (String)request.getAttribute("nombre");
    String empresa = (String)request.getAttribute("empresa");
    String rut = (String)request.getAttribute("rut");
    String direccion = (String)request.getAttribute("direccion");
    String ciudad = (String)request.getAttribute("ciudad");
    String pais = (String)request.getAttribute("pais");
    
    String codItem01 = (String)request.getAttribute("codItem01");
    String descItem01 = (String)request.getAttribute("descItem01");
    int valorItem01 = (Integer)request.getAttribute("valorItem01");
    int cantItem01 = (Integer)request.getAttribute("cantItem01");
    int subItem01 = (Integer)request.getAttribute("subItem01");
    String codItem02 = (String)request.getAttribute("codItem02");
    String descItem02 = (String)request.getAttribute("descItem02");
    int valorItem02 = (Integer)request.getAttribute("valorItem02");
    int cantItem02 = (Integer)request.getAttribute("cantItem02");
    int subItem02 = (Integer)request.getAttribute("subItem02");
    String codItem03 = (String)request.getAttribute("codItem03");
    String descItem03 = (String)request.getAttribute("descItem03");
    int valorItem03 = (Integer)request.getAttribute("valorItem03");
    int cantItem03 = (Integer)request.getAttribute("cantItem03");
    int subItem03 = (Integer)request.getAttribute("subItem03");
    String codItem04 = (String)request.getAttribute("codItem04");
    String descItem04 = (String)request.getAttribute("descItem04");
    int valorItem04 = (Integer)request.getAttribute("valorItem04");
    int cantItem04 = (Integer)request.getAttribute("cantItem04");
    int subItem04 = (Integer)request.getAttribute("subItem04");
    String codItem05 = (String)request.getAttribute("codItem05");
    String descItem05 = (String)request.getAttribute("descItem05");
    int valorItem05 = (Integer)request.getAttribute("valorItem05");
    int cantItem05 = (Integer)request.getAttribute("cantItem05");
    int subItem05 = (Integer)request.getAttribute("subItem05");
    
    int subtotal = (Integer)request.getAttribute("subtotal");
    int descuento = (Integer)request.getAttribute("descuento");
    int total = (Integer)request.getAttribute("total");
%>
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

                                            <div class="row mt-2 pt-3 bg-light rounded-top">
                                                <div class="col-6 text-left">
                                                    <div class="fact-header--left">
                                                        <span class="fact-header--left-bold">Información de Cliente<br><br></span>
                                                        <span><%=nombre %><br></span>
                                                        <span><%=empresa %><br></span>
                                                        <span><%=ciudad %>,&nbsp;</span><span><%=pais %><br></span>
                                                        <span><%=direccion %><br><br></span>
                                                    </div>
                                                </div>
                                                <div class="col-6 text-right">
                                                    <div class="fact-header--right">
                                                        <span class="fact-header--right-bold">Detalles de Pago<br><br></span>
                                                        <span>ID: 2009072211-A<br></span>
                                                        <span>Forma de Pago: TEF<br></span>
                                                        <span>Ref. Pago: 06396710<br></span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row bg-primary py-1 text-center text-white">
                                                <div class="col-2">
                                                    <span>CÓDIGO</span>
                                                </div>
                                                <div class="col-4">
                                                    <span>DESCRIPCIÓN</span>
                                                </div>
                                                <div class="col-2">
                                                    <span>VALOR UNITARIO</span>
                                                </div>
                                                <div class="col-2">
                                                    <span>CANTIDAD</span>
                                                </div>
                                                <div class="col-2">
                                                    <span>SUBTOTAL</span>
                                                </div>
                                            </div>

                                            <div class="row form__fila-impar py-1 text-center">
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=codItem01 %></div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="form__items-txt--desc"><%=descItem01 %></div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=valorItem01 %> CLP</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=cantItem01 %> UND</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=subItem01 %> CLP</div>
                                                </div>
                                            </div>
                                            <div class="row form__fila-par py-1 text-center">
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=codItem02 %></div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="form__items-txt--desc"><%=descItem02 %></div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=valorItem02 %> CLP</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=cantItem02 %> UND</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=subItem02 %> CLP</div>
                                                </div>
                                            </div>
                                            <div class="row form__fila-impar py-1 text-center">
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=codItem03 %></div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="form__items-txt--desc"><%=descItem03 %></div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=valorItem03 %> CLP</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=cantItem03 %> UND</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=subItem03 %> CLP</div>
                                                </div>
                                            </div>
                                            <div class="row form__fila-par py-1 text-center">
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=codItem04 %></div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="form__items-txt--desc"><%=descItem04 %></div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=valorItem04 %> CLP</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=cantItem04 %> UND</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=subItem04 %> CLP</div>
                                                </div>
                                            </div>
                                            <div class="row form__fila-impar py-1 text-center">
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=codItem05 %></div>
                                                </div>
                                                <div class="col-4">
                                                    <div class="form__items-txt--desc"><%=descItem05 %></div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=valorItem05 %> CLP</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--cod"><%=cantItem05 %> UND</div>
                                                </div>
                                                <div class="col-2">
                                                    <div class="form__items-txt--desc-right">$<%=subItem05 %> CLP</div>
                                                </div>
                                            </div>
                                            <div class="row fact-footer mb-2 pb-4 pt-4 bg-light rounded-bottom">
                                                <div class="col-4">
                                                </div>
                                                <div class="col-3">
                                                    <div>SUBTOTAL FACTURA<br><span class="fact-footer--txtlg">$<%=subtotal %> CLP</span><br></div>
                                                </div>
                                                <div class="col-2">
                                                    <div>DESCUENTO (10%)<br><span class="fact-footer--txtlg">$<%=descuento %> CLP</span><br></div>
                                                </div>
                                                <div class="col-3">
                                                    <div>TOTAL FACTURA<br><span class="fact-footer--txtlg">$<%=total %> CLP</span><br></div>
                                                </div>
                                            </div>
                                            <div class="row my-2 py-1">
                                                <div class="col-12 text-center">
                                                    <button class="btn btn-primary" onclick="location.href='http://emperor.svetia.com:8080/DesafioJSPGeneradorFactura/'">Nueva factura</button>
                                                </div>
                                            </div>
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