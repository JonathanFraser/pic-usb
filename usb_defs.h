#define	NUM_CONFIGURATIONS	1
#define	NUM_INTERFACES		1
#define NUM_STRINGS			2
#define MAX_PACKET_SIZE		8	// maximum packet size for low-speed peripherals is 8 bytes, for full-speed peripherals it can be 8, 16, 32, or 64 bytes

// Define the states that the USB interface can be in
#define	POWERED_STATE	0x00
#define	DEFAULT_STATE	0x01
#define	ADDRESS_STATE	0x02
#define	CONFIG_STATE	0x03

// Define the states for Control EndPoints
#define	EP_IDLE_STATE		0x00
#define	EP_SETUP_STATE		0x01
#define	EP_DISABLED_STATE	0xff

#define	ENDPT_DISABLED		0x00
#define ENDPT_IN_ONLY		0x12
#define ENDPT_OUT_ONLY		0x14
#define ENDPT_CONTROL		0x16	// enable for in, out and setup
#define ENDPT_NON_CONTROL	0x1E	// enable for in, and out

#define INT_STAT_MASK_RESET	0x01
#define INT_STAT_MASK_ERROR	0x02
#define INT_STAT_MASK_TOKEN_DONE	0x04
#define INT_STAT_MASK_SLEEP	0x08
#define INT_STAT_MASK_STALL	0x10

#define TOKEN_OUT	(0x01<<2)
#define TOKEN_ACK	(0x02<<2)
#define TOKEN_IN	(0x09<<2)
#define TOKEN_SETUP	(0x0D<<2)

// standard descriptor types
#define	DEVICE		1
#define	CONFIGURATION	2
#define	STRING		3
#define	INTERFACE	4
#define	ENDPOINT	5

// HID class descriptor types
#define HID			0x21
#define REPORT		0x22
#define PHYSICAL	0x23

// offsets from the beginning of the setup data record
#define	bmRequestType	0x00
#define	bRequest	0x01
#define	wValue		0x02
#define	wValueHigh	0x03
#define	wIndex		0x04
#define	wIndexHigh	0x05
#define	wLength		0x06
#define	wLengthHigh	0x07

// Standard USB requests
#define NO_REQUEST		0xFF
#define	GET_STATUS		0x00
#define	CLEAR_FEATURE	0x01
#define	SET_FEATURE		0x03
#define	SET_ADDRESS		0x05
#define	GET_DESCRIPTOR	0x06
#define SET_DESCRIPTOR	0x07
#define	GET_CONFIGURATION	0x08
#define	SET_CONFIGURATION	0x09
#define	GET_INTERFACE	0x0A
#define	SET_INTERFACE	0x0B
#define SYNCH_FRAME		0x0C

// HID Class requests
#define GET_REPORT		0x01
#define GET_IDLE		0x02
#define GET_PROTOCOL	0x03
#define SET_REPORT		0x09
#define SET_IDLE		0x0A
#define SET_PROTOCOL	0x0B

#define	GET_STRING_DESCRIPTOR	0x66
#define	HID_SET_REPORT		0x21
#define	VEND_SET_MEMORY		0x80

#define	SVCUSBINT		0x01 << 2
#define	SVCTOKENDONE		0x02 << 2
#define	SVCRESET		0x03 << 2
#define	SVCSLEEP		0x04 << 2
#define	SVCSTALL		0x05 << 2
#define	SVCERROR		0x06 << 2
#define	SVCACTIVITY		0x07 << 2
#define	TOKENOUT		0x08 << 2
#define	TOKENIN			0x09 << 2
#define	TOKENSETUP		0x0A << 2
#define	CLEARFEATURE		0x0B << 2
#define	GETCONFIG		0x0C << 2
#define	GETDESCRIPTOR		0x0D << 2
#define	GETINTERFACE		0x0E << 2
#define	GETSTATUS		0x0F << 2
#define	SETADDRESS		0x10 << 2
#define	SETCONFIG		0x11 << 2
#define	SETFEATURE		0x12 << 2
#define	SETINTERFACE		0x13 << 2
#define	FINISHSETADDRESS	0x14 << 2
#define	COPYDESC2EP0		0x15 << 2
#define	COPYSTRINGDESC2EP0	0x16 << 2
#define	ZEROLENPACKET		0x17 << 2

#define EP0				0x00 << 3
#define EP1				0x01 << 3
#define EP2				0x02 << 3
#define EP3				0x03 << 3
#define EP4				0x04 << 3
#define EP5				0x05 << 3
#define EP6				0x06 << 3
#define EP7				0x07 << 3
#define EP8				0x08 << 3
#define EP9				0x09 << 3
#define EP10				0x0A << 3
#define EP11				0x0B << 3
#define EP12				0x0C << 3
#define EP13				0x0D << 3
#define EP14				0x0E << 3
#define EP15				0x0F << 3


#define STANDARD		0x00 << 5
#define CLASS			0x01 << 5
#define VENDOR			0x02 << 5

#define RECIPIENT_DEVICE	0x00
#define RECIPIENT_INTERFACE	0x01
#define RECIPIENT_ENDPOINT	0x02

#define DEVICE_REMOTE_WAKEUP	0x01
#define ENDPOINT_HALT		0x00

#define BD_BASE 0x400
#define EP_BUFFER_BASE 0x480

typedef struct BUFDESC {
	unsigned char status;
	unsigned char bytecount;
	__data unsigned char *address;
} BUFDESC;

volatile BUFDESC at (BD_BASE+4*0) BD0O;
volatile BUFDESC at (BD_BASE+4*1) BD0I;
volatile BUFDESC at (BD_BASE+4*2) BD1O;
volatile BUFDESC at (BD_BASE+4*3) BD1I;
volatile BUFDESC at (BD_BASE+4*4) BD2O;
volatile BUFDESC at (BD_BASE+4*5) BD2I;
volatile BUFDESC at (BD_BASE+4*6) BD3O;
volatile BUFDESC at (BD_BASE+4*7) BD3I;
volatile BUFDESC at (BD_BASE+4*8) BD4O;
volatile BUFDESC at (BD_BASE+4*9) BD4I;
volatile BUFDESC at (BD_BASE+4*10) BD5O;
volatile BUFDESC at (BD_BASE+4*11) BD5I;
volatile BUFDESC at (BD_BASE+4*12) BD6O;
volatile BUFDESC at (BD_BASE+4*13) BD6I;
volatile BUFDESC at (BD_BASE+4*14) BD7O;
volatile BUFDESC at (BD_BASE+4*15) BD7I;
volatile BUFDESC at (BD_BASE+4*16) BD8O;
volatile BUFDESC at (BD_BASE+4*17) BD8I;
volatile BUFDESC at (BD_BASE+4*18) BD9O;
volatile BUFDESC at (BD_BASE+4*19) BD9I;
volatile BUFDESC at (BD_BASE+4*20) BD10O;
volatile BUFDESC at (BD_BASE+4*21) BD10I;
volatile BUFDESC at (BD_BASE+4*22) BD11O;
volatile BUFDESC at (BD_BASE+4*23) BD11I;
volatile BUFDESC at (BD_BASE+4*24) BD12O;
volatile BUFDESC at (BD_BASE+4*25) BD12I;
volatile BUFDESC at (BD_BASE+4*26) BD13O;
volatile BUFDESC at (BD_BASE+4*27) BD13I;
volatile BUFDESC at (BD_BASE+4*28) BD14O;
volatile BUFDESC at (BD_BASE+4*29) BD14I;
volatile BUFDESC at (BD_BASE+4*30) BD15O;
volatile BUFDESC at (BD_BASE+4*31) BD15I;

__data volatile unsigned char at (EP_BUFFER_BASE+0*MAX_PACKET_SIZE) EP0_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+1*MAX_PACKET_SIZE) EP0_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+2*MAX_PACKET_SIZE) EP1_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+3*MAX_PACKET_SIZE) EP1_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+4*MAX_PACKET_SIZE) EP2_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+5*MAX_PACKET_SIZE) EP2_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+6*MAX_PACKET_SIZE) EP3_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+7*MAX_PACKET_SIZE) EP3_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+8*MAX_PACKET_SIZE) EP4_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+9*MAX_PACKET_SIZE) EP4_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+10*MAX_PACKET_SIZE) EP5_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+11*MAX_PACKET_SIZE) EP5_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+12*MAX_PACKET_SIZE) EP6_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+13*MAX_PACKET_SIZE) EP6_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+14*MAX_PACKET_SIZE) EP7_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+15*MAX_PACKET_SIZE) EP7_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+16*MAX_PACKET_SIZE) EP8_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+17*MAX_PACKET_SIZE) EP8_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+18*MAX_PACKET_SIZE) EP9_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+19*MAX_PACKET_SIZE) EP9_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+20*MAX_PACKET_SIZE) EP10_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+21*MAX_PACKET_SIZE) EP10_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+22*MAX_PACKET_SIZE) EP11_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+23*MAX_PACKET_SIZE) EP11_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+24*MAX_PACKET_SIZE) EP12_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+25*MAX_PACKET_SIZE) EP12_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+26*MAX_PACKET_SIZE) EP13_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+27*MAX_PACKET_SIZE) EP13_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+28*MAX_PACKET_SIZE) EP14_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+29*MAX_PACKET_SIZE) EP14_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+30*MAX_PACKET_SIZE) EP15_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (EP_BUFFER_BASE+31*MAX_PACKET_SIZE) EP15_IN_buffer[MAX_PACKET_SIZE];

void ProcessSetupToken(void);
void ProcessInToken(void);
void ProcessOutToken(void);
void StandardRequests(void);
void ClassRequests(void);
void VendorRequests(void);
void SendDescriptorPacket(void);
