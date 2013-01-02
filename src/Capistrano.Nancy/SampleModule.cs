namespace Capistrano.NancyFx
{
	public class SampleModule : Nancy.NancyModule
	{
		public SampleModule()
		{
			Get["/"] = _ => "Hello World!";
			Get["/home"] = _ => "Hello World!";
		}
	}
}