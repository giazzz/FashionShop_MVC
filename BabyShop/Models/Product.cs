using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

namespace BabyShop.Models
{
    public class Product
    {
        [Key]
        public int Id { set; get; }
        public string Name { set; get; }
        public float Price { set; get; }
        public string Image { set; get; }
        public string Description { set; get; }
        public int Quantity { set; get; }
        public int AgeMin { set; get; }
        public int AgeMax { set; get; }
        public string Gender { set; get; }
        public int CatalogID { set; get; }
        public virtual Catalog Catalog { set; get; }
        public virtual Thumbnail Thumbnail { set; get; }
        public long CreateAt { set; get; }
        public virtual ICollection<ProductSize> ProductSizes { get; set; }
        public virtual ICollection<ProductColor> ProductColors { get; set; }

    }
}