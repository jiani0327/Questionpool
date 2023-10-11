namespace Questionbank.Model.Domain
{
    public class subjects
    {
        public int Id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string subject_code { get; set; }
        
        public int Status_id{ get; set; }
        public int User_id { get; set; }

        
    }

    
}
