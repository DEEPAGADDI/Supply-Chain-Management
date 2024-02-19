<%@ include file="confile.jsp"%>

<% 
    int scost = (Integer)session.getAttribute("sellcost");
    System.out.println(scost);
    
    String distname = request.getParameter("userselect");
    System.out.println(distname);
    String uprodid = request.getParameter("userbuyprodid");
    System.out.println(uprodid);
    String userqty = request.getParameter("userbuyprodqty");
    System.out.println(userqty);
    
    if(uprodid!=null && userqty!=null){
        rst = stmt.executeQuery("select * from buystock where prodid='"+uprodid+"' and dname='"+distname+"' and approve='A' ");
        if(rst.next()){
 
            int userqtynum = Integer.parseInt(userqty); 
            
            String dbprodqty = rst.getString("quantity");
            int qtynum = Integer.parseInt(dbprodqty); 
            
            if(qtynum>=userqtynum){
                
                String productbuyid=rst.getString("prodid");
                session.setAttribute("setpid",productbuyid);
                
                String productbuyname = rst.getString("prodname");
                String disid = rst.getString("did");
                String disname = rst.getString("dname");
                
                String pid = (String)session.getAttribute("pid");
                String pname = (String)session.getAttribute("pname");
                String pemail = (String)session.getAttribute("pemail");
                String phone = (String)session.getAttribute("purphone");
                
                System.out.println(scost);
                System.out.println(userqtynum);
                int totalprice = userqtynum*scost;
                System.out.println(totalprice);
                session.setAttribute("totamnt",totalprice);
                
                int remqty = qtynum-userqtynum;
                session.setAttribute("totqty",remqty);
                
                %><script>
                    alert("Stock Buy Successful!");   
                </script><%
                
                stmt.executeUpdate("insert into userpurchaseddet values('"+productbuyid+"','"+productbuyname+"','"+scost+"','"+userqtynum+"','"+disid+"','"+disname+"','"+pid+"','"+pname+"','"+pemail+"','"+phone+"','N' )");
                response.sendRedirect("userpayment.jsp "); 
            }
            else{
                %><script>
                        alert("Distributor has no stocks left");   
                </script><%
            }
            
        }
        else{
            %><script>
                    alert("Wrong Input");   
            </script><%
        }
    }
    
%>
