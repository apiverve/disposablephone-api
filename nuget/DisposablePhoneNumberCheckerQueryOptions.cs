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
        /// The phone number to check in E.164 format (e.g., +12085813945)
        /// </summary>
        [JsonProperty("phone")]
        public string Phone { get; set; }
    }
}
