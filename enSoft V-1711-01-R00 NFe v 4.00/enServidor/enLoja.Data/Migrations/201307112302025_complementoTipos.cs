namespace enLoja.Model.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class complementoTipos : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.CAD_TB_C_TIF", "NATUREZA", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.CAD_TB_C_TIF", "NATUREZA", c => c.String(nullable: false, maxLength: 1));
        }
    }
}
