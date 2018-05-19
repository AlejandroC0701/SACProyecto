<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoIS2018_2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>SISTEMA DE FACTURACIÓN SAC</h1>
        <p class="lead">Panel de Control de Facturas por Proyecto<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View0" runat="server">
                <h3>Lista de Proyectos</h3>
                <p>
                    <asp:DropDownList ID="boton_proyectos" runat="server" BackColor="Black" ForeColor="White" Width="141px">
                        <asp:ListItem>Ejemplo1</asp:ListItem>
                        <asp:ListItem>Ejemplo2</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p>
                    <asp:Button ID="Aceptar" runat="server" OnClick="Button1_Click" Text="Aceptar" />
                </p>
            </asp:View>
            <asp:View ID="View1" runat="server">
                <asp:ListView ID="Proyecto1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Numero_Factura" OnSelectedIndexChanged="Proyecto1_SelectedIndexChanged">
                    <AlternatingItemTemplate>
                        <tr style="background-color:#FAFAD2; color: #284775;">
                            <td>
                                <asp:Label ID="Numero_FacturaLabel" runat="server" Text='<%# Eval("Numero_Factura") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PorcentajeLabel" runat="server" Text='<%# Eval("Porcentaje") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NumeroCuotaLabel" runat="server" Text='<%# Eval("NumeroCuota") %>' />
                            </td>
                            <td>
                                <asp:Label ID="VerFacturaLabel" runat="server" Text='<%# Eval("VerFactura") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color:#FFCC66; color: #000080;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                            </td>
                            <td>
                                <asp:Label ID="Numero_FacturaLabel1" runat="server" Text='<%# Eval("Numero_Factura") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PorcentajeTextBox" runat="server" Text='<%# Bind("Porcentaje") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="MontoTextBox" runat="server" Text='<%# Bind("Monto") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NumeroCuotaTextBox" runat="server" Text='<%# Bind("NumeroCuota") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="VerFacturaTextBox" runat="server" Text='<%# Bind("VerFactura") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                            <tr>
                                <td>No se han devuelto datos.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                            </td>
                            <td>
                                <asp:TextBox ID="Numero_FacturaTextBox" runat="server" Text='<%# Bind("Numero_Factura") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="PorcentajeTextBox" runat="server" Text='<%# Bind("Porcentaje") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="MontoTextBox" runat="server" Text='<%# Bind("Monto") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NumeroCuotaTextBox" runat="server" Text='<%# Bind("NumeroCuota") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="VerFacturaTextBox" runat="server" Text='<%# Bind("VerFactura") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color:#FFFBD6; color: #333333;">
                            <td>
                                <asp:Label ID="Numero_FacturaLabel" runat="server" Text='<%# Eval("Numero_Factura") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PorcentajeLabel" runat="server" Text='<%# Eval("Porcentaje") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NumeroCuotaLabel" runat="server" Text='<%# Eval("NumeroCuota") %>' />
                            </td>
                            <td>
                                <asp:Label ID="VerFacturaLabel" runat="server" Text='<%# Eval("VerFactura") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color:#FFFBD6; color: #333333;">
                                            <th runat="server">Numero_Factura</th>
                                            <th runat="server">Porcentaje</th>
                                            <th runat="server">Monto</th>
                                            <th runat="server">Fecha</th>
                                            <th runat="server">NumeroCuota</th>
                                            <th runat="server">VerFactura</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color:#FFCC66; font-weight: bold;color: #000080;">
                            <td>
                                <asp:Label ID="Numero_FacturaLabel" runat="server" Text='<%# Eval("Numero_Factura") %>' />
                            </td>
                            <td>
                                <asp:Label ID="PorcentajeLabel" runat="server" Text='<%# Eval("Porcentaje") %>' />
                            </td>
                            <td>
                                <asp:Label ID="MontoLabel" runat="server" Text='<%# Eval("Monto") %>' />
                            </td>
                            <td>
                                <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NumeroCuotaLabel" runat="server" Text='<%# Eval("NumeroCuota") %>' />
                            </td>
                            <td>
                                <asp:Label ID="VerFacturaLabel" runat="server" Text='<%# Eval("VerFactura") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Numero_Factura], [Porcentaje], [Monto], [Fecha], [NumeroCuota], [VerFactura] FROM [Proyectos]"></asp:SqlDataSource>
            </asp:View>
            </asp:MultiView>
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
    </div>

</asp:Content>
