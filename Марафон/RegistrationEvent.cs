namespace Марафон
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("RegistrationEvent")]
    public partial class RegistrationEvent
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RegistrationEvent()
        {
            Registration = new HashSet<Registration>();
        }

        public int RegistrationEventId { get; set; }

        public int RegistrationId { get; set; }

        [Required]
        [StringLength(6)]
        public string EventId { get; set; }

        public short? BibNumber { get; set; }

        public int? RaceTime { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Registration> Registration { get; set; }
    }
}
