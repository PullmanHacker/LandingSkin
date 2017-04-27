using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ServiceModel.Description;
using Microsoft.Xrm.Sdk.Client;
using Microsoft.Xrm.Sdk;
using CRM.Repository.Entities.Context;
using CRM.Repository;

namespace MHGWeb.vs2015.Portals._default.Skins.MHGWeb
{
    public partial class GetQuoteModal : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid || Page.IsPostBack)
            {
                if (FirstName.Text != LastName.Text)
                {
                    try
                    {
                        CRM.Repository.LeadRepository leadRepository = new CRM.Repository.LeadRepository();

                        //ClientCredentials credentials = new ClientCredentials();
                        //credentials.UserName.UserName = "web@mhgmarine.net";
                        //credentials.UserName.Password = "InternetAccess2MHG812";
                        //OrganizationServiceProxy _serviceProxy = new OrganizationServiceProxy(new Uri("https://mhgmarinebenefits.mhgmarine.net:444/XrmServices/2011/Organization.svc"), null, credentials, null);
                        //_serviceProxy.ServiceConfiguration.CurrentServiceEndpoint.EndpointBehaviors.Add(new ProxyTypesBehavior());

                        //OrganizationServiceContext orgContext = new OrganizationServiceContext(_serviceProxy);
                        ListBox1.Visible = true;
                        string longdescription = "Best Time To Contact & Timezone: " + BestTimeToContact.Text + Environment.NewLine;

                        longdescription = longdescription + Comments.Text;
                        object k = new object()
                        {
                            FirstName = FirstName.Text,
                            LastName = LastName.Text,
                        };
                        Lead lead = new Lead()
                        {
                            FirstName = FirstName.Text,
                            LastName = LastName.Text,
                            CompanyName = Company.Text,
                            Telephone1 = Phone.Text,
                            LeadSourceCode = new OptionSetValue(8),
                            EMailAddress1 = Email.Text,
                            Description = longdescription,
                            CampaignId = new EntityReference("campaign", new Guid("D26946E5-282B-DC11-A1B2-00137267B7A3")), // assign to web site campaign
                            OwnerId = new EntityReference("systemuser", new Guid("8B131336-2489-DB11-AAAC-00137267B7A3")),  // assign to Sheree

                            Subject = "Information Request from MHGInsurance Contact us, " + LastName.Text + ", " + FirstName.Text
                        };
                        leadRepository.Create(lead);
                        //orgContext.AddObject(lead);
                        //orgContext.SaveChanges();
                        // get rid of submit
                        Submit.Visible = false;
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "analyticspostback", "ga('send', 'pageview', '/Contact-ThankYou.aspx');", true);
                        //ScriptManager.RegisterStartupScript(this, this.GetType(), "analyticspostback", "pageTracker._trackPageview('/vpv/contact-us/');", true);
                        //ListBox1.Items.Add("Thank you");
                        //ListBox1.Items.Add("We will contact you shortly");

                        Response.Redirect("/ThankYou", true);
                    }
                    catch (System.Web.Services.Protocols.SoapException soapEx)
                    {
                        ListBox1.Items.Add("An Error Has Occurred, Please try again later");
                        ListBox1.Items.Add("XML Exception: " + soapEx.Detail.InnerText + " " + soapEx.Message.ToString());
                    }
                    catch (Exception ex)
                    {
                        ListBox1.Items.Add("An Error Has Occurred, Please try again later");
                        ListBox1.Items.Add("Exception: " + ex.ToString());
                    }
                }
            }
        }

        //protected void HowToContact_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //    if (HowToContact.Text == "Contact By Phone")
        //    {
        //        ValidatePhone.Enabled = true;
        //        ValidateContactTime.Enabled = true;
        //        Phone.Focus();

        //    }
        //    if (HowToContact.Text == "Contact By Email")
        //    {
        //        ValidatePhone.Enabled = false;
        //        ValidateContactTime.Enabled = false;
        //        Email.Focus();
        //    }
        //}
    }
}