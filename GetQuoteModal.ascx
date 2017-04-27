<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GetQuoteModal.ascx.cs" Inherits="MHGWeb.vs2015.Portals._default.Skins.MHGWeb.GetQuoteModal" %>

<div class="modal fade get-quote-modal" id="getAquote" tabindex="-1" role="dialog" aria-labelledby="getAquoteLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content bg-morning-blue">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">
                        <i class="icon close">
                            <svg viewBox="0 0 21 21">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/portals/_default/Skins/MHGWeb/Images/icons.svg?#iconClose"></use>
                            </svg>
                        </i>
                    </span>
                </button>
                <div class="col-xs-12 col-sm-6">
                    <h4 class="modal-title color-black-haze" id="getAquoteLabel">Talk To A Broker!</h4>
                    <p class="color-black-haze">
                        Call <span class="color-smalt-blue"><b>+1 954 828 1819</b></span> or <span class="color-smalt-blue"><b>+44 (0) 1624 678668</b></span>
                        to speak with a broker about your specific insurance needs or fill out this form and we will get back to you within one business day.
                    </p>
                    <asp:ListBox ID="ListBox1" Visible="false" runat="server" />
                </div>
                <div class="col-xs-12 col-sm-6">
                    <h4 class="text-center"><a class="underlined color-black-haze" href="/GetQuote">Want a Quote Online?<br />
                        Click Here...</a></h4>
                </div>

            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group">
                            <asp:TextBox ID="FirstName" placeholder="First Name" runat="server" />
                            <span class="alert-message color-pomegranate hidden">First name is required</span>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group">
                            <asp:TextBox ID="LastName" placeholder="Last Name" runat="server" />
                            <span class="alert-message color-pomegranate hidden">Last name is required</span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <select class="selectpicker">
                        <option>How would you like to be contacted</option>
                        <option>Phone</option>
                        <option>Email</option>
                        <option>Either</option>
                    </select>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="BestTimeToContact" placeholder="Best Time to Contact You (Timezone)" runat="server" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="Email" placeholder="Email Address" type="email" runat="server" />
                    <span class="alert-message color-pomegranate hidden">Email is required</span>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="Phone" placeholder="Phone Number" runat="server" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="Company" placeholder="Company or Vessel Name" runat="server" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="Comments" TextMode="MultiLine" placeholder="How can we help you?" runat="server" />
                </div>

                <div class=" forrm-group submit-btn text-center">
                    <asp:Button ID="Submit" CssClass="btn btn-primary btn-md submit-btn" OnClick="Submit_Click" Text="Submit" runat="server" />
                </div>

            </div>
            <div class="modal-footer">
                <h5 class="text-center"><a class="underlined color-black-haze" href="/GetQuote">Want a Quote Online?<br />
                    Click Here...</a></h5>
            </div>
        </div>
    </div>
</div>
<!-- /.modal -->
