<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
    <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    Gruha Sarth
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <section>
                    <div class="modal-body">
                        <div class="loginf_module">
                            <div class="module form-module">
                                <div class="toggle">
                                    <i class="fa fa-times fa-pencil"></i>
                                    <div class="tooltip">Register</div>
                                </div>
                                
                                <div class="form">
                                    <h3>Login to your account</h3>
                                    
                                     <asp:Label ID="lbl_Message1" runat="server" Text=""></asp:Label> 
                                        <input type="text" name="Username" placeholder="Username"  id="Username1"  runat="server"/>
                                        <input type="password" name="Password" placeholder="Password" id="Password1"   runat="server"/>
                                        <input type="radio" name="Realm" id="vLog" value="vendor" runat="server" /> Vendor<br/>
                                        <input type="radio" name="Realm" id="cLog" value="customer" runat="server" /> Customer<br/>
                                       <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
                                    
                                  
                                </div>
                                <div class="form">
                                    <h3>Create a new account</h3>
                                        <asp:Label ID="lbl_Message" runat="server" Text=""></asp:Label>                              
                                        <input type="text" name="Username" placeholder="Username" id="Username"  runat="server"/>
                                        <input type="password" name="Password" placeholder="Password" id="Password"   runat="server"/>
                                        <input type="email" name="Email" placeholder="Email address" id="Email"   runat="server"/>
                                        <input type="text" name="Phone" placeholder="Phone Number" id="Phone" runat="server"/>
                                        <input type="radio" name="Realm" id="VRealm" value="vendor" runat="server" /> Vendor<br/>
                                        <input type="radio" name="Realm" id="CRealm" value="customer" runat="server" /> Customer<br/>
                                        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                                       
                                    
                                </div>

                            </div>
                        </div>
                    </div>
                </section>

            </div>
        </div>
        </div>
</asp:Content>

