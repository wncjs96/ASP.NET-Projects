using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace TEAMUP_FRAMEWORK_WEBFORM
{
    public class MemberController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<memberTBL> Get()
        {
            using (anymateDBEntities entities = new anymateDBEntities())
            {
                entities.Configuration.ProxyCreationEnabled = false;
                return entities.memberTBLs.ToList();
            }
        }

        // GET api/<controller>/5
        public memberTBL Get(int id)
        {
            using (anymateDBEntities entities = new anymateDBEntities())
            {
                entities.Configuration.ProxyCreationEnabled = false;
                return entities.memberTBLs.FirstOrDefault(e => e.memberID == id.ToString());
            }
        }

        // POST api/<controller>
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}