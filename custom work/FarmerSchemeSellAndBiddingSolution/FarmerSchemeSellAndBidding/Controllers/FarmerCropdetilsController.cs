using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using FarmerSchemeSellAndBidding.Models;

namespace FarmerSchemeSellAndBidding.Controllers
{
    public class FarmerCropdetilsController : ApiController
    {
        private FarmerSchemeDBEntities1 db = new FarmerSchemeDBEntities1();

        // GET: api/FarmerCropdetils
        public IQueryable<FarmerCropdetil> GetFarmerCropdetils()
        {
            return db.FarmerCropdetils;
        }

        // GET: api/FarmerCropdetils/5
        [ResponseType(typeof(FarmerCropdetil))]
        public IHttpActionResult GetFarmerCropdetil(int id)
        {
            FarmerCropdetil farmerCropdetil = db.FarmerCropdetils.Find(id);
            if (farmerCropdetil == null)
            {
                return NotFound();
            }

            return Ok(farmerCropdetil);
        }

        // PUT: api/FarmerCropdetils/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutFarmerCropdetil(int id, FarmerCropdetil farmerCropdetil)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != farmerCropdetil.FarmerSellID)
            {
                return BadRequest();
            }

            db.Entry(farmerCropdetil).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!FarmerCropdetilExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/FarmerCropdetils
        [ResponseType(typeof(FarmerCropdetil))]
        public IHttpActionResult PostFarmerCropdetil(FarmerCropdetil farmerCropdetil)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.FarmerCropdetils.Add(farmerCropdetil);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = farmerCropdetil.FarmerSellID }, farmerCropdetil);
        }

        // DELETE: api/FarmerCropdetils/5
        [ResponseType(typeof(FarmerCropdetil))]
        public IHttpActionResult DeleteFarmerCropdetil(int id)
        {
            FarmerCropdetil farmerCropdetil = db.FarmerCropdetils.Find(id);
            if (farmerCropdetil == null)
            {
                return NotFound();
            }

            db.FarmerCropdetils.Remove(farmerCropdetil);
            db.SaveChanges();

            return Ok(farmerCropdetil);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool FarmerCropdetilExists(int id)
        {
            return db.FarmerCropdetils.Count(e => e.FarmerSellID == id) > 0;
        }
    }
}