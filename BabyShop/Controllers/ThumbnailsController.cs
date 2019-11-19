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
    public class ThumbnailsController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: Thumbnails
        public ActionResult Index()
        {
            var thumbnails = db.Thumbnails.Include(t => t.Product);
            return View(thumbnails.ToList());
        }

        // GET: Thumbnails/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Thumbnail thumbnail = db.Thumbnails.Find(id);
            if (thumbnail == null)
            {
                return HttpNotFound();
            }
            return View(thumbnail);
        }

        // GET: Thumbnails/Create
        public ActionResult Create()
        {
            ViewBag.Id = new SelectList(db.Products, "Id", "Name");
            return View();
        }

        // POST: Thumbnails/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Link1,Link2,Link3")] Thumbnail thumbnail)
        {
            if (ModelState.IsValid)
            {
                db.Thumbnails.Add(thumbnail);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Id = new SelectList(db.Products, "Id", "Name", thumbnail.Id);
            return View(thumbnail);
        }

        // GET: Thumbnails/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Thumbnail thumbnail = db.Thumbnails.Find(id);
            if (thumbnail == null)
            {
                return HttpNotFound();
            }
            ViewBag.Id = new SelectList(db.Products, "Id", "Name", thumbnail.Id);
            return View(thumbnail);
        }

        // POST: Thumbnails/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Link1,Link2,Link3")] Thumbnail thumbnail)
        {
            if (ModelState.IsValid)
            {
                db.Entry(thumbnail).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Id = new SelectList(db.Products, "Id", "Name", thumbnail.Id);
            return View(thumbnail);
        }

        // GET: Thumbnails/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Thumbnail thumbnail = db.Thumbnails.Find(id);
            if (thumbnail == null)
            {
                return HttpNotFound();
            }
            return View(thumbnail);
        }

        // POST: Thumbnails/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Thumbnail thumbnail = db.Thumbnails.Find(id);
            db.Thumbnails.Remove(thumbnail);
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
