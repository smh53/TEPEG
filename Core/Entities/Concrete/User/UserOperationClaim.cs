using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Entities.Concrete.User
{
   public class UserOperationClaim: IEntities
    {
        public int ID { get; set; }
        public int UserId { get; set; }
        public int OperationClaimId { get; set; }
      
    }
}
