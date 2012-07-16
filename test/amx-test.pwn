#include "amx"

main() {
	new hea = 0;
	new stp = 0;

	#emit lctrl 2
	#emit stor.s.pri hea
	#emit lctrl 3
	#emit stor.s.pri stp

	// Read values STK and STPr; they should be equal to those returned by LCTRL.
	new hea_amx = ReadAmxCell(AMX_OFFSET_HEA);
	new stp_amx = ReadAmxCell(AMX_OFFSET_STP);

	// This must output:
	// 1
	// 1
	printf("%d", hea_amx == hea);
	printf("%d", stp_amx == stp);
}
