<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <div class="art-nav">
                                <div class="l"></div>
								<div class="r"></div>
								<ul class="art-menu">
									<li><a href="./Default.aspx" class="active">
									<span class="l"> </span><span class="r"> </span>
									<span class="t">Home</span></a>
									</li>
									<li><a href="./register.aspx"><span class="l">
									</span><span class="r"> </span><span class="t">Regisetr</span>
									</a></li>
									<li><a href="./login.aspx"><span class="l">
									</span><span class="r"> </span><span class="t">login</span>
									</a></li>
										<li><a href="./shopping_cart.aspx" ><span class="l">
									</span><span class="r"> </span><span class="t">Shopping cart</span>
                                    </a></li>
								</ul>
							</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
              <script type="text/javascript">
     var imagecount = 1;
     var total = 5;

     function slide(x) {
         var Image = document.getElementById('img');
         imagecount = imagecount + x;
         if (imagecount > total)
         { imagecount = 1; }
         if (imagecount < 1)
         { imagecount = total; }
         Image.src = "images2/img" + imagecount + ".jpg";
     }

     window.setInterval(function slidea() {
         var Image = document.getElementById('img');
         imagecount = imagecount + 1;
         if (imagecount > total)
         { imagecount = 1; }
         if (imagecount < 1)
         { imagecount = total; }
         Image.src = "images2/img" + imagecount + ".jpg";
     }, 5000

                  );
                  </script>      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
                    ForeColor="#006600"></asp:Label>
                &nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" 
        Font-Bold="True" Font-Size="Larger" ForeColor="#003300" 
        onclick="LinkButton2_Click" Visible="False">(log-out)</asp:LinkButton>

          	<div class="art-postcontent">
         
			 <div id="slider">
              <img src="images2/img1.jpg" width="520px" height="250px" id="img">
		
		
                 <div id="left_holder"  class="left"> <img src="images2/arrow_right.png" onclick="slide(1)"> </div>
		 <div id="right_holder" class="right"><img src="images2/arrow_left.png" onclick="slide(-1)"></div>
		 </div>
         </div>
</asp:Content>

