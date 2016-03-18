cofiguration CNYWebServer {
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
)
    Node $NodeName
    {
        # Install the IIS role
        WindowsFeature IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

        # Install the ASP .NET 4.5 role
        WindowsFeature AspNet45
        {
            Ensure          = "Present"
            Name            = "Web-Asp-Net45"
        }
     }
}