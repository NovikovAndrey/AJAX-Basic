﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AJAX_Basic
{
    /// <summary>
    /// Summary description for Handler
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write(DateTime.Now.ToLongTimeString());
        }

        public bool IsReusable
        {
            get
            {
                return true;
            }
        }
    }
}