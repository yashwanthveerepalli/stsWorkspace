import java.net.InetAddress;
class test 
{
	public static void main(String[] args) throws Exception
	{
		
InetAddress Addr=InetAddress.getLocalHost();

String IpAddr=Addr.getHostAddress();

System.out.println(IpAddr);}
}
