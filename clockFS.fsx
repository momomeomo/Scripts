
//#indent "off"
open System

[<EntryPoint>]

Console.BackgroundColor<-ConsoleColor.Black;
Console.ForegroundColor<-ConsoleColor.Red;

(*

let date1 = DateTime.Now;
let date2 = DateTime(2009, 8, 1, 12, 0, 0);
let result = DateTime.Compare(date1, date2);

if result < 0 then
   Console.BackgroundColor<-ConsoleColor.Blue;
else if result = 0 then
   Console.BackgroundColor<-ConsoleColor.Red;
else
   Console.BackgroundColor<-ConsoleColor.Green;

Console.WriteLine("{0} {1} {2}", date1, "  @@@@  ", date2);

*)

while true do
    System.Console.Clear();
    let timeNowUpToDate() = DateTime.Now.ToLongTimeString();
    Console.WriteLine(" ");
    Console.WriteLine(timeNowUpToDate());
    Console.WriteLine("__________");
    Threading.Thread.Sleep(499);


// 00:00:00 XX

// 
// 6:09:13 PM
// __________