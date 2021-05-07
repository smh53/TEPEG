using Core.DataAccess.EntityFramework;
using Core.Entities.Concrete.User;
using DataAccess.Abstract;
using DataAccess.Concrete.Context;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
namespace DataAccess.Concrete.EntityFramework
{
    public class EfUserDal : EfEntityRepositoryBase<User, TepegContext>, IUserDal
    {
        public List<OperationClaim> GetClaims(User user)
        {
            using (var context = new TepegContext())
            {
                var result = from operationClaim in context.OperationClaims
                             join userOperationClaim in context.UserOperationClaims
                                 on operationClaim.ID equals userOperationClaim.OperationClaimId
                             where userOperationClaim.UserId == user.ID
                             select new OperationClaim { ID = operationClaim.ID, Name = operationClaim.Name };
                return result.ToList();

            }
        }
    }
}
