<%@ page import="com.dongtech.vo.CarOrders" %>
<%@ page import="java.util.List" %>
<%@ page import="com.dongtech.vo.CarOrderDetails" %>
<%@ page import="com.dongtech.vo.TearDownDetails" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/list.css">
    <title>维护图书</title>
</head>
<body>
<div class="w">
    <div class="list">
        <div class="list-bd">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                    <th width="18%">名称</th>
                    <th width="5%">编号</th>
                    <th width="5%">生产地</th>
                    <th width="5%">数量</th>
                </tr>

                <%
                    List<TearDownDetails> tearDownDetailsList = (List<TearDownDetails>) request.getAttribute("list");
                    if (tearDownDetailsList != null) {
                        for (TearDownDetails tearDownDetails : tearDownDetailsList) {
                            out.write("<tr>");
                            out.write("<td>" + tearDownDetails.getCargoods_name() + "</td>");
                            out.write("<td>" + tearDownDetails.getOrderId() + "</td>");
                            out.write("<td>" + tearDownDetails.getProduce() + "</td>");
                            out.write("<td>" + tearDownDetails.getNum() + "</td>");
                            out.write("</tr>");
                        }
                    }
                %>

            </table>
        </div>
    </div>
</div>
</body>
</html>