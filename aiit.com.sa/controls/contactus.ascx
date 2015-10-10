<%@ Control Language="C#" AutoEventWireup="true" CodeFile="contactus.ascx.cs" Inherits="contactus" %>
 <!-- Start Section Contact Us -->
    <div id="contact-us" class="contact-us text-center" style="padding-top:0;">
        <div class="fields">
            <div class="container">
                <i class="fa fa-headphones fa-5x"></i>
                <h2 class="h1">Tell Us What You Feel</h2>
                <p class="lead">Feel Free To Contact Us Anytime</p>
                <form role="form" runat="server">
                    <div class="row">
                        <div class="col-md-6 wow bounceInLeft" data-wow-duration="2s" data-wow-offset="200">
                            <div class="form-group">
                                <input type="text" id="txtFullName" runat="server" class="form-control input-lg" placeholder="Full Name" required="required" />
                            </div>
                            <div class="form-group">
                                <input type="text" id="txtEmail" runat="server" class="form-control input-lg" placeholder="Email Address" required="required" />
                            </div>
                            <div class="form-group">
                                <input type="text" id="txtPhone" runat="server" class="form-control input-lg" placeholder="Phone Number" required="required" />
                            </div>
                        </div>
                        <div class="col-md-6  wow bounceInRight" data-wow-duration="2s" data-wow-offset="200" >
                            <div class="form-group">
                                <textarea id="txtMessage" runat="server" class="form-control input-lg" placeholder="Your Message" required="required"></textarea>
                            </div>
                            <asp:Button ID="btnsend" runat="server" CssClass="btn btn-primary btn-block btn-lg" Text="Contact Us" OnClick="btnSend_Click" />
                        </div>
                    </div>


                </form>
            </div>
        </div>
    </div>
    <!-- End Section Contact Us -->