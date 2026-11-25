using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SmartCampusPortal.Models
{
    public class ServiceRequest
    {
        public int RequestId { get; set; }

        [Required(ErrorMessage = "Please enter the student name.")]
        [StringLength(100, ErrorMessage = "Maximum 100 characters allowed.")]
        public string StudentName { get; set; }

        [Required(ErrorMessage = "Please enter the department.")]
        [StringLength(100, ErrorMessage = "Maximum 100 characters allowed.")]
        public string Department { get; set; }

        [Required(ErrorMessage = "Please enter the service type.")]
        [StringLength(50, ErrorMessage = "Maximum 50 characters allowed.")]
        public string ServiceType { get; set; }

        [Required(ErrorMessage = "Please enter the description.")]
        [StringLength(500, ErrorMessage = "Maximum 500 characters allowed.")]
        public string Description { get; set; }

        public string Priority { get; set; }

        public string Status { get; set; }

        public DateTime RequestDate { get; set; }
    }
}