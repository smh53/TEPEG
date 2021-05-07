using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Core.Entities.Concrete.User
{
   public class OperationClaim: IEntities
    {
        public int ID { get; set; }
        [MaxLength(250)]
        public string Name { get; set; }

      
    }
}
