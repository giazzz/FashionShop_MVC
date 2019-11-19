using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace BabyShop.Models
{
    public class ProductColor
    {
        [Key]
        [Column(Order = 0)]
        [ForeignKey("Product")]
        public int ProductId { get; set; }

        [Key]
        [Column(Order = 1)]
        [ForeignKey("Color")]
        public int ColorId { get; set; }
        public virtual Product Product { get; set; }
        public virtual Color Color { get; set; }

    }
}