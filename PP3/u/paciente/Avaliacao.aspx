﻿<%@ Page Title="" Language="C#" MasterPageFile="~/u/paciente/Paciente.Master" AutoEventWireup="true" CodeBehind="Avaliacao.aspx.cs" Inherits="PP3.u.paciente.Avaliacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" href="../../css/bars-movie.css">
    <link rel="stylesheet" href="../../css/normalize.min.css">
    <link rel="stylesheet" href="../../css/main.css">
    <link rel="stylesheet" href="../../css/examples.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
      
    <asp:Panel ID="Panel1" runat="server" Visible="False">
<div class="col">
            <div class="box box-blue box-example-movie">
              <div class="box-header">Avalie a sua consulta com <asp:Label ID="lbl_medico" runat="server" Text="Label"></asp:Label></div>
              <div class="box-body">
                  
                <div class="br-wrapper br-theme-bars-movie">
                    
                    <asp:DropDownList ID="example_movie" runat="server" name="rating" Style="display: none;" AutoPostBack="false">
                        <asp:ListItem Value="Ruim">Ruim</asp:ListItem>
                        <asp:ListItem Value="Mediocre">Medíocre</asp:ListItem>
                        <asp:ListItem Value="Boa" Selected="true">Boa</asp:ListItem>
                        <asp:ListItem Value="Excelente">Excelente</asp:ListItem>
                    </asp:DropDownList>

                   <div class="br-widget">
                       <a href="#" data-rating-value="Ruim" data-rating-text="Ruim" class="br-selected"></a>
                       <a href="#" data-rating-value="Mediocre" data-rating-text="Medíocre" class="br-selected br-current"></a>
                       <a href="#" data-rating-value="Boa" data-rating-text="Boa"></a>
                       <a href="#" data-rating-value="Excelente" data-rating-text="Excelente" class=""></a>
                      <div class="br-current-rating"></div></div>   
                     <br/>
                  <br/>         
                    </div>
                  <br/>
                  <br/>
                  <center>
                    <asp:Button ID="btn_Avaliar" CssClass ="btn btn-secondary" runat="server" Text="Avaliar" OnClick="btn_Avaliar_Click" />
                  </center>
              </div>
                
                
            </div>
          </div>
        </asp:Panel>
         <br/></ContentTemplate>
      </asp:UpdatePanel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
         <div class="box box-blue box-example-movie">
            <div class="box-header">Não há consultas a serem avaliadas!</div>
              <div class="box-body">
                  
              </div>
         </div>

    </asp:Panel>
    <br/> 
    <br/> 
    <br/> 
    <br/> 
    <br/> 
    <br/> 
    <br/> 
    
    <script src="../../js/jquery.min.js"></script>
<script src="../../js/jquery.barrating.min.js"></script>
    <script>
        function ratingEnable() {
            $('#<%= example_movie.ClientID %>').barrating({
                theme: 'bars-movie'
            });
        }

        function ratingDisable() {
            $('select').barrating('destroy');
        }

        $('.rating-enable').click(function (event) {
            event.preventDefault();

            ratingEnable();

            $(this).addClass('deactivated');
            $('.rating-disable').removeClass('deactivated');
        });

        $('.rating-disable').click(function (event) {
            event.preventDefault();

            ratingDisable();

            $(this).addClass('deactivated');
            $('.rating-enable').removeClass('deactivated');
        });

        ratingEnable();
    </script>

</asp:Content>
