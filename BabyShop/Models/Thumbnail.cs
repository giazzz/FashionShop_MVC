using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BabyShop.Models
{
    public class Thumbnail
    {
        [Key]
        [ForeignKey("Product")]
        public int Id { set; get; }
        public string Link1 { set; get; }
        public string Link2 { set; get; }
        public string Link3 { set; get; }
        public virtual Product Product { set; get; }
    }
}