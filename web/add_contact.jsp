<%@ page import="common.User_Bean" %>
<%@ page import="CRUD.Read_Contact" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
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
            margin-right: auto;
            margin-left: auto;
            text-align: center;

        }

        .margin {
            margin-top: 20px;
            font-size: small;
            margin-left: 10px;
        }


        .footer
        {
        }

        @media screen and (max-width: 1050px)
        {
            .footer {
                margin-right: 15%;

            }
        }



    </style>

    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">

</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="center">



            <h1> Agenda Telefon </h1>


            <form action="search_contact.jsp">
                Cautare contact : <input type="text" name="cautare_contact" class="margin-top"
                                         placeholder="dupa nume sau mobil" required>

                <input type="submit" value="cauta" class="margin">
            </form>


            <form action="controller/add_controller.jsp">

                Nume : <input type="text" name="nume" class="margin-top" required><br>
                Prenume :<input type="text" name="prenume" class="margin-top"><br>
                Data Nastere :<input type="date" name="data_nastere" class="margin-top" required><br>
                Companie :<input type="text" name="companie" class="margin-top"><br>
                Telefon Mobil :<input type="text" name="tel_mobil" class="margin-top" required><br>
                Telefon Fix :<input type="text" name="tel_fix" class="margin-top"><br>
                E-Mail :<input type="text" name="e_mail" class="margin-top"><br>

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


                <input type="submit" value="Adauga" class="footer margin-top">
            </form>


            <hr>

            <style>
                table, td, th {
                    border: 1px solid black;
                    padding: 13px;
                }

                table {
                    border-collapse: collapse;
                    width: 50%;
                    margin-top: 20px;
                }

                th {
                    height: 50px;
                }

            </style>


            <%

                Read_Contact rc = new Read_Contact();

                List<User_Bean> list = rc.readData();

                Iterator<User_Bean> it = list.iterator();

            %>


            <table class="table table-bordered table-responsive table-striped">


                <tr>
                    <th>Nume</th>
                    <th>Prenume</th>
                    <th>Data Nastere</th>
                    <th>Companie</th>
                    <th>Telefon Mobil</th>
                    <th>Telefon Fix</th>
                    <th>E-Mail</th>
                    <th>Adresa</th>
                </tr>


                <%

                    while (it.hasNext()) {

                        User_Bean ub = it.next();


                %>

                <tr>
                    <td><%= ub.getNume()%>
                    <td><%= ub.getPrenume()%>
                    <td><%= ub.getData_nastere()%>
                    <td><%= ub.getCompanie()%>
                    <td><%= ub.getTel_mobil()%>
                    <td><%= ub.getTel_fix()%>
                    <td><%= ub.getE_mail()%>
                    <td><%= ub.getAdresa()%>


                    <td>
                        <a href="edit_contact.jsp?id=<%= ub.getId()%>">Editati</a>

                        <a href="controller/delete_controller.jsp?id=<%= ub.getId()%>">Stergeti</a>
                    </td>

                </tr>

                <%
                    }
                %>

            </table>


        </div>
    </div>
</div>


<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery-3.4.1.js"></script>

</body>
</html>


