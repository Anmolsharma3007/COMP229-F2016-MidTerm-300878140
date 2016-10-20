using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using to connect to DB And EF
using COMP229_F2016_MidTerm_300878140;
using System.Web.ModelBinding;
using COMP229_F2016_MidTerm_300878140.Models;

namespace COMP229_F2016_MidTerm_300878140
{
    public partial class TodoDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {

        }

        protected void CancelButton_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/TodoList.aspx");
        }

        // Code for saveButton
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Use EF to conect to the server
            using (TodoContext db = new TodoContext())
            {
                // save a new record

                Todo newTodo = new Todo();

                int TodoID = 0;

                if (Request.QueryString.Count > 0) 
                {
                    // get the id from the URL
                }

                // add form data to the new student record
                newTodo.TodoDescription = TodoNameTextBox.Text;
                newTodo.TodoNotes = TodoNotesTextBox.Text;

                // use LINQ to ADO.NET to add / insert new student into the db

                if (TodoID == 0)
                {
                    db.Todoes.Add(newTodo);
                }

                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated students page
                Response.Redirect("~/TodoList.aspx");
            }
        }
    }
}