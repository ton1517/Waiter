package
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.system.MessageChannel;
	import flash.system.Worker;
	import flash.utils.Timer;
	
	public class WaitWorker extends Sprite
	{
		private var outchannel:MessageChannel;
		
		public function WaitWorker()
		{
			super();
			
			outchannel = Worker.current.getSharedProperty("channel");
			
			var time:Number = Worker.current.getSharedProperty("time") as Number;

			var timer:Timer = new Timer(time, 1);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, timerComplete);
			timer.start();
		}
		
		protected function timerComplete(event:TimerEvent):void
		{
			outchannel.send("complete");
		}
	}
}