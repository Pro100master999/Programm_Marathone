namespace Марафон
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Position")]
    public partial class Position
    {
        [Key]
        [StringLength(50)]
        public string Position_ID { get; set; }

        [StringLength(50)]
        public string Position_Name { get; set; }

        [StringLength(100)]
        public string Position_Description { get; set; }

        [StringLength(50)]
        public string Pay_Period { get; set; }

        public int? Pay_Rate { get; set; }
    }
}
