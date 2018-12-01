<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page import="java.util.List" %>
<%@ page import="controller.VTS" %><%--
  Created by IntelliJ IDEA.
  User: jisasr3
  Date: 11/29/2018
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Helo</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    <script>
        $(function () {
            $(".datepicker").datepicker({
                showOn: "button",
                buttonImage: "img/cal.svg",
                buttonImageOnly: true,
                buttonText: "Select date"
            });

            $('.timepicker').timepicker({
                timeFormat: 'h:mm',
                defaultTime: "00:00",
                dropdown: false
            });
        })
    </script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/j3.css">


</head>
<body>
<h1>hello</h1>
<div class="container-fluid main-container">
    <div class="dashContainer">
        <div class="text-center home-btn">Home</div>
        <div class="accordion" id="accordionExample">
            <div class="card">
                <div class="card-header" id="headingOne" data-toggle="collapse" data-target="#collapseOne"
                     aria-expanded="false" aria-controls="collapseOne">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed text-center" type="button">
                            Message Room
                        </button>
                    </h5>
                </div>

                <div id="collapseOne" class="collapse" aria-labelledby="headingOne">
                    <div class="card-body text-center">
                        Inbound Recon
                    </div>
                    <div class="card-body text-center">
                        Outbound Recon
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo"
                     aria-expanded="false" aria-controls="collapseTwo">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed text-center" type="button">
                            Message Integrity
                        </button>
                    </h5>
                </div>

                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo">
                    <div class="card-body text-center">
                        Inbound DI Check
                    </div>
                    <div class="card-body text-center">
                        Outbound DI Check
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header" id="headingThree" data-toggle="collapse" aria-controls="collapseThree">
                    <h5 class="mb-0">
                        <button class="btn btn-link collapsed text-center" type="button">
                            Reports
                        </button>
                    </h5>
                </div>
            </div>
        </div>
    </div>
    <div class="property-body">
        <div class="inbound-recon">
            <p>Recon Dashboard :: Inbound</p>
        </div>
        <div class="dateTime row">
            <div class="starttime col-sm-6">
                <div class="row rowheight30">
                    <div class="datebox text-center"> Start Date</div>
                    <input class="datepicker text-center">
                    <input class="timepicker text-center">
                </div>
            </div>
            <div class="endtime col-sm-6">
                <div class="row rowheight30">
                    <div class="datebox text-center"> End Date</div>
                    <input class="datepicker text-center">
                    <input class="timepicker text-center">
                </div>
            </div>

        </div>

        <div class="systemRow row">
            <div class="systemBlock col-sm-6">
                <div class="systemLabel text-center">Source System</div>
                <select name="forSource" id="sourceSys" class="optionList">
                    <option value="SAA">SAA</option>
                    <option value="SMP">SMP</option>
                </select>
            </div>
            <div class="systemBlock col-sm-6">
                <div class="systemLabel text-center">Target System</div>
                <select name="forTarget" id="targetSys" class="optionList">
                    <option value="STH">STH</option>
                    <option value="SSR">SSR</option>
                    <option value="SMP">SMP</option>
                </select>
            </div>
        </div>

        <div class="actionBar row">
            <div class="center text-center">
                <div class="actionBtn text-center">Search</div>
                <div class="actionBtn text-center">Reset</div>
                <div class="actionBtn text-center">Clear</div>
            </div>
        </div>
        <div class="table text-center">
            <div class="header text-center">Inbound Recon Details</div>
            <div class="mainTable">
            <table>
                <tr>
                    <th>View</th>
                    <th>Status</th>
                    <th>SS</th>
                    <th>Source Sys count</th>
                    <th>Target System</th>
                    <th>tsc</th>
                    <th># of missing message</th>
                    <th># of Additional Messages</th>
                </tr>

                <%
                    VTS data = (VTS) request.getAttribute("data");
                    List<List<String>> list = data.getList();
                    System.out.println(list);
                %>
                <%
                    for (int j = 0; j < list.size(); j +=1) {
                        List<String> rowdata = list.get(j);
                %>
                <tr>
                    <% for (int i = 0; i < rowdata.size(); i += 1) {%>
                    <td><%=rowdata.get(i)%>
                    </td>
                    <% } %>

                </tr>
                <%}%>
            </table>
            </div>
        </div>
    </div>


</div>

</body>
</html>
