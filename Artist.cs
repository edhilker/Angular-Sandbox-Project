using System;
using System.ComponentModel.DataAnnotations;

namespace Ch22.Models
{
    public class Artist
    {
        public Guid Id { get; set; }

        [Required]
        public string Name { get; set; }
        [Range(1, 5)]
        public int? Rating { get; set; }
    }
}