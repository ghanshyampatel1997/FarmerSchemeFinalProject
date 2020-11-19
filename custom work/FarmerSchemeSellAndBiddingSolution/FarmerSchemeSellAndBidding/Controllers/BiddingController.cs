using FarmerSchemeSellAndBidding.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace FarmerSchemeSellAndBidding.Controllers
{
    public class BiddingController : ApiController
    {
        private FarmerSchemeDBEntities1 db = new FarmerSchemeDBEntities1();
        // GET: api/Bidding
        public HttpResponseMessage GetFarmerCropdetils()
        {
            var biddingtab = (from fa in db.FarmerCropdetils
                           join cr in db.Cropprices
                           on fa.CropId equals cr.CropId
                           join bi in db.BiddingTables
                           on fa.FarmerSellID equals bi.FarmerSellID
                           orderby bi.date descending
                           select new { fa.FarmerSellID, fa.cropType, cr.cropname,cr.MSP,bi.bidAmount}).ToList();
            return Request.CreateResponse(HttpStatusCode.OK, biddingtab);//List<BidderSeeTable>
        }
    }
}
