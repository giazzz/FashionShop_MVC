namespace BabyShop.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class creat : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Products", "CreateAt", c => c.Long(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Products", "CreateAt");
        }
    }
}
