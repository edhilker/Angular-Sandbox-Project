using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Caching;
using System.Web.Http;
using Ch22.Models;

namespace Ch22.Controllers
{
    [RoutePrefix("api/artists")]
    public class ArtistController : ApiController
    {
        public List<Artist> ArtistCache
        {
            get { return (List<Artist>)MemoryCache.Default.Get("artists"); }
            set { MemoryCache.Default.Set("artists", value, ObjectCache.InfiniteAbsoluteExpiration); }
        }

        public ArtistController()
        {
            if (ArtistCache == null)
            {
                ArtistCache = new List<Artist>();
            }
        }

        // GET api/artists
        // Gets the artists
        [Route("")]
        public IHttpActionResult Get()
        {
            return Ok(ArtistCache);
        }

        // GET api/artists/{id}
        // Gets the artist
        [Route("{id}")]
        public IHttpActionResult Get(Guid id)
        {
            var artist = ArtistCache.FirstOrDefault(a => a.Id == id);
            if (artist == null)
                return NotFound();

            return Ok(artist);
        }

        // POST api/artists
        // Creates an artist.
        [Route("")]
        public IHttpActionResult Post(Artist artist)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            artist.Id = Guid.NewGuid();
            ArtistCache.Add(artist);
            return Created("api/artists/" + artist.Id, artist);
        }

        // PUT api/artists/{id}
        // Updates an artist.
        [Route("{id}")]
        public IHttpActionResult Put(Guid id, [FromBody] Artist newArtist)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var artist = ArtistCache.FirstOrDefault(a => a.Id == id);
            if (artist == null)
                return NotFound();

            artist.Name = newArtist.Name;
            artist.Rating = newArtist.Rating;
            return Ok();
        }

        // DELETE api/artists/{id}
        // Deletes an artist.
        [Route("{id}")]
        public IHttpActionResult Delete(Guid id)
        {
            var artist = ArtistCache.FirstOrDefault(a => a.Id == id);
            if (artist == null)
                return NotFound();

            ArtistCache.Remove(artist);
            return Ok();
        }
    }
}