using System.Web;
using System.Web.Optimization;

namespace BabyShop
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js"));

            //bundles.Add(new StyleBundle("~/Content/css").Include(
            //          "~/Content/bootstrap.css",
            //          "~/Content/site.css"));
            bundles.Add(new StyleBundle("~/Content/css").Include(
                "~/Content/css/bootstrap.min.css",
                "~/Content/css/font-awesome.min.css",
                "~/Content/css/material-design-iconic-font.min.css",
                "~/Content/css/icon-font.min.css",
                "~/Content/css/animate.css",
                "~/Content/css/hamburgers.min.css",
                "~/Content/css/animsition.min.css",
                "~/Content/css/select2.min.css",
                "~/Content/css/daterangepicker.css",
                "~/Content/css/slick.css",
                "~/Content/css/magnific-popup.css",
                "~/Content/css/perfect-scrollbar.css",
                "~/Content/css/util.css",
                "~/Content/css/main.css",
                "~/Content/css/home.css"
                ));
        }
    }
}
