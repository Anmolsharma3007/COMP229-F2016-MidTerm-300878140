using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements that are required to connect to EF DB
using COMP229_F2016_MidTerm_300878140;
using System.Web.ModelBinding;
using COMP229_F2016_MidTerm_300878140.Models;

namespace COMP229_F2016_MidTerm_300878140
{
    public partial class TodoList : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            // if loading the page for the first time
            // populate the student grid
            if (!IsPostBack)
            {
                // Get the Todo data
                this.GetTodo();
            }
        }

        /// <summary>
        /// This method gets the student data from the DB
        /// </summary>
        private void GetTodo()
        {
            // connect to EF DB
            using (TodoContext db = new TodoContext())
            {
                // query the Student Table using EF and LINQ
                var Todos = (from allTodos in db.Todoes
                                select allTodos);

                // bind the result to the Students GridView
                TodoGridView.DataSource = Todos.ToList();
                TodoGridView.DataBind();
            }
        }
        protected void TodoGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


            // store which row was clicked
            int selectedRow = e.RowIndex;

            // get the selected TodoID using the Grid's DataKey collection
            int TodoID = Convert.ToInt32(TodoGridView.DataKeys[selectedRow].Values["TodoID"]);

            // use EF and LINQ to find the selected todo in the DB and remove it
            using (TodoContext db = new TodoContext())
            {
                // create object ot the student clas and store the query inside of it
                Todo deletedTodo = (from todoRecords in db.Todoes
                                          where todoRecords.TodoID == TodoID
                                          select todoRecords).FirstOrDefault();

                // remove the selected todo from the db
                db.Todoes.Remove(deletedTodo);

                // save my changes back to the db
                db.SaveChanges();

                // refresh the grid
                this.GetTodo();
            }


        }
    }

    }