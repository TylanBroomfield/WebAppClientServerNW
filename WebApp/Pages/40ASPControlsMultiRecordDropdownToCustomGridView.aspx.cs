﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DBSystem.BLL;
using DBSystem.ENTITIES;

namespace WebApp.Pages
{
    public partial class _40ASPControlsMultiRecordDropdownToCustomGridView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageLabel.Text = "";
            if (!Page.IsPostBack)
            {
                BindList();
            }
        }
        protected void BindList()
        {
            try
            {
                Controller01 sysmgr = new Controller01();
                List<Entity01> info = null;
                info = sysmgr.List();
                info.Sort((x, y) => x.TeamName.CompareTo(y.TeamName));
                List01.DataSource = info;
                List01.DataTextField = nameof(Entity01.TeamName);
                List01.DataValueField = nameof(Entity01.TeamID);
                List01.DataBind();
                List01.Items.Insert(0, "select...");
            }
            catch (Exception ex)
            {
                MessageLabel.Text = ex.Message;
            }
        }
        protected void Fetch_Click(object sender, EventArgs e)
        {
            if (List01.SelectedIndex == 0)
            {
                MessageLabel.Text = "Select a category to view its products";
            }
            else
            {
                try
                {
                    Controller01 sysmgr01 = new Controller01();
                    Entity01 info01 = null;
                    info01 = sysmgr01.FindByPKID(int.Parse(List01.SelectedValue));
                    NameLabel01.Text = "Coach:";
                    NameLabel02.Text = info01.Coach;
                    DescriptionLabel01.Text = "Assistant Coach:";
                    DescriptionLabel02.Text = info01.AssistantCoach;
                    IDLabel01.Text = "Wins:";
                    IDLabel02.Text = info01.Wins.ToString();
                    IDLabel201.Text = "Losses:";
                    IDLabel202.Text = info01.Losses.ToString();
                    Controller02 sysmgr02 = new Controller02();
                    List<Entity02> info02 = null;
                    info02 = sysmgr02.FindByID(int.Parse(List01.SelectedValue));
                    info02.Sort((x, y) => x.FirstAndLast.CompareTo(y.FirstAndLast));
                    List02.DataSource = info02;
                    List02.DataBind();
                }
                catch (Exception ex)
                {
                    MessageLabel.Text = ex.Message;
                }
            }
        }
        protected void List02_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            List02.PageIndex = e.NewPageIndex;
            Fetch_Click(sender, new EventArgs());
        }
    }
}