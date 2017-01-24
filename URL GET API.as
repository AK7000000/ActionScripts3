import flash.net.*;
import flash.events.Event;

 function URLRequest_method():void 
 { 
	   var url:String = "http://smspva.com/priemnik.php"; 
	   var postParams:URLVariables = new URLVariables("metod=get_balance&service=opt4&apikey=HPQjg2cyfY2KhkyAjJftsv9qJTtuZU");

        var request:URLRequest = new URLRequest(url);
        request.method = URLRequestMethod.GET;
        request.data = postParams;

        var urlLoader:URLLoader = new URLLoader();

        urlLoader.addEventListener(Event.COMPLETE, onLoaderComplete);
        urlLoader.load(request);

}

function onLoaderComplete( event:Event ):void
{
        var urlLoader2:URLLoader = event.target as URLLoader;
        trace( urlLoader2.data );

        var json:Object = JSON.parse( urlLoader2.data );
        trace( "json.response = ", json.response );
        trace( "json.balance = ", json.balance );
}

URLRequest_method();