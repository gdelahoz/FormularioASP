<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FormularioASP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario en clase</title>
<!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
  rel="stylesheet"
/>
</head>
<body class="bg-light">
    <section class="d-flex justify-content-center align-items-center my-5">
        <div class="card col-12 col-md-6">
            <div class="card-header p-4">
                <asp:Label ID="lblHeader" runat="server" Text="Formulario de registro" CssClass="h3"></asp:Label>
            </div>
            <div class="card-body p-4">
                <form id="form1" runat="server">
                    <h5 class="mb-3">Cuenta</h5>
                    <div class="row">
                        <div class="col">
                            <!-- Usuario -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Usuario</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
                            </p>
                            
                            <!-- Contraseña  -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" MaxLength="12" TextMode="Password"></asp:TextBox>
                                <asp:Label ID="Label4" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Contraseña</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCPassword" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtCPassword" ControlToValidate="txtPassword" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
                            </p>
                        </div>
                        <div class="col">
                            <!-- Correo  -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Correo electronico</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                            
                            <!-- Rep. Contraseña -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtCPassword" runat="server" CssClass="form-control" MaxLength="12" TextMode="Password"></asp:TextBox>
                                <asp:Label ID="Label5" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Repetir contraseña</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCPassword" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                    <h5 class="mb-3">Personal</h5>
                    <div class="row">
                        <div class="col">
                            <!-- Nombre -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Nombre</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtName" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="[A-Za-z ]*"></asp:RegularExpressionValidator>
                            </p>

                            <!-- Pais de origen -->
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="bg-white form-select p-1">
                                <asp:listitem text="País de origen" value="default"></asp:listitem>
                                <asp:listitem text="Colombia" value="Colombia"></asp:listitem>
                                <asp:listitem text="Venezuela" value="Venezuela"></asp:listitem>
                                <asp:listitem text="Argentina" value="Argentina"></asp:listitem>
                                <asp:listitem text="Ecuador" value="Ecuador"></asp:listitem>
                                <asp:listitem text="Bolivia" value="Bolivia"></asp:listitem>
                            </asp:DropDownList>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Campo obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>

                            <!-- Codigo postal -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtZIP" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                <asp:Label ID="Label8" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Codigo postal</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtZIP" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtZIP" ErrorMessage="Debe ser múltiplo de 5" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">Debe ser multiplo de 5</asp:CustomValidator>
                            </p>

                            <!-- Sexo -->
                            <asp:Label ID="Label10" runat="server" Text="Sexo: " CssClass="h6"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="mb-4">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                    <asp:ListItem> Hombre</asp:ListItem>
                                    <asp:ListItem> Mujer</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                            <!-- Comentarios -->
                            <div class="form-outline">
                                <asp:TextBox id="txtComments" runat="server" TextMode="MultiLine" CssClass="form-control" maxlength="1200" Rows="3" Columns="30" wrap="true"  />
                                <asp:Label ID="Label9" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Comentarios</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtComments" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>

                            <!-- Terminos y condiciones -->
                            <div class="mb-4">
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                <asp:Label ID="Label11" runat="server" Text="Acepto terminos y condiciones." CssClass="h6"></asp:Label>
                                <asp:Label ID="Label14" runat="server" CssClass="alert-danger"></asp:Label>
                            </div>

                            <asp:Button ID="btnForm" runat="server" Text="Aceptar" CssClass="btn btn-primary" OnClick="btnSubmit"/>
                        </div>
                        <div class="col">
                            <!-- Apellidos -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="Label6" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Apellidos</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLastName" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="[A-Za-z ]*"></asp:RegularExpressionValidator>
                            </p>

                            <!-- Provincia -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtProv" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:Label ID="Label7" runat="server" Text="Label" CssClass="form-label px-1" style="z-index: 3;background: white;padding-top: 0px;margin-top: 5px;">Provincia</asp:Label>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtProv" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtProv" ErrorMessage="Solo se permiten letras." ForeColor="Red" ValidationExpression="[A-Za-z ]*"></asp:RegularExpressionValidator>
                            </p>

                            <!-- Fecha -->
                            <div class="form-outline">
                                <asp:TextBox ID="txtDate" runat="server" CssClass="bg-light form-control" TextMode="Date"></asp:TextBox>
                            </div>
                            <p style="font-size: 12px;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtDate" ErrorMessage="Campo requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            </p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"
    ></script>
    <script>
        document.querySelectorAll('.form-outline').forEach((formOutline) => {
            new mdb.Input(formOutline).init();
        });

        document.querySelectorAll('.form-outline').forEach((formOutline) => {
            new mdb.Input(formOutline).update();
        });
    </script>
</body>
</html>
