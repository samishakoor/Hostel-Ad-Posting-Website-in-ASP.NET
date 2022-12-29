﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hostellist.aspx.cs" Inherits="Hostelistan.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
.divi {
    width: 28%;
    margin-left: auto;
    margin-right: auto;
    margin-top: 118px;
    background-color: white;
    border-radius: 2%;
}


.placeholder 
{
   margin-left: 12px;
   margin-top: 6px;
}
  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <nav>
        <div class="menu">
            <div class="logo">
                <a href="#">Hostelistan</a>
            </div>
            <ul>
                <li><a href="#">Home</a></li>
                 <li><a href="servicelist.aspx">Avail Services</a></li>
                <li><a href="login.aspx">Logout</a></li>
                <li><a href="contactus.aspx">Contact Us</a></li>
            </ul>
        </div>

    </nav>
    
        <div class="divi">      
                  <h1 style=" border-left-width: 0px;margin-left: 60px;margin-top: 0px">Find A Hostel</h1>		 
       
            <br />
           

     <form id="form1" runat="server">



         <table align="center">
             

               <br />
             <br />

             <tr>
                 <td>
                     
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:hostelistanConnectionString %>" SelectCommand="SELECT [Hostel_Id], [Name], [Type], [Location], [city], [No_of_Rooms], [cost] FROM [Hostel]"></asp:SqlDataSource>
                     
                     <asp:GridView class="table table-striped table-bordered" ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Hostel_Id" DataSourceID="SqlDataSource2">
                           <Columns>
                              <asp:BoundField DataField="Hostel_Id" HeaderText="ID" ReadOnly="True" SortExpression="Hostel_Id" >
                                 <ControlStyle Font-Bold="True" />
                                 <ItemStyle Font-Bold="True" />
                              </asp:BoundField>
                              <asp:TemplateField>
                                 <ItemTemplate>
                                    <div class="container-fluid">
                                       <div class="row">
                                          <div class="col-lg-10">
                                             <div class="row">
                                                <div class="col-12">
                                                   <asp:Label ID="Label1"  runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   <span>Service Type - </span>
                                                   <asp:Label ID="Label2"  runat="server" Font-Bold="True" Text='<%# Eval("Type") %>'></asp:Label>
                                                   &nbsp;| <span><span>&nbsp;</span>Location - </span>
                                                   <asp:Label ID="Label3"  runat="server" Font-Bold="True" Text='<%# Eval("Location") %>'></asp:Label>
                                                   &nbsp;| 
                                                   <span>
                                                      City -<span>&nbsp;</span>
                                                      <asp:Label ID="Label4"  runat="server" Font-Bold="True" Text='<%# Eval("city") %>'></asp:Label>
                                                   </span>
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                      Capacity -
                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("No_of_Rooms") %>'></asp:Label>
                                                  
                                                   
                                                   
                                                </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                     Rent Per Month ( in PKR ) -
                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("cost") %>'></asp:Label>
                                                  
                                                </div>
                                             </div>
                                              <div class="row">
                                                <div class="col-12">

                                               </div>
                                             </div>
                                             <div class="row">
                                                <div class="col-12">
                                                   
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-lg-2">
                                             
                                          </div>
                                       </div>
                                    </div>
                                 </ItemTemplate>
                              </asp:TemplateField>
                           </Columns>
                        </asp:GridView>

                 </td>
             </tr>



         </table>





     </form>
 </div>



</asp:Content>
