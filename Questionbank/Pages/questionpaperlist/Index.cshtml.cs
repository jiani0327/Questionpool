using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Data.SqlClient;

namespace Questionbank.Pages.questionpaperlist
{
    public class IndexModel : PageModel
    {
        public List<questionpaperlistInfo> listquestionpaperlists = new List<questionpaperlistInfo>();
        public void OnGet()
        {
            try
            {
                String connectionString = "Data Source=DESKTOP-T9K8TPQ\\SQLEXPRESS;Initial Catalog=questionpool;Integrated Security=True";

                    using(SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    String sql = "SELECT * FROM questionpaperlist";
                    using(SqlCommand command = new SqlCommand(sql, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                questionpaperlistInfo questionpaperlistinfo = new questionpaperlistInfo
                                {
                                    id = "" + reader.GetInt32(0),
                                    papername = reader.GetString(1),
                                    description = reader.GetString(2),
                                    //duration = reader.GetTimeSpan(3).ToString(),
                                    status_id = reader.GetInt32(4),
                                    subject_id = reader.GetInt32(5)
                                };

                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
    public class questionpaperlistInfo
    {
        public string id { get; set; }
        public string papername { get; set; }
        public string description { get; set; }
        public TimeOnly duration { get; set; }
        public int status_id { get; set; }
        public int subject_id { get; set; }

    }
}
