using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.DisposablePhoneNumberChecker
{
    /// <summary>
    /// Query options for the Disposable Phone Number Checker API
    /// </summary>
    public class DisposablePhoneNumberCheckerQueryOptions
    {
        /// <summary>
        /// The phone number to check, in E.164 format (e.g., +12085813945), or in national format together with country
        /// </summary>
        [JsonProperty("phone")]
        public string Phone { get; set; }

        /// <summary>
        /// Two-letter ISO country code for a number given in national format (e.g., GB for 07700 900123). Not needed for E.164 numbers
        /// </summary>
        [JsonProperty("country")]
        public string Country { get; set; }
    }
}
