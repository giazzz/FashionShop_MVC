namespace BabyShop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddAll : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Catalogs",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(unicode: true),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Products",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(unicode: true),
                        Price = c.String(unicode: true),
                        Image = c.String(unicode: true),
                        Description = c.String(unicode: true),
                        Quantity = c.Int(nullable: false),
                        AgeMin = c.Int(nullable: false),
                        AgeMax = c.Int(nullable: false),
                        Gender = c.String(unicode: true),
                        CatalogID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Catalogs", t => t.CatalogID, cascadeDelete: true)
                .Index(t => t.CatalogID);
            
            CreateTable(
                "dbo.Thumbnails",
                c => new
                    {
                        Id = c.Int(nullable: false),
                        Link1 = c.String(unicode: true),
                        Link2 = c.String(unicode: true),
                        Link3 = c.String(unicode: true),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Products", t => t.Id)
                .Index(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Thumbnails", "Id", "dbo.Products");
            DropForeignKey("dbo.Products", "CatalogID", "dbo.Catalogs");
            DropIndex("dbo.Thumbnails", new[] { "Id" });
            DropIndex("dbo.Products", new[] { "CatalogID" });
            DropTable("dbo.Thumbnails");
            DropTable("dbo.Products");
            DropTable("dbo.Catalogs");
        }
    }
}
