using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

namespace Com.Expload.Program {
    [System.Serializable]
    class IntResult {
       public int value;
       public string tpe;

       public static IntResult FromJson(string json) {
           return JsonUtility.FromJson<IntResult>(json);
       }
    }

    abstract class ProgramRequest<T>
    {
        public byte[] ProgramAddress { get; protected set; }

        public T Result { get; protected set; }
        public string Error { get; protected set; }
        public bool IsError { get; protected set; }

        protected ProgramRequest(byte[] programAddress)
        {
            ProgramAddress = programAddress;
            IsError = false;
            Error = "";
        }

        protected abstract T ParseResult(string json);

        protected IEnumerator SendJson(string json)
        {
            UnityWebRequest www = UnityWebRequest.Put("localhost:8087/api/program/method", json);
            www.method = "POST";
            www.SetRequestHeader("Content-Type", "application/json");

            yield return www.SendWebRequest();

            if (www.isNetworkError || www.isHttpError)
            {
                IsError = true;
                Error = www.error;
            }
            else
            {
                try
                {
                    Result = ParseResult(www.downloadHandler.text);
                }
                catch (ArgumentException e)
                {
                    IsError = true;
                    Error = "Invalid JSON: " + www.downloadHandler.text + "\n" + e.Message;
                }
            }
        }
    }

    class Get_highest_combinationRequest: ProgramRequest<int> {

        public Get_highest_combinationRequest(byte[] programAddress) : base(programAddress) { }

        protected override int ParseResult(string json)
        {
            return IntResult.FromJson(json).value;
        }

        public IEnumerator Get_highest_combination(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6)
        {
            String json = String.Format("{{ \"address\": {0}, \"method\": \"get_highest_combination\", \"args\": [{{ \"value\": {1}, \"tpe\": \"int32\" }}, {{ \"value\": {2}, \"tpe\": \"int32\" }}, {{ \"value\": {3}, \"tpe\": \"int32\" }}, {{ \"value\": {4}, \"tpe\": \"int32\" }}, {{ \"value\": {5}, \"tpe\": \"int32\" }}, {{ \"value\": {6}, \"tpe\": \"int32\" }}, {{ \"value\": {7}, \"tpe\": \"int32\" }}] }}",  "\"" + BitConverter.ToString(ProgramAddress).Replace("-","") + "\"" , arg0, arg1, arg2, arg3, arg4, arg5, arg6);
            yield return SendJson(json);
        }
    }
    class Get_combination_valueRequest: ProgramRequest<int> {

        public Get_combination_valueRequest(byte[] programAddress) : base(programAddress) { }

        protected override int ParseResult(string json)
        {
            return IntResult.FromJson(json).value;
        }

        public IEnumerator Get_combination_value(int arg0, int arg1, int arg2, int arg3, int arg4)
        {
            String json = String.Format("{{ \"address\": {0}, \"method\": \"get_combination_value\", \"args\": [{{ \"value\": {1}, \"tpe\": \"int32\" }}, {{ \"value\": {2}, \"tpe\": \"int32\" }}, {{ \"value\": {3}, \"tpe\": \"int32\" }}, {{ \"value\": {4}, \"tpe\": \"int32\" }}, {{ \"value\": {5}, \"tpe\": \"int32\" }}] }}",  "\"" + BitConverter.ToString(ProgramAddress).Replace("-","") + "\"" , arg0, arg1, arg2, arg3, arg4);
            yield return SendJson(json);
        }
    }
}