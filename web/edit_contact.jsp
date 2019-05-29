<%@ page import="common.User_Bean" %>
<%@ page import="CRUD.Edit_Contact" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <title>Title</title>


    <style>
        .margin-top {

            margin-top: 20px;
            font-size: small;

        }

        .center {
            margin-top: 30px;
            margin-right: auto;
            margin-left: auto;
            text-align: center;

        }


    </style>


    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

</head>
<body>

<%
    String id = request.getParameter("id");

    int idd = Integer.parseInt(id);

    Edit_Contact e = new Edit_Contact();

    User_Bean u = e.findValuesById(idd);
%>


<div class="container">
    <div class="row">
        <div class="center">


            <h1>Editare Contact</h1>

            <form action="controller/edit_controller.jsp">

                ID : <input type="text" name="id" class="margin-top" value="<%= u.getId() %>" readonly><br>
                Nume :<input type="text" name="nume" required value="<%= u.getNume()%>" class="margin-top"><br>
                Prenume :<input type="text" name="prenume" value="<%= u.getPrenume()%>" class="margin-top"><br>
                Data Nastere :<input type="date" name="data_nastere" value="<%= u.getData_nastere()%>"
                                     class="margin-top" required><br>
                Companie :<input type="text" name="companie" value="<%= u.getCompanie()%>" class="margin-top"><br>
                Telefon Mobil :<input type="text" name="tel_mobil" class="margin-top" required
                                      value="<%= u.getTel_mobil()%>"><br>
                Telefon Fix :<input type="text" name="tel_fix" value="<%= u.getTel_fix()%>" class="margin-top"><br>
                E-Mail :<input type="text" name="e_mail" value="<%= u.getE_mail()%>" class="margin-top"><br>
                Adresa Curenta :<input name="adresa_curenta" type="text" value="<%= u.getAdresa()%>" class="margin-top"
                                       size="50" readonly><br>
                Tara :<select name="adresa" class="margin-top"><br>

                <option>Romania</option>
                <option>Anglia</option>
                <option>Italia</option>
                <option>Spania</option>
                <option>Other</option>
            </select>

                Judet :<select name="adresa1" class="margin-top"><br>

                <option>Gorj</option>
                <option>Dolj</option>
                <option>Ilfov</option>
                <option>Timis</option>
                <option>Other</option>
            </select>


                Strada :<input type="text" name="adresa2" class="margin-top"><br>
                Numar :<input type="text" name="adresa3" class="margin-top"><br>


                <input type="submit" value="Editeaza" class="margin-top">

            </form>


        </div>
    </div>
</div>


<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-3.4.1.js"></script>
</body>
</html>


