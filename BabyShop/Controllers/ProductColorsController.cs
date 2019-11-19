using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BabyShop.Models;

namespace BabyShop.Controllers
{
    public class ProductColorsController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: ProductColors
        public ActionResult Index()
        {
            var productColors = db.ProductColors.Include(p => p.Color).Include(p => p.Product);
            return View(productColors.ToList());
        }

        // GET: ProductColors/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductColor productColor = db.ProductColors.Find(id);
            if (productColor == null)
            {
                return HttpNotFound();
            }
            return View(productColor);
        }

        // GET: ProductColors/Create
        public ActionResult Create()
        {
            ViewBag.ColorId = new SelectList(db.Colors, "Id", "ColorName");
            ViewBag.ProductId = new SelectList(db.Products, "Id", "Name");
            return View();
        }

        // POST: ProductColors/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductId,ColorId")] ProductColor productColor)
        {
            if (ModelState.IsValid)
            {
                db.ProductColors.Add(productColor);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorId = new SelectList(db.Colors, "Id", "ColorName", productColor.ColorId);
            ViewBag.ProductId = new SelectList(db.Products, "Id", "Name", productColor.ProductId);
            return View(productColor);
        }

        // GET: ProductColors/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductColor productColor = db.ProductColors.Find(id);
            if (productColor == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorId = new SelectList(db.Colors, "Id", "ColorName", productColor.ColorId);
            ViewBag.ProductId = new SelectList(db.Products, "Id", "Name", productColor.ProductId);
            return View(productColor);
        }

        // POST: ProductColors/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductId,ColorId")] ProductColor productColor)
        {
            if (ModelState.IsValid)
            {
                db.Entry(productColor).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorId = new SelectList(db.Colors, "Id", "ColorName", productColor.ColorId);
            ViewBag.ProductId = new SelectList(db.Products, "Id", "Name", productColor.ProductId);
            return View(productColor);
        }

        // GET: ProductColors/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ProductColor productColor = db.ProductColors.Find(id);
            if (productColor == null)
            {
                return HttpNotFound();
            }
            return View(productColor);
        }

        // POST: ProductColors/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ProductColor productColor = db.ProductColors.Find(id);
            db.ProductColors.Remove(productColor);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
