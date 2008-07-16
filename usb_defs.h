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

typedef struct BUFDESC {
	unsigned char status;
	unsigned char bytecount;
	__data unsigned char *address;
} BUFDESC;

volatile BUFDESC at (0x400) BD0O;
volatile BUFDESC at (0x404) BD0I;
volatile BUFDESC at (0x408) BD1O;
volatile BUFDESC at (0x40C) BD1I;
volatile BUFDESC at (0x410) BD2O;
volatile BUFDESC at (0x414) BD2I;
volatile BUFDESC at (0x418) BD3O;
volatile BUFDESC at (0x41C) BD3I;
volatile BUFDESC at (0x420) BD4O;
volatile BUFDESC at (0x424) BD4I;
volatile BUFDESC at (0x428) BD5O;
volatile BUFDESC at (0x42C) BD5I;
volatile BUFDESC at (0x430) BD6O;
volatile BUFDESC at (0x434) BD6I;
volatile BUFDESC at (0x438) BD7O;
volatile BUFDESC at (0x43C) BD7I;
volatile BUFDESC at (0x440) BD8O;
volatile BUFDESC at (0x444) BD8I;
volatile BUFDESC at (0x448) BD9O;
volatile BUFDESC at (0x44C) BD9I;
volatile BUFDESC at (0x450) BD10O;
volatile BUFDESC at (0x454) BD10I;
volatile BUFDESC at (0x458) BD11O;
volatile BUFDESC at (0x45C) BD11I;
volatile BUFDESC at (0x460) BD12O;
volatile BUFDESC at (0x464) BD12I;
volatile BUFDESC at (0x468) BD13O;
volatile BUFDESC at (0x46C) BD13I;
volatile BUFDESC at (0x470) BD14O;
volatile BUFDESC at (0x474) BD14I;
volatile BUFDESC at (0x478) BD15O;
volatile BUFDESC at (0x47C) BD15I;

__data volatile unsigned char at (0x480) EP0_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x488) EP0_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x490) EP1_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x498) EP1_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A0) EP2_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A8) EP2_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x480) EP3_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x488) EP3_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x490) EP4_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x498) EP4_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A0) EP5_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A8) EP5_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x480) EP6_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x488) EP6_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x490) EP7_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x498) EP7_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A0) EP8_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A8) EP8_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x480) EP9_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x488) EP9_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x490) EP10_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x498) EP10_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A0) EP11_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A8) EP11_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x480) EP12_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x488) EP12_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x490) EP13_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x498) EP13_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A0) EP14_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x4A8) EP14_IN_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x480) EP15_OUT_buffer[MAX_PACKET_SIZE];
__data volatile unsigned char at (0x488) EP15_IN_buffer[MAX_PACKET_SIZE];

void ProcessSetupToken(void);
void ProcessInToken(void);
void ProcessOutToken(void);
void StandardRequests(void);
void ClassRequests(void);
void VendorRequests(void);
void SendDescriptorPacket(void);
