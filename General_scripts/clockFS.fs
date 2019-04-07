
//#indent "off"
open System

[<EntryPoint>]
while true do 
    let timeNowUpToDate() = DateTime.Now.ToLongTimeString();
    Console.WriteLine(timeNowUpToDate());
    Threading.Thread.Sleep(1000);

// 00:00:00 XX
// 6:09:13 PM