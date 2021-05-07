using Business.Abstract;
using Business.BusinessAspects.Autofac;
using Business.Constants.Messages;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Validation;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System.Collections.Generic;

namespace Business.Concrete
{
    public class StudentManager : IStudentService
    {
        private IStudentDal _studentDal;

        public StudentManager(IStudentDal studentDal)
        {
            _studentDal = studentDal;
        }

        [ValidationAspect(typeof(StudentValidator))]
        [SecuredOperation("teacher")]
        public IResult Add(Student student)
        {
            var entity = new Student()
            {
                Name = student.Name,
                Surname = student.Surname,
                StudentNumber = student.StudentNumber,
                Grades = student.Grades
            };
            _studentDal.Add(entity);
            return new SuccessResult();
        }

        public IResult Delete(int studentId)
        {
            var result = _studentDal.Get(f => f.Id == studentId);
            if (result != null)
            {
                _studentDal.Delete(result);
                return new SuccessResult(Messages.StudentDeleted);
            }
            return new ErrorResult(Messages.DoesntExist);
        }

        public IDataResult<List<Student>> GetAll()
        {
            var result = _studentDal.GetAll();

            return new SuccessDataResult<List<Student>>(result);
        }

        public IDataResult<Student> GetById(int studentId)
        {
            var result = _studentDal.Get(f => f.Id == studentId);
            return new SuccessDataResult<Student>(result);
        }

        public IResult Update(Student student)
        {
            var result = _studentDal.Get(f => f.Id == student.Id);

            if (result != null)
            {
                result.Name = student.Name;
                result.StudentNumber = student.StudentNumber;
                result.Surname = student.Surname;
                result.Grades = student.Grades;
                _studentDal.Update(result);
                return new SuccessDataResult<Student>(result);
            }
            return new ErrorResult(Messages.DoesntExist);

        }
    }
}