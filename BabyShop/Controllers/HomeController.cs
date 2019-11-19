using BabyShop.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.DynamicData;
using System.Web.Mvc;
using PagedList;
using LinqKit;
using System.Net;

namespace BabyShop.Controllers
{
    public class HomeController : Controller
    {
        private MyDbContext db = new MyDbContext();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Shop(string sortOrder, string currentFilter, string searchString, int? page, string age,string price, int? catalog)
        {
            var predicate = PredicateBuilder.New<Product>(true);
            ViewBag.CurrentSort = sortOrder;

            if (searchString != null)
            {
                page = 1;
            }
            else
            {
                searchString = currentFilter;
            }
            ViewBag.CurrentFilter = searchString;
            ViewBag.CurrentAge = age;
            ViewBag.CurrentPrice = price;
            ViewBag.CurrentCatalog = catalog;

            var data = from s in db.Products select s;

            if (!String.IsNullOrEmpty(searchString))
            {
                predicate = predicate.Or(s => s.Name.Contains(searchString));
            }

            if (catalog == 2 || catalog == 3 || catalog == 4 || catalog == 5 || catalog == 6)
            {
                predicate = predicate.Or(s => s.CatalogID == catalog);
            }

            if (!String.IsNullOrEmpty(age))
            {
                switch (age)
                {
                    case "0_1":
                        predicate = predicate.And(s => s.AgeMin == 0 && s.AgeMax == 1);
                        break;
                    case "1_4":
                        predicate = predicate.And(s => s.AgeMin == 1 && s.AgeMax == 4);
                        break;
                    case "4_8":
                        predicate = predicate.And(s => s.AgeMin ==4 && s.AgeMax == 8);
                        break;
                    case "8_12":
                        predicate = predicate.And(s => s.AgeMin ==8 && s.AgeMax == 12);
                        break;
                }
            }
            if (!String.IsNullOrEmpty(price))
            {
                switch (price)
                {
                    case "0_50":
                        predicate = predicate.And(s => s.Price >= 0 && s.Price < 50);
                        break;
                    case "50_100":
                        predicate = predicate.And(s => s.Price >= 50 && s.Price < 100);
                        break;
                    case "100_150":
                        predicate = predicate.And(s => s.Price >= 100 && s.Price < 150);
                        break;
                    case "150":
                        predicate = predicate.And(s => s.Price >= 150);
                        break;
                }
            }
            data = data.Where(predicate);
            switch (sortOrder)
            {
                case "date_desc":
                    data = data.OrderByDescending(s => s.CreateAt);
                    break;
                case "price":
                    data = data.OrderBy(s => s.Price);
                    break;
                case "price_desc":
                    data = data.OrderByDescending(s => s.Price);
                    break;
                default:  // Name ascending 
                    data = data.OrderBy(s => s.Name);
                    break;
            }
            int pageSize = 4;
            int pageNumber = (page ?? 1);
            if (data.Count() != 0)
            {
                return View(data.ToPagedList(pageNumber, pageSize));
            }
            else
            {
                ViewBag.notFound = "Item not found!";
                return View(data.ToPagedList(pageNumber, pageSize));
            }
        }
        public ActionResult ProductDetail(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.Product = product;
            ViewBag.ProductSize = db.ProductSizes.Where(s => s.ProductId == product.Id).Select(s => s.Size.NameSize).ToList();
            ViewBag.ProductColor = db.ProductColors.Where(s => s.ProductId == product.Id).Select(s => s.Color.ColorName).ToList();
            string ListColor = "";
            string ListSize = "";
            foreach(var item in ViewBag.ProductColor)
            {
                ListColor = ListColor + item + ", ";
            }
            foreach (var item in ViewBag.ProductSize)
            {
                ListSize = ListSize + item + ", ";
            }
            ViewBag.ListColor = ListColor;
            ViewBag.ListSize = ListSize;
            ViewBag.Des = product.Description.Split('.')[0];
            var catalogProduct = db.Products.Where(s => s.CatalogID == product.CatalogID).Take(8);
            return View(catalogProduct.ToList());
        }

        public ActionResult Cart()
        {
            return View();
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}