namespace ElearningPlatformWILP.Models
{
    public class Course
    {
        public int CourseID { get; set; }

        public string CourseName { get; set; }

        public string CourseDescription { get; set; }

        public int Credits { get; set; }

        public string InstructorID { get; set; }

        public DateTime CraetionDate { get; set; }
    }
}
