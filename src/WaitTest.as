package
{
	import flash.display.Sprite;
	import flash.utils.getTimer;
	
	public class WaitTest extends Sprite
	{
		public function WaitTest()
		{
			traceTime();			
			Waiter.wait(1000);	
			traceTime();			
			Waiter.wait(3000);	
			traceTime();			
			Waiter.wait(2000);	
			traceTime();			
		}
		
		private function traceTime():void
		{
			trace("time : " + getTimer());
		}
	}
}