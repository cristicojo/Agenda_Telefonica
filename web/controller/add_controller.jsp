<%@ page import="CRUD.Add_Contact" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<%

    String firstName = request.getParameter("nume");
    String lastName = request.getParameter("prenume");
    String dob = request.getParameter("data_nastere");
    String company = request.getParameter("companie");
    String mobile = request.getParameter("tel_mobil");
    String landLine = request.getParameter("tel_fix");
    String email = request.getParameter("e_mail");
    String adresa = request.getParameter("adresa");
    String adresa1 = request.getParameter("adresa1");
    String adresa2 = request.getParameter("adresa2");
    String adresa3 = request.getParameter("adresa3");


    String concat = adresa + ", Jud. " + adresa1 + ", Str. " + adresa2 + ", Nr. " + adresa3;


    Add_Contact a = new Add_Contact();

    a.insertData(firstName, lastName, dob, company, mobile, landLine, email, concat);


%>


<script type="text/javascript">

    window.location.href = "http://localhost:8080/Agenda_Telefon/web/add_contact.jsp";

</script>

</body>
</html>