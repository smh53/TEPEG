using Entities.Concrete;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.ValidationRules.FluentValidation
{
   public class StudentValidator : AbstractValidator<Student>
    {
        public StudentValidator()
        {
            RuleFor(d => d.Name).NotEmpty();
            RuleFor(d => d.Surname).NotEmpty();
            RuleFor(d => d.StudentNumber).NotEmpty();
           
        }

       
    }
    
    
}
