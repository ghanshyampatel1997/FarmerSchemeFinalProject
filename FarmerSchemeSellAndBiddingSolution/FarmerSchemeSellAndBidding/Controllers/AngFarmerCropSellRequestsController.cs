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
    public class AngFarmerCropSellRequestsController : ApiController
    {
        private FarmerSchemeDBEntities db = new FarmerSchemeDBEntities();

        // POST: api/AngFarmerCropSellRequests
        [ResponseType(typeof(AngFarmerCropSellRequest))]
        public IHttpActionResult PostAngFarmerCropSellRequest(AngFarmerCropSellRequest angFarmerCropSellRequest)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            int cid = (from cr in db.Cropprices
                       where cr.cropname == angFarmerCropSellRequest.cropname
                       select cr.CropId).First();
            
            FarmerCropdetil farmerCropdetil = new FarmerCropdetil();
            
            farmerCropdetil.cropType = angFarmerCropSellRequest.cropType;
            farmerCropdetil.CropId = cid;
            farmerCropdetil.fertilizerType = angFarmerCropSellRequest.fertilizerType;
            farmerCropdetil.quantity = angFarmerCropSellRequest.quantity;
            farmerCropdetil.SoilPHCertificate = angFarmerCropSellRequest.SoilPHCertificate;

            db.FarmerCropdetils.Add(farmerCropdetil);
            db.SaveChanges();

            return Ok();
        }

       
    }
}