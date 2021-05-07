using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Core.Entities.Concrete.User
{
    public class User : IEntities
    {
        public int ID { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        public string Email { get; set; }

        [MaxLength(500)]
        public byte[] PasswordHash { get; set; }

        [MaxLength(500)]
        public byte[] PasswordSalt { get; set; }

        public bool Status { get; set; }

    
    }
}