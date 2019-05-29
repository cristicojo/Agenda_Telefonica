<%@ page import="CRUD.Delete_Contact" %>
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


    Delete_Contact d = new Delete_Contact();
    d.deleteContact(idd);


%>


<script type="text/javascript">

    window.location.href = "http://localhost:8080/Agenda_Telefon/web/add_contact.jsp";

</script>

</body>
</html>