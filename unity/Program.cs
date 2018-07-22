using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

namespace Com.Expload.Program {
    [System.Serializable]
    class StringResult {
       public string value;
       public string tpe;

       public static StringResult FromJson(string json) {
           return JsonUtility.FromJson<StringResult>(json);
       }
    }
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

    class DealRequest: ProgramRequest<object> {

        public DealRequest(byte[] programAddress) : base(programAddress) { }

        protected override object ParseResult(string json)
        {
            return null;
        }

        public IEnumerator Deal(byte[] arg0, byte[] arg1, byte[] arg2, byte[] arg3, byte[] arg4, byte[] arg5, byte[] arg6, byte[] arg7, byte[] arg8)
        {
            String json = String.Format("{{ \"address\": {0}, \"method\": \"deal\", \"args\": [{{ \"value\": {1}, \"tpe\": \"bytes\" }}, {{ \"value\": {2}, \"tpe\": \"bytes\" }}, {{ \"value\": {3}, \"tpe\": \"bytes\" }}, {{ \"value\": {4}, \"tpe\": \"bytes\" }}, {{ \"value\": {5}, \"tpe\": \"bytes\" }}, {{ \"value\": {6}, \"tpe\": \"bytes\" }}, {{ \"value\": {7}, \"tpe\": \"bytes\" }}, {{ \"value\": {8}, \"tpe\": \"bytes\" }}, {{ \"value\": {9}, \"tpe\": \"bytes\" }}] }}",  "\"" + BitConverter.ToString(ProgramAddress).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg0).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg1).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg2).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg3).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg4).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg5).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg6).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg7).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg8).Replace("-","") + "\"" );
            yield return SendJson(json);
        }
    }
    class DealPublicCardRequest: ProgramRequest<object> {

        public DealPublicCardRequest(byte[] programAddress) : base(programAddress) { }

        protected override object ParseResult(string json)
        {
            return null;
        }

        public IEnumerator DealPublicCard(int arg0)
        {
            String json = String.Format("{{ \"address\": {0}, \"method\": \"dealPublicCard\", \"args\": [{{ \"value\": {1}, \"tpe\": \"int32\" }}] }}",  "\"" + BitConverter.ToString(ProgramAddress).Replace("-","") + "\"" , arg0);
            yield return SendJson(json);
        }
    }
    class DealPrivateCardRequest: ProgramRequest<object> {

        public DealPrivateCardRequest(byte[] programAddress) : base(programAddress) { }

        protected override object ParseResult(string json)
        {
            return null;
        }

        public IEnumerator DealPrivateCard(int arg0, byte[] arg1)
        {
            String json = String.Format("{{ \"address\": {0}, \"method\": \"dealPrivateCard\", \"args\": [{{ \"value\": {1}, \"tpe\": \"int32\" }}, {{ \"value\": {2}, \"tpe\": \"bytes\" }}] }}",  "\"" + BitConverter.ToString(ProgramAddress).Replace("-","") + "\"" , arg0,  "\"" + BitConverter.ToString(arg1).Replace("-","") + "\"" );
            yield return SendJson(json);
        }
    }
    class ShowdownRequest: ProgramRequest<string> {

        public ShowdownRequest(byte[] programAddress) : base(programAddress) { }

        protected override string ParseResult(string json)
        {
            return StringResult.FromJson(json).value;
        }

        public IEnumerator Showdown(string arg0, byte[] arg1)
        {
            String json = String.Format("{{ \"address\": {0}, \"method\": \"showdown\", \"args\": [{{ \"value\": {1}, \"tpe\": \"utf8\" }}, {{ \"value\": {2}, \"tpe\": \"bytes\" }}] }}",  "\"" + BitConverter.ToString(ProgramAddress).Replace("-","") + "\"" ,  "\"" + arg0" + "\"" ,  "\"" + BitConverter.ToString(arg1).Replace("-","") + "\"" );
            yield return SendJson(json);
        }
    }
    class Create_playerRequest: ProgramRequest<object> {

        public Create_playerRequest(byte[] programAddress) : base(programAddress) { }

        protected override object ParseResult(string json)
        {
            return null;
        }

        public IEnumerator Create_player(byte[] arg0, int arg1)
        {
            String json = String.Format("{{ \"address\": {0}, \"method\": \"create_player\", \"args\": [{{ \"value\": {1}, \"tpe\": \"bytes\" }}, {{ \"value\": {2}, \"tpe\": \"int32\" }}] }}",  "\"" + BitConverter.ToString(ProgramAddress).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg0).Replace("-","") + "\"" , arg1);
            yield return SendJson(json);
        }
    }
    class Update_betRequest: ProgramRequest<string> {

        public Update_betRequest(byte[] programAddress) : base(programAddress) { }

        protected override string ParseResult(string json)
        {
            return StringResult.FromJson(json).value;
        }

        public IEnumerator Update_bet(byte[] arg0, int arg1)
        {
            String json = String.Format("{{ \"address\": {0}, \"method\": \"update_bet\", \"args\": [{{ \"value\": {1}, \"tpe\": \"bytes\" }}, {{ \"value\": {2}, \"tpe\": \"int32\" }}] }}",  "\"" + BitConverter.ToString(ProgramAddress).Replace("-","") + "\"" ,  "\"" + BitConverter.ToString(arg0).Replace("-","") + "\"" , arg1);
            yield return SendJson(json);
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