using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SurveyWebsite.Startup))]
namespace SurveyWebsite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
