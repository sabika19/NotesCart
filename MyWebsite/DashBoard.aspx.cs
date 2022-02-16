using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Data;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.pdf;
using System.Runtime.InteropServices;

using Aspose.Pdf.Devices;
namespace MyWebsite
{
    public partial class DashBoard : System.Web.UI.Page
    {
        



        private static void ExtractPages(string inputFile, string outputFile, int start, int end)
        {
            // get input document
            PdfReader inputPdf = new PdfReader(inputFile);


            // retrieve the total number of pages
            int pageCount = inputPdf.NumberOfPages;


            if (end < start || end > pageCount)
            {
                end = pageCount;
            }


            // load the input document
            Document inputDoc =
                new Document(inputPdf.GetPageSizeWithRotation(1));


            // create the filestream
            using (FileStream fs = new FileStream(outputFile, FileMode.Create))
            {
                // create the output writer
                PdfWriter outputWriter = PdfWriter.GetInstance(inputDoc, fs);
                inputDoc.Open();
                PdfContentByte cb1 = outputWriter.DirectContent;


                // copy pages from input to output document
                for (int i = start; i <= end; i++)
                {
                    inputDoc.SetPageSize(inputPdf.GetPageSizeWithRotation(i));
                    inputDoc.NewPage();


                    PdfImportedPage page =
                        outputWriter.GetImportedPage(inputPdf, i);
                    int rotation = inputPdf.GetPageRotation(i);


                    if (rotation == 90 || rotation == 270)
                    {
                        cb1.AddTemplate(page, 0, -1f, 1f, 0, 0,
                            inputPdf.GetPageSizeWithRotation(i).Height);
                    }
                    else
                    {
                        cb1.AddTemplate(page, 1f, 0, 0, 1f, 0, 0);
                    }
                }

                  
                inputDoc.Close();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {
                Response.Redirect("landing.aspx", false);
                return;
            }
            if (!IsPostBack)
            {
                lblname.Text = Session["name"].ToString();
                lblname1.Text = Session["name"].ToString();
                lblname2.Text = Session["name"].ToString();
                lblMsg.Visible = false;
                lblMsg1.Visible = false;
                previewpdf.Visible = false;
                //SEARCH DROPDOWNS--
                ddlcanotes.Visible = false;
                ddlenggentr.Visible = false;
                ddllawentr.Visible = false;
                ddllawnotes.Visible = false;
                ddlmedentr.Visible = false;
                ddlmednotes.Visible = false;
                ddlothers.Visible = false;
                ddlstrengg.Visible = false;
                ddlsubject.Visible = false;
                //UPLOAD DROP DOWNS--
                ddlupsubject.Visible = false;
                ddlupcanotes.Visible = false;
                ddlupenggentr.Visible = false;
                ddluplawentr.Visible = false;
                ddluplawnotes.Visible = false;
                ddlupmedentr.Visible = false;
                ddlupmednotes.Visible = false;
                ddlupothers.Visible = false;
                ddlupstrengg.Visible = false;
            }
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());

                con.Open();
                string notessold = "0";
                string notesuploaded = "0";
                string notesbought = "0";
                string cart = "0";
                SqlCommand cmd1 = new SqlCommand(@"select count(*) from tbl_seller where username='" + Session["username"].ToString() + "'", con);
                int x = (int)cmd1.ExecuteScalar();
                notesuploaded = x.ToString();
                if (x != 0)
                {
                    SqlCommand cmd2 = new SqlCommand(@"select count(*) from tbl_seller where username='" + Session["username"].ToString() + "' and sold is not null", con);
                    int y = (int)cmd2.ExecuteScalar();
                    notessold = y.ToString();

                }

                SqlCommand cmd3 = new SqlCommand(@"select count(*) from tbl_buyer where buyer_username='" + Session["username"].ToString() + "'", con);
                int z = (int)cmd3.ExecuteScalar();
                notesbought = z.ToString();

                SqlCommand cmd4 = new SqlCommand(@"select count(*) from tbl_cart where cart_username='" + Session["username"].ToString() + "'", con);
                int z1 = (int)cmd4.ExecuteScalar();
                cart = z1.ToString();
                Session["cart"] = cart.ToString();
                lblnotesup.Text = notesuploaded;
                lblnotessold.Text = notessold;
                lblnotesbought.Text = notesbought;
                lblnotescart.Text = cart;
                con.Close();
                con.Open();
                SqlCommand cmd = new SqlCommand(@"select title,author,price,up_date,fpath,ppath,ipath from tbl_seller where username='" + Session["username"].ToString() + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            

        }
        

        protected void ddlgrade_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlgrade.SelectedIndex == 1)
            {
                ddlsubject.Visible = true;
                ddlcanotes.Visible = false;
                ddlenggentr.Visible = false;
                ddllawentr.Visible = false;
                ddllawnotes.Visible = false;
                ddlmedentr.Visible = false;
                ddlmednotes.Visible = false;
                ddlothers.Visible = false;
                ddlstrengg.Visible = false;
               
            }
            else if (ddlgrade.SelectedIndex == 2)
            {
                ddlenggentr.Visible = true;
                ddllawentr.Visible = false;
                ddllawnotes.Visible = false;
                ddlmedentr.Visible = false;
                ddlmednotes.Visible = false;
                ddlothers.Visible = false;
                ddlstrengg.Visible = false;
                ddlsubject.Visible = false;
                ddlcanotes.Visible = false;
            }
            else if (ddlgrade.SelectedIndex == 3)
            {
                ddlmedentr.Visible = true;
                ddlenggentr.Visible = false;
                ddllawentr.Visible = false;
                ddllawnotes.Visible = false;
                ddlmednotes.Visible = false;
                ddlothers.Visible = false;
                ddlstrengg.Visible = false;
                ddlsubject.Visible = false;
                ddlcanotes.Visible = false;
            }
            else if (ddlgrade.SelectedIndex == 4)
            {
                ddllawentr.Visible = true;
                ddlmedentr.Visible = false;
                ddlenggentr.Visible = false;
                ddllawnotes.Visible = false;
                ddlmednotes.Visible = false;
                ddlothers.Visible = false;
                ddlstrengg.Visible = false;
                ddlsubject.Visible = false;
                ddlcanotes.Visible = false;
            }
            else if (ddlgrade.SelectedIndex == 5)
            {
                ddlstrengg.Visible = true;
                ddllawentr.Visible = false;
                ddlmedentr.Visible = false;
                ddlenggentr.Visible = false;
                ddllawnotes.Visible = false;
                ddlmednotes.Visible = false;
                ddlothers.Visible = false;
                ddlsubject.Visible = false;
                ddlcanotes.Visible = false;
            }
            else if (ddlgrade.SelectedIndex == 6)
            {
                ddlmednotes.Visible = true;
                ddlstrengg.Visible = false;
                ddllawentr.Visible = false;
                ddlmedentr.Visible = false;
                ddlenggentr.Visible = false;
                ddllawnotes.Visible = false;
                ddlothers.Visible = false;
                ddlsubject.Visible = false;
                ddlcanotes.Visible = false;
            }
            else if (ddlgrade.SelectedIndex == 7)
            {
                ddllawnotes.Visible = true;
                ddlmednotes.Visible = false;
                ddlstrengg.Visible = false;
                ddllawentr.Visible = false;
                ddlmedentr.Visible = false;
                ddlenggentr.Visible = false;
                ddlothers.Visible = false;
                ddlsubject.Visible = false;
                ddlcanotes.Visible = false;
            }
            else if (ddlgrade.SelectedIndex == 8)
            {
                ddlcanotes.Visible = true;
                ddllawnotes.Visible = false;
                ddlmednotes.Visible = false;
                ddlstrengg.Visible = false;
                ddllawentr.Visible = false;
                ddlmedentr.Visible = false;
                ddlenggentr.Visible = false;
                ddlothers.Visible = false;
                ddlsubject.Visible = false;
            }
            else if (ddlgrade.SelectedIndex == 9)
            {
                ddlothers.Visible = true;
                ddlcanotes.Visible = false;
                ddllawnotes.Visible = false;
                ddlmednotes.Visible = false;
                ddlstrengg.Visible = false;
                ddllawentr.Visible = false;
                ddlmedentr.Visible = false;
                ddlenggentr.Visible = false;
                ddlsubject.Visible = false;
            }
        }
        protected string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string ip = GetIPAddress();
            string sub_tag = null;
            if (ddlupsubject.Visible == true)
                sub_tag = ddlupsubject.SelectedItem.ToString();
            else if (ddluplawentr.Visible == true)
                sub_tag = ddluplawentr.SelectedItem.ToString();
            else if (ddluplawnotes.Visible == true)
                sub_tag = ddluplawnotes.SelectedItem.ToString();
            else if (ddlupmedentr.Visible == true)
                sub_tag = ddlupmedentr.SelectedItem.ToString();
            else if (ddlupmednotes.Visible == true)
                sub_tag = ddlupmednotes.SelectedItem.ToString();
            else if (ddlupenggentr.Visible == true)
                sub_tag = ddlupenggentr.SelectedItem.ToString();
            else if (ddlupstrengg.Visible == true)
                sub_tag = ddlupstrengg.SelectedItem.ToString();
            else if (ddlupcanotes.Visible == true)
                sub_tag = ddlupcanotes.SelectedItem.ToString();
            else if (ddlupothers.Visible == true)
                sub_tag = ddlupothers.SelectedItem.ToString();
          
            
            if (flupnotes.PostedFile.ContentLength > 1000000)
            {
                lblMsg1.Text = "PLEASE UPLOAD FILES OF LESS THAN 10 MB.";
                lblMsg1.Visible = true;
                return;
            }
            string fileExt = System.IO.Path.GetExtension(flupnotes.FileName);
            if(fileExt!=".pdf" && fileExt!=".PDF")
            {
                lblMsg1.Text = "PLEASE UPLOAD PDF ONLY.";
                lblMsg1.Visible = true;
                return;
            }

            int slno = 0;
            int maxslnonew = 0;
            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            con1.Open();

            SqlCommand cmd11 = new SqlCommand(@"select count(NOTE_ID) from tbl_seller", con1);
            int total = (int)cmd11.ExecuteScalar();
            if (total == 0)
            {
                maxslnonew = 0;
            }
            else
            {
                SqlCommand cmd1 = new SqlCommand(@"select max(slno) from tbl_seller", con1);
                int maxid = (int)cmd1.ExecuteScalar();
                maxslnonew = maxid;
            }
            slno = maxslnonew + 1;


            string note_id = "N_" +  + slno;


            string name = flupnotes.PostedFile.FileName;
            string pdfname = Session["userid"].ToString() + Session["username"].ToString() + note_id + ".pdf";
            string thumbname = Session["userid"].ToString() + Session["username"].ToString() + note_id+ ".jpg";
            string pdfpath = "file_notes/" + pdfname;
            string previewpath="preview/"+pdfname;
            string imgpath = "images/" + thumbname;
            int pdfsize = flupnotes.PostedFile.ContentLength;
            int x = pdfsize;
            flupnotes.SaveAs(Server.MapPath(pdfpath));
           
            string inpath=Server.MapPath(pdfpath);
            string outpath = Server.MapPath(previewpath);
            string thumbpath = Server.MapPath(imgpath);
            ExtractPages(inpath, outpath, 1, 2);

            Aspose.Pdf.Document pdfDocument = new Aspose.Pdf.Document(Server.MapPath(previewpath));

       

          
              //  using (FileStream imageStream = new FileStream("image" + pagecount + ".jpg", FileMode.Create))
                using (FileStream imageStream = new FileStream(""+thumbpath+"", FileMode.Create))
              
              //  using(var outfile=File.Create(thumbpath))
                {
                    // Create Resolution object
                    Resolution resolution = new Resolution(300);
                    // Create JPEG device with specified attributes (Width, Height, Resolution, Quality)
                    // where Quality [0-100], 100 is Maximum
                    JpegDevice jpegDevice = new JpegDevice(resolution, 100);
                    jpegDevice.Process(pdfDocument.Pages[1], imageStream);
                    // Convert a particular page and save the image to stream
                    //jpegDevice.Process(pdfDocument.Pages[pageCount], imageStream);
                    // Close stream
                   
                    imageStream.Close();
                    
                }
            
          
            
          
            SqlCommand cmd = new SqlCommand(@"insert into tbl_seller(note_id,title,username,email,grade_tag,sub_tag,up_date,ip,fpath,author,price,user_id,file_name,ppath,ipath) values(@note_id,@title,@user,@email,@grade_tag,@sub_tag,@up_date,@ip,@file,@author,@price,@user_id,@file_name,@ppath,@ipath)", con1);
            cmd.Parameters.AddWithValue("@note_id", SqlDbType.VarChar).Value = note_id;
            cmd.Parameters.AddWithValue("@title", SqlDbType.VarChar).Value = txttitle.Text;
            cmd.Parameters.AddWithValue("@user", SqlDbType.VarChar).Value = Session["username"].ToString();
            cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = Session["email"].ToString();
            cmd.Parameters.AddWithValue("@grade_tag", SqlDbType.VarChar).Value = ddlupgrade.SelectedItem.ToString();
            cmd.Parameters.AddWithValue("@sub_tag", SqlDbType.VarChar).Value = sub_tag;
            cmd.Parameters.AddWithValue("@up_date", SqlDbType.VarChar).Value = DateTime.Now.ToShortDateString();
            cmd.Parameters.AddWithValue("@ip", SqlDbType.VarChar).Value = ip;
            cmd.Parameters.AddWithValue("@file", SqlDbType.VarChar).Value = pdfpath;
            cmd.Parameters.AddWithValue("@author", SqlDbType.VarChar).Value = txtauthor.Text;
            cmd.Parameters.AddWithValue("@price", SqlDbType.VarChar).Value = txtprice.Text;
            cmd.Parameters.AddWithValue("@user_id", SqlDbType.VarChar).Value = Session["userid"].ToString();
            cmd.Parameters.AddWithValue("@file_name", SqlDbType.VarChar).Value = pdfname;
            cmd.Parameters.AddWithValue("@ppath", SqlDbType.VarChar).Value = previewpath;
            cmd.Parameters.AddWithValue("@ipath", SqlDbType.VarChar).Value = imgpath;
            cmd.ExecuteNonQuery();
            try
            {
                lblMsg1.Text = "FILE UPLOADED SUCCESSFULLY.";
                lblMsg1.Visible = true;
                previewpdf.HRef = pdfpath;
                previewpdf.Visible = true;
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('UPLOAD UNSUCCESSFUL. TRY AGAIN LATER!')", true);
            }
            finally
            {
                con1.Close();
                con1.Dispose();
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindData();
        }
      


        protected void BindData()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());

            con.Open();
            string sub_tag=null;
            if (ddlsubject.Visible == true)
                sub_tag = ddlsubject.SelectedItem.ToString();
            else if (ddllawentr.Visible == true)
                sub_tag = ddllawentr.SelectedItem.ToString();
            else if (ddllawnotes.Visible == true)
                sub_tag = ddllawnotes.SelectedItem.ToString();
            else if (ddlmedentr.Visible == true)
                sub_tag = ddlmedentr.SelectedItem.ToString();
            else if (ddlmednotes.Visible == true)
                sub_tag = ddlmednotes.SelectedItem.ToString();
            else if (ddlenggentr.Visible == true)
                sub_tag = ddlenggentr.SelectedItem.ToString();
            else if (ddlstrengg.Visible == true)
                sub_tag = ddlstrengg.SelectedItem.ToString();
            else if (ddlcanotes.Visible == true)
                sub_tag = ddlcanotes.SelectedItem.ToString();
            else if (ddlothers.Visible == true)
                sub_tag = ddlothers.SelectedItem.ToString();
            SqlCommand cmd = new SqlCommand(@"select count(*) from tbl_seller where grade_tag='" + ddlgrade.SelectedItem.ToString() + "' and sub_tag='" + sub_tag + "'", con);
            int x = (int)cmd.ExecuteScalar();
           
            if (x==0)
            {
                lblMsg.Text = "NO NOTES FOUND. KEEP VISITING THIS PAGE FOR MORE INFO.";
                lblMsg.Visible = true;
                GridView1.Visible = false;
                return;
            }

            lblMsg.Text = ""+x+" Results Found for Your Query";
            lblMsg.Visible = true;
            GridView1.Visible = true;
            SqlCommand cmd1 = new SqlCommand(@"select note_id,title,author,price,up_date,fpath,ppath,ipath from tbl_seller where grade_tag='" + ddlgrade.SelectedItem.ToString() + "' and sub_tag='" + sub_tag + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            GridView1.DataSource = dt;
            GridView1.DataBind();
          
            for (int i=0; i<GridView1.Rows.Count;i++)
            {
                string ppath = dt.Rows[i][6].ToString();
                HyperLink lnk = ((HyperLink)GridView1.Rows[i].FindControl("hyplnk"));
                lnk.NavigateUrl = dt.Rows[i][6].ToString();
                System.Web.UI.WebControls.Image img = ((System.Web.UI.WebControls.Image)GridView1.Rows[i].FindControl("imgnote"));
                img.ImageUrl = dt.Rows[i][7].ToString();
            }

            con.Close();
            con.Dispose();


        }

        protected void ddlupgrade_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlupgrade.SelectedIndex == 1)
            {
                ddlupsubject.Visible = true;
                ddlupcanotes.Visible = false;
                ddlupenggentr.Visible = false;
                ddluplawentr.Visible = false;
                ddluplawnotes.Visible = false;
                ddlupmedentr.Visible = false;
                ddlupmednotes.Visible = false;
                ddlupothers.Visible = false;
                ddlupstrengg.Visible = false;

            }
            else if (ddlupgrade.SelectedIndex == 2)
            {
                ddlupenggentr.Visible = true;
                ddluplawentr.Visible = false;
                ddluplawnotes.Visible = false;
                ddlupmedentr.Visible = false;
                ddlupmednotes.Visible = false;
                ddlupothers.Visible = false;
                ddlupstrengg.Visible = false;
                ddlupsubject.Visible = false;
                ddlupcanotes.Visible = false;
            }
            else if (ddlupgrade.SelectedIndex == 3)
            {
                ddlupmedentr.Visible = true;
                ddlupenggentr.Visible = false;
                ddluplawentr.Visible = false;
                ddluplawnotes.Visible = false;
                ddlupmednotes.Visible = false;
                ddlupothers.Visible = false;
                ddlupstrengg.Visible = false;
                ddlupsubject.Visible = false;
                ddlupcanotes.Visible = false;
            }
            else if (ddlupgrade.SelectedIndex == 4)
            {
                ddluplawentr.Visible = true;
                ddlupmedentr.Visible = false;
                ddlupenggentr.Visible = false;
                ddluplawnotes.Visible = false;
                ddlupmednotes.Visible = false;
                ddlupothers.Visible = false;
                ddlupstrengg.Visible = false;
                ddlupsubject.Visible = false;
                ddlupcanotes.Visible = false;
            }
            else if (ddlupgrade.SelectedIndex == 5)
            {
                ddlupstrengg.Visible = true;
                ddluplawentr.Visible = false;
                ddlupmedentr.Visible = false;
                ddlupenggentr.Visible = false;
                ddluplawnotes.Visible = false;
                ddlupmednotes.Visible = false;
                ddlupothers.Visible = false;
                ddlupsubject.Visible = false;
                ddlupcanotes.Visible = false;
            }
            else if (ddlupgrade.SelectedIndex == 6)
            {
                ddlupmednotes.Visible = true;
                ddlupstrengg.Visible = false;
                ddluplawentr.Visible = false;
                ddlupmedentr.Visible = false;
                ddlupenggentr.Visible = false;
                ddluplawnotes.Visible = false;
                ddlupothers.Visible = false;
                ddlupsubject.Visible = false;
                ddlupcanotes.Visible = false;
            }
            else if (ddlupgrade.SelectedIndex == 7)
            {
                ddluplawnotes.Visible = true;
                ddlupmednotes.Visible = false;
                ddlupstrengg.Visible = false;
                ddluplawentr.Visible = false;
                ddlupmedentr.Visible = false;
                ddlupenggentr.Visible = false;
                ddlupothers.Visible = false;
                ddlupsubject.Visible = false;
                ddlupcanotes.Visible = false;
            }
            else if (ddlupgrade.SelectedIndex == 8)
            {
                ddlupcanotes.Visible = true;
                ddluplawnotes.Visible = false;
                ddlupmednotes.Visible = false;
                ddlupstrengg.Visible = false;
                ddluplawentr.Visible = false;
                ddlupmedentr.Visible = false;
                ddlupenggentr.Visible = false;
                ddlupothers.Visible = false;
                ddlupsubject.Visible = false;
            }
            else if (ddlupgrade.SelectedIndex == 9)
            {
                ddlupothers.Visible = true;
                ddlupcanotes.Visible = false;
                ddluplawnotes.Visible = false;
                ddlupmednotes.Visible = false;
                ddlupstrengg.Visible = false;
                ddluplawentr.Visible = false;
                ddlupmedentr.Visible = false;
                ddlupenggentr.Visible = false;
                ddlupsubject.Visible = false;
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());

            if (e.CommandName == "AddToCart")
            {
                string ip = GetIPAddress();
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GridView1.Rows[index];
                Label lblnoteidcart = ((Label)GridView1.Rows[index].FindControl("lblnoteid"));
                string note_id = lblnoteidcart.Text;
                Label lbltitlecart = ((Label)GridView1.Rows[index].FindControl("lbltitle"));
                string title = lbltitlecart.Text;
                Label lblauthorcart = ((Label)GridView1.Rows[index].FindControl("lblauthor"));
                string author = lblauthorcart.Text;
                Label lblpricecart = ((Label)GridView1.Rows[index].FindControl("lblprice"));
                string price = lblpricecart.Text;
                HyperLink lnk = ((HyperLink)GridView1.Rows[index].FindControl("hyplnk"));
                string ppath=lnk.NavigateUrl;
                System.Web.UI.WebControls.Image img = ((System.Web.UI.WebControls.Image)GridView1.Rows[index].FindControl("imgnote"));
                string ipath = img.ImageUrl;
                con.Open();
                SqlCommand cmd = new SqlCommand(@"insert into tbl_cart(note_id,ipath,title,author,price,cart_username,ip_cart,ppath,date_cart) values(@note_id,@ipath,@title,@author,@price,@cart_username,@ip_cart,@ppath,@date_cart)", con);
                cmd.Parameters.AddWithValue("@note_id", SqlDbType.VarChar).Value = note_id;
                cmd.Parameters.AddWithValue("@ipath", SqlDbType.VarChar).Value = ipath;
                cmd.Parameters.AddWithValue("@title", SqlDbType.VarChar).Value = title;
                cmd.Parameters.AddWithValue("@author", SqlDbType.VarChar).Value = author;
              //  cmd.Parameters.AddWithValue("@owner", SqlDbType.VarChar).Value = "";
                cmd.Parameters.AddWithValue("@price", SqlDbType.VarChar).Value = price;
                cmd.Parameters.AddWithValue("@cart_username", SqlDbType.VarChar).Value = Session["username"].ToString();
                cmd.Parameters.AddWithValue("@ip_cart", SqlDbType.VarChar).Value = ip;
               // cmd.Parameters.AddWithValue("@file_name", SqlDbType.VarChar).Value = "";
                cmd.Parameters.AddWithValue("@ppath", SqlDbType.VarChar).Value = ppath;
                cmd.Parameters.AddWithValue("@date_cart", SqlDbType.Date).Value = DateTime.Now.ToShortDateString();
                cmd.ExecuteNonQuery();
                try
                {
                    lblMsg.Text = "SUCCESSFULLY ADDED TO CART!";
                    lblMsg.Visible = true;
                }
                catch
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('UPLOAD UNSUCCESSFUL. TRY AGAIN LATER!')", true);
          
                }
            }
            if (e.CommandName == "Buy")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                Label lblnoteidcart = ((Label)GridView1.Rows[index].FindControl("lblnoteid"));
                Session["note_id"] = lblnoteidcart.Text;
                Label lbltitlecart = ((Label)GridView1.Rows[index].FindControl("lbltitle"));
                Session["title"] = lbltitlecart.Text;
                Label lblauthorcart = ((Label)GridView1.Rows[index].FindControl("lblauthor"));
                Session["author"] = lblauthorcart.Text;
                Label lblpricecart = ((Label)GridView1.Rows[index].FindControl("lblprice"));
                Session["price"] = lblpricecart.Text;
                HyperLink lnk = ((HyperLink)GridView1.Rows[index].FindControl("hyplnk"));
               Session["ppath"] = lnk.NavigateUrl;
               Response.Redirect("PaymentGateway.aspx", false);
            }
            con.Close();
            con.Dispose();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnBuy_Click(object sender, EventArgs e)
        { 
        }
        protected void btnCart_Click(object sender, EventArgs e)
        {
          
        
        }
        protected void OnPaging1(object sender, GridViewPageEventArgs e)
        {
            BindData();
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
        }
    
    }
}