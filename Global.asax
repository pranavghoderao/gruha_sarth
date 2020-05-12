<%@ Application Language="C#" %>
 <%@ Import Namespace="System.Web.Routing" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown
        RegisterRoutes(RouteTable.Routes);
    }
        void RegisterRoutes(RouteCollection routes)
{
   // Register a route for Categories/All
   routes.MapPageRoute(
      "Login",      // Route name
      "login",      // Route URL
      "~/Login.aspx" // Web page to handle route
   );
          routes.MapPageRoute(
      "Carpainter",      // Route name
      "carpainter",      // Route URL
      "~/Carpainter.aspx" // Web page to handle route
   );
         routes.MapPageRoute(
      "Electrical",      // Route name
      "electrical",      // Route URL
      "~/Electrical.aspx" // Web page to handle route
   );
        routes.MapPageRoute(
      "Interior",      // Route name
      "interior",      // Route URL
      "~/Interior.aspx" // Web page to handle route
      );
        routes.MapPageRoute(
      "Painting",      // Route name
      "painting",      // Route URL
      "~/Painting.aspx" // Web page to handle route
      );
         routes.MapPageRoute(
      "PestControl",      // Route name
      "pestControl",      // Route URL
      "~/PestControl.aspx" // Web page to handle route
      );
        routes.MapPageRoute(
      "Plumber",      // Route name
      "plumber",      // Route URL
      "~/Plumber.aspx" // Web page to handle route
      );
} 
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

        Response.Redirect("Error.aspx");
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
