<%@ page import="common.User_Bean" %>
<%@ page import="CRUD.Edit_Contact" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<%


    String id = request.getParameter("id");

    int idd = Integer.parseInt(id);


    String firstName = request.getParameter("nume");
    String lastName = request.getParameter("prenume");
    String dob = request.getParameter("data_nastere");
    String company = request.getParameter("companie");
    String mobile = request.getParameter("tel_mobil");
    String landLine = request.getParameter("tel_fix");
    String email = request.getParameter("e_mail");
    String adresa_curenta = request.getParameter("adresa_curenta");
    String adresa = request.getParameter("adresa");
    String adresa1 = request.getParameter("adresa1");
    String adresa2 = request.getParameter("adresa2");
    String adresa3 = request.getParameter("adresa3");


    User_Bean u = new User_Bean();

    if (adresa.equals("Romania") & (adresa1.equals("Gorj")) & (adresa2.equals("") & (adresa3.equals("")))) {


        u.setId(idd);
        u.setNume(firstName);
        u.setPrenume(lastName);
        u.setData_nastere(dob);
        u.setCompanie(company);
        u.setTel_mobil(mobile);
        u.setTel_fix(landLine);
        u.setE_mail(email);
        u.setAdresa(adresa_curenta);
    } else {

        String concat = adresa + ", Jud. " + adresa1 + ", Str. " + adresa2 + ", Nr. " + adresa3;

        u.setId(idd);
        u.setNume(firstName);
        u.setPrenume(lastName);
        u.setData_nastere(dob);
        u.setCompanie(company);
        u.setTel_mobil(mobile);
        u.setTel_fix(landLine);
        u.setE_mail(email);
        u.setAdresa(concat);

    }


    Edit_Contact e = new Edit_Contact();
    e.editContact(u);


%>


<script type="text/javascript">

    window.location.href = "http://localhost:8080/Agenda_Telefon/web/add_contact.jsp";

</script>

</body>
</html>