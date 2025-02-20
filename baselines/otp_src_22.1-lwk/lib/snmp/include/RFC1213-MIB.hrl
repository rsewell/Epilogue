%%% This file was automatically generated by snmpc_mib_to_hrl version 5.4
%%% Date: 17-Sep-2019::11:45:09
-ifndef('RFC1213-MIB').
-define('RFC1213-MIB', true).

%% Oids

-define('mib-2', [1,3,6,1,2,1]).

-define(system, [1,3,6,1,2,1,1]).
-define(sysDescr, [1,3,6,1,2,1,1,1]).
-define(sysDescr_instance, [1,3,6,1,2,1,1,1,0]).
-define(sysObjectID, [1,3,6,1,2,1,1,2]).
-define(sysObjectID_instance, [1,3,6,1,2,1,1,2,0]).
-define(sysUpTime, [1,3,6,1,2,1,1,3]).
-define(sysUpTime_instance, [1,3,6,1,2,1,1,3,0]).
-define(sysContact, [1,3,6,1,2,1,1,4]).
-define(sysContact_instance, [1,3,6,1,2,1,1,4,0]).
-define(sysName, [1,3,6,1,2,1,1,5]).
-define(sysName_instance, [1,3,6,1,2,1,1,5,0]).
-define(sysLocation, [1,3,6,1,2,1,1,6]).
-define(sysLocation_instance, [1,3,6,1,2,1,1,6,0]).
-define(sysServices, [1,3,6,1,2,1,1,7]).
-define(sysServices_instance, [1,3,6,1,2,1,1,7,0]).

-define(interfaces, [1,3,6,1,2,1,2]).
-define(ifNumber, [1,3,6,1,2,1,2,1]).
-define(ifNumber_instance, [1,3,6,1,2,1,2,1,0]).

-define(ifTable, [1,3,6,1,2,1,2,2]).

-define(ifEntry, [1,3,6,1,2,1,2,2,1]).
-define(ifIndex, 1).
-define(ifDescr, 2).
-define(ifType, 3).
-define(ifMtu, 4).
-define(ifSpeed, 5).
-define(ifPhysAddress, 6).
-define(ifAdminStatus, 7).
-define(ifOperStatus, 8).
-define(ifLastChange, 9).
-define(ifInOctets, 10).
-define(ifInUcastPkts, 11).
-define(ifInNUcastPkts, 12).
-define(ifInDiscards, 13).
-define(ifInErrors, 14).
-define(ifInUnknownProtos, 15).
-define(ifOutOctets, 16).
-define(ifOutUcastPkts, 17).
-define(ifOutNUcastPkts, 18).
-define(ifOutDiscards, 19).
-define(ifOutErrors, 20).
-define(ifOutQLen, 21).
-define(ifSpecific, 22).

-define(at, [1,3,6,1,2,1,3]).

-define(atTable, [1,3,6,1,2,1,3,1]).

-define(atEntry, [1,3,6,1,2,1,3,1,1]).
-define(atIfIndex, 1).
-define(atPhysAddress, 2).
-define(atNetAddress, 3).

-define(ip, [1,3,6,1,2,1,4]).
-define(ipForwarding, [1,3,6,1,2,1,4,1]).
-define(ipForwarding_instance, [1,3,6,1,2,1,4,1,0]).
-define(ipDefaultTTL, [1,3,6,1,2,1,4,2]).
-define(ipDefaultTTL_instance, [1,3,6,1,2,1,4,2,0]).
-define(ipInReceives, [1,3,6,1,2,1,4,3]).
-define(ipInReceives_instance, [1,3,6,1,2,1,4,3,0]).
-define(ipInHdrErrors, [1,3,6,1,2,1,4,4]).
-define(ipInHdrErrors_instance, [1,3,6,1,2,1,4,4,0]).
-define(ipInAddrErrors, [1,3,6,1,2,1,4,5]).
-define(ipInAddrErrors_instance, [1,3,6,1,2,1,4,5,0]).
-define(ipForwDatagrams, [1,3,6,1,2,1,4,6]).
-define(ipForwDatagrams_instance, [1,3,6,1,2,1,4,6,0]).
-define(ipInUnknownProtos, [1,3,6,1,2,1,4,7]).
-define(ipInUnknownProtos_instance, [1,3,6,1,2,1,4,7,0]).
-define(ipInDiscards, [1,3,6,1,2,1,4,8]).
-define(ipInDiscards_instance, [1,3,6,1,2,1,4,8,0]).
-define(ipInDelivers, [1,3,6,1,2,1,4,9]).
-define(ipInDelivers_instance, [1,3,6,1,2,1,4,9,0]).
-define(ipOutRequests, [1,3,6,1,2,1,4,10]).
-define(ipOutRequests_instance, [1,3,6,1,2,1,4,10,0]).
-define(ipOutDiscards, [1,3,6,1,2,1,4,11]).
-define(ipOutDiscards_instance, [1,3,6,1,2,1,4,11,0]).
-define(ipOutNoRoutes, [1,3,6,1,2,1,4,12]).
-define(ipOutNoRoutes_instance, [1,3,6,1,2,1,4,12,0]).
-define(ipReasmTimeout, [1,3,6,1,2,1,4,13]).
-define(ipReasmTimeout_instance, [1,3,6,1,2,1,4,13,0]).
-define(ipReasmReqds, [1,3,6,1,2,1,4,14]).
-define(ipReasmReqds_instance, [1,3,6,1,2,1,4,14,0]).
-define(ipReasmOKs, [1,3,6,1,2,1,4,15]).
-define(ipReasmOKs_instance, [1,3,6,1,2,1,4,15,0]).
-define(ipReasmFails, [1,3,6,1,2,1,4,16]).
-define(ipReasmFails_instance, [1,3,6,1,2,1,4,16,0]).
-define(ipFragOKs, [1,3,6,1,2,1,4,17]).
-define(ipFragOKs_instance, [1,3,6,1,2,1,4,17,0]).
-define(ipFragFails, [1,3,6,1,2,1,4,18]).
-define(ipFragFails_instance, [1,3,6,1,2,1,4,18,0]).
-define(ipFragCreates, [1,3,6,1,2,1,4,19]).
-define(ipFragCreates_instance, [1,3,6,1,2,1,4,19,0]).

-define(ipAddrTable, [1,3,6,1,2,1,4,20]).

-define(ipAddrEntry, [1,3,6,1,2,1,4,20,1]).
-define(ipAdEntAddr, 1).
-define(ipAdEntIfIndex, 2).
-define(ipAdEntNetMask, 3).
-define(ipAdEntBcastAddr, 4).
-define(ipAdEntReasmMaxSize, 5).

-define(ipRouteTable, [1,3,6,1,2,1,4,21]).

-define(ipRouteEntry, [1,3,6,1,2,1,4,21,1]).
-define(ipRouteDest, 1).
-define(ipRouteIfIndex, 2).
-define(ipRouteMetric1, 3).
-define(ipRouteMetric2, 4).
-define(ipRouteMetric3, 5).
-define(ipRouteMetric4, 6).
-define(ipRouteNextHop, 7).
-define(ipRouteType, 8).
-define(ipRouteProto, 9).
-define(ipRouteAge, 10).
-define(ipRouteMask, 11).
-define(ipRouteMetric5, 12).
-define(ipRouteInfo, 13).

-define(ipNetToMediaTable, [1,3,6,1,2,1,4,22]).

-define(ipNetToMediaEntry, [1,3,6,1,2,1,4,22,1]).
-define(ipNetToMediaIfIndex, 1).
-define(ipNetToMediaPhysAddress, 2).
-define(ipNetToMediaNetAddress, 3).
-define(ipNetToMediaType, 4).
-define(ipRoutingDiscards, [1,3,6,1,2,1,4,23]).
-define(ipRoutingDiscards_instance, [1,3,6,1,2,1,4,23,0]).

-define(icmp, [1,3,6,1,2,1,5]).
-define(icmpInMsgs, [1,3,6,1,2,1,5,1]).
-define(icmpInMsgs_instance, [1,3,6,1,2,1,5,1,0]).
-define(icmpInErrors, [1,3,6,1,2,1,5,2]).
-define(icmpInErrors_instance, [1,3,6,1,2,1,5,2,0]).
-define(icmpInDestUnreachs, [1,3,6,1,2,1,5,3]).
-define(icmpInDestUnreachs_instance, [1,3,6,1,2,1,5,3,0]).
-define(icmpInTimeExcds, [1,3,6,1,2,1,5,4]).
-define(icmpInTimeExcds_instance, [1,3,6,1,2,1,5,4,0]).
-define(icmpInParmProbs, [1,3,6,1,2,1,5,5]).
-define(icmpInParmProbs_instance, [1,3,6,1,2,1,5,5,0]).
-define(icmpInSrcQuenchs, [1,3,6,1,2,1,5,6]).
-define(icmpInSrcQuenchs_instance, [1,3,6,1,2,1,5,6,0]).
-define(icmpInRedirects, [1,3,6,1,2,1,5,7]).
-define(icmpInRedirects_instance, [1,3,6,1,2,1,5,7,0]).
-define(icmpInEchos, [1,3,6,1,2,1,5,8]).
-define(icmpInEchos_instance, [1,3,6,1,2,1,5,8,0]).
-define(icmpInEchoReps, [1,3,6,1,2,1,5,9]).
-define(icmpInEchoReps_instance, [1,3,6,1,2,1,5,9,0]).
-define(icmpInTimestamps, [1,3,6,1,2,1,5,10]).
-define(icmpInTimestamps_instance, [1,3,6,1,2,1,5,10,0]).
-define(icmpInTimestampReps, [1,3,6,1,2,1,5,11]).
-define(icmpInTimestampReps_instance, [1,3,6,1,2,1,5,11,0]).
-define(icmpInAddrMasks, [1,3,6,1,2,1,5,12]).
-define(icmpInAddrMasks_instance, [1,3,6,1,2,1,5,12,0]).
-define(icmpInAddrMaskReps, [1,3,6,1,2,1,5,13]).
-define(icmpInAddrMaskReps_instance, [1,3,6,1,2,1,5,13,0]).
-define(icmpOutMsgs, [1,3,6,1,2,1,5,14]).
-define(icmpOutMsgs_instance, [1,3,6,1,2,1,5,14,0]).
-define(icmpOutErrors, [1,3,6,1,2,1,5,15]).
-define(icmpOutErrors_instance, [1,3,6,1,2,1,5,15,0]).
-define(icmpOutDestUnreachs, [1,3,6,1,2,1,5,16]).
-define(icmpOutDestUnreachs_instance, [1,3,6,1,2,1,5,16,0]).
-define(icmpOutTimeExcds, [1,3,6,1,2,1,5,17]).
-define(icmpOutTimeExcds_instance, [1,3,6,1,2,1,5,17,0]).
-define(icmpOutParmProbs, [1,3,6,1,2,1,5,18]).
-define(icmpOutParmProbs_instance, [1,3,6,1,2,1,5,18,0]).
-define(icmpOutSrcQuenchs, [1,3,6,1,2,1,5,19]).
-define(icmpOutSrcQuenchs_instance, [1,3,6,1,2,1,5,19,0]).
-define(icmpOutRedirects, [1,3,6,1,2,1,5,20]).
-define(icmpOutRedirects_instance, [1,3,6,1,2,1,5,20,0]).
-define(icmpOutEchos, [1,3,6,1,2,1,5,21]).
-define(icmpOutEchos_instance, [1,3,6,1,2,1,5,21,0]).
-define(icmpOutEchoReps, [1,3,6,1,2,1,5,22]).
-define(icmpOutEchoReps_instance, [1,3,6,1,2,1,5,22,0]).
-define(icmpOutTimestamps, [1,3,6,1,2,1,5,23]).
-define(icmpOutTimestamps_instance, [1,3,6,1,2,1,5,23,0]).
-define(icmpOutTimestampReps, [1,3,6,1,2,1,5,24]).
-define(icmpOutTimestampReps_instance, [1,3,6,1,2,1,5,24,0]).
-define(icmpOutAddrMasks, [1,3,6,1,2,1,5,25]).
-define(icmpOutAddrMasks_instance, [1,3,6,1,2,1,5,25,0]).
-define(icmpOutAddrMaskReps, [1,3,6,1,2,1,5,26]).
-define(icmpOutAddrMaskReps_instance, [1,3,6,1,2,1,5,26,0]).

-define(tcp, [1,3,6,1,2,1,6]).
-define(tcpRtoAlgorithm, [1,3,6,1,2,1,6,1]).
-define(tcpRtoAlgorithm_instance, [1,3,6,1,2,1,6,1,0]).
-define(tcpRtoMin, [1,3,6,1,2,1,6,2]).
-define(tcpRtoMin_instance, [1,3,6,1,2,1,6,2,0]).
-define(tcpRtoMax, [1,3,6,1,2,1,6,3]).
-define(tcpRtoMax_instance, [1,3,6,1,2,1,6,3,0]).
-define(tcpMaxConn, [1,3,6,1,2,1,6,4]).
-define(tcpMaxConn_instance, [1,3,6,1,2,1,6,4,0]).
-define(tcpActiveOpens, [1,3,6,1,2,1,6,5]).
-define(tcpActiveOpens_instance, [1,3,6,1,2,1,6,5,0]).
-define(tcpPassiveOpens, [1,3,6,1,2,1,6,6]).
-define(tcpPassiveOpens_instance, [1,3,6,1,2,1,6,6,0]).
-define(tcpAttemptFails, [1,3,6,1,2,1,6,7]).
-define(tcpAttemptFails_instance, [1,3,6,1,2,1,6,7,0]).
-define(tcpEstabResets, [1,3,6,1,2,1,6,8]).
-define(tcpEstabResets_instance, [1,3,6,1,2,1,6,8,0]).
-define(tcpCurrEstab, [1,3,6,1,2,1,6,9]).
-define(tcpCurrEstab_instance, [1,3,6,1,2,1,6,9,0]).
-define(tcpInSegs, [1,3,6,1,2,1,6,10]).
-define(tcpInSegs_instance, [1,3,6,1,2,1,6,10,0]).
-define(tcpOutSegs, [1,3,6,1,2,1,6,11]).
-define(tcpOutSegs_instance, [1,3,6,1,2,1,6,11,0]).
-define(tcpRetransSegs, [1,3,6,1,2,1,6,12]).
-define(tcpRetransSegs_instance, [1,3,6,1,2,1,6,12,0]).

-define(tcpConnTable, [1,3,6,1,2,1,6,13]).

-define(tcpConnEntry, [1,3,6,1,2,1,6,13,1]).
-define(tcpConnState, 1).
-define(tcpConnLocalAddress, 2).
-define(tcpConnLocalPort, 3).
-define(tcpConnRemAddress, 4).
-define(tcpConnRemPort, 5).
-define(tcpInErrs, [1,3,6,1,2,1,6,14]).
-define(tcpInErrs_instance, [1,3,6,1,2,1,6,14,0]).
-define(tcpOutRsts, [1,3,6,1,2,1,6,15]).
-define(tcpOutRsts_instance, [1,3,6,1,2,1,6,15,0]).

-define(udp, [1,3,6,1,2,1,7]).
-define(udpInDatagrams, [1,3,6,1,2,1,7,1]).
-define(udpInDatagrams_instance, [1,3,6,1,2,1,7,1,0]).
-define(udpNoPorts, [1,3,6,1,2,1,7,2]).
-define(udpNoPorts_instance, [1,3,6,1,2,1,7,2,0]).
-define(udpInErrors, [1,3,6,1,2,1,7,3]).
-define(udpInErrors_instance, [1,3,6,1,2,1,7,3,0]).
-define(udpOutDatagrams, [1,3,6,1,2,1,7,4]).
-define(udpOutDatagrams_instance, [1,3,6,1,2,1,7,4,0]).

-define(udpTable, [1,3,6,1,2,1,7,5]).

-define(udpEntry, [1,3,6,1,2,1,7,5,1]).
-define(udpLocalAddress, 1).
-define(udpLocalPort, 2).

-define(egp, [1,3,6,1,2,1,8]).
-define(egpInMsgs, [1,3,6,1,2,1,8,1]).
-define(egpInMsgs_instance, [1,3,6,1,2,1,8,1,0]).
-define(egpInErrors, [1,3,6,1,2,1,8,2]).
-define(egpInErrors_instance, [1,3,6,1,2,1,8,2,0]).
-define(egpOutMsgs, [1,3,6,1,2,1,8,3]).
-define(egpOutMsgs_instance, [1,3,6,1,2,1,8,3,0]).
-define(egpOutErrors, [1,3,6,1,2,1,8,4]).
-define(egpOutErrors_instance, [1,3,6,1,2,1,8,4,0]).

-define(egpNeighTable, [1,3,6,1,2,1,8,5]).

-define(egpNeighEntry, [1,3,6,1,2,1,8,5,1]).
-define(egpNeighState, 1).
-define(egpNeighAddr, 2).
-define(egpNeighAs, 3).
-define(egpNeighInMsgs, 4).
-define(egpNeighInErrs, 5).
-define(egpNeighOutMsgs, 6).
-define(egpNeighOutErrs, 7).
-define(egpNeighInErrMsgs, 8).
-define(egpNeighOutErrMsgs, 9).
-define(egpNeighStateUps, 10).
-define(egpNeighStateDowns, 11).
-define(egpNeighIntervalHello, 12).
-define(egpNeighIntervalPoll, 13).
-define(egpNeighMode, 14).
-define(egpNeighEventTrigger, 15).
-define(egpAs, [1,3,6,1,2,1,8,6]).
-define(egpAs_instance, [1,3,6,1,2,1,8,6,0]).

-define(transmission, [1,3,6,1,2,1,10]).

-define(snmp, [1,3,6,1,2,1,11]).
-define(snmpInPkts, [1,3,6,1,2,1,11,1]).
-define(snmpInPkts_instance, [1,3,6,1,2,1,11,1,0]).
-define(snmpOutPkts, [1,3,6,1,2,1,11,2]).
-define(snmpOutPkts_instance, [1,3,6,1,2,1,11,2,0]).
-define(snmpInBadVersions, [1,3,6,1,2,1,11,3]).
-define(snmpInBadVersions_instance, [1,3,6,1,2,1,11,3,0]).
-define(snmpInBadCommunityNames, [1,3,6,1,2,1,11,4]).
-define(snmpInBadCommunityNames_instance, [1,3,6,1,2,1,11,4,0]).
-define(snmpInBadCommunityUses, [1,3,6,1,2,1,11,5]).
-define(snmpInBadCommunityUses_instance, [1,3,6,1,2,1,11,5,0]).
-define(snmpInASNParseErrs, [1,3,6,1,2,1,11,6]).
-define(snmpInASNParseErrs_instance, [1,3,6,1,2,1,11,6,0]).
-define(snmpInTooBigs, [1,3,6,1,2,1,11,8]).
-define(snmpInTooBigs_instance, [1,3,6,1,2,1,11,8,0]).
-define(snmpInNoSuchNames, [1,3,6,1,2,1,11,9]).
-define(snmpInNoSuchNames_instance, [1,3,6,1,2,1,11,9,0]).
-define(snmpInBadValues, [1,3,6,1,2,1,11,10]).
-define(snmpInBadValues_instance, [1,3,6,1,2,1,11,10,0]).
-define(snmpInReadOnlys, [1,3,6,1,2,1,11,11]).
-define(snmpInReadOnlys_instance, [1,3,6,1,2,1,11,11,0]).
-define(snmpInGenErrs, [1,3,6,1,2,1,11,12]).
-define(snmpInGenErrs_instance, [1,3,6,1,2,1,11,12,0]).
-define(snmpInTotalReqVars, [1,3,6,1,2,1,11,13]).
-define(snmpInTotalReqVars_instance, [1,3,6,1,2,1,11,13,0]).
-define(snmpInTotalSetVars, [1,3,6,1,2,1,11,14]).
-define(snmpInTotalSetVars_instance, [1,3,6,1,2,1,11,14,0]).
-define(snmpInGetRequests, [1,3,6,1,2,1,11,15]).
-define(snmpInGetRequests_instance, [1,3,6,1,2,1,11,15,0]).
-define(snmpInGetNexts, [1,3,6,1,2,1,11,16]).
-define(snmpInGetNexts_instance, [1,3,6,1,2,1,11,16,0]).
-define(snmpInSetRequests, [1,3,6,1,2,1,11,17]).
-define(snmpInSetRequests_instance, [1,3,6,1,2,1,11,17,0]).
-define(snmpInGetResponses, [1,3,6,1,2,1,11,18]).
-define(snmpInGetResponses_instance, [1,3,6,1,2,1,11,18,0]).
-define(snmpInTraps, [1,3,6,1,2,1,11,19]).
-define(snmpInTraps_instance, [1,3,6,1,2,1,11,19,0]).
-define(snmpOutTooBigs, [1,3,6,1,2,1,11,20]).
-define(snmpOutTooBigs_instance, [1,3,6,1,2,1,11,20,0]).
-define(snmpOutNoSuchNames, [1,3,6,1,2,1,11,21]).
-define(snmpOutNoSuchNames_instance, [1,3,6,1,2,1,11,21,0]).
-define(snmpOutBadValues, [1,3,6,1,2,1,11,22]).
-define(snmpOutBadValues_instance, [1,3,6,1,2,1,11,22,0]).
-define(snmpOutGenErrs, [1,3,6,1,2,1,11,24]).
-define(snmpOutGenErrs_instance, [1,3,6,1,2,1,11,24,0]).
-define(snmpOutGetRequests, [1,3,6,1,2,1,11,25]).
-define(snmpOutGetRequests_instance, [1,3,6,1,2,1,11,25,0]).
-define(snmpOutGetNexts, [1,3,6,1,2,1,11,26]).
-define(snmpOutGetNexts_instance, [1,3,6,1,2,1,11,26,0]).
-define(snmpOutSetRequests, [1,3,6,1,2,1,11,27]).
-define(snmpOutSetRequests_instance, [1,3,6,1,2,1,11,27,0]).
-define(snmpOutGetResponses, [1,3,6,1,2,1,11,28]).
-define(snmpOutGetResponses_instance, [1,3,6,1,2,1,11,28,0]).
-define(snmpOutTraps, [1,3,6,1,2,1,11,29]).
-define(snmpOutTraps_instance, [1,3,6,1,2,1,11,29,0]).
-define(snmpEnableAuthenTraps, [1,3,6,1,2,1,11,30]).
-define(snmpEnableAuthenTraps_instance, [1,3,6,1,2,1,11,30,0]).


%% Range values
-define(low_sysDescr, 0).
-define(high_sysDescr, 255).
-define(low_sysContact, 0).
-define(high_sysContact, 255).
-define(low_sysName, 0).
-define(high_sysName, 255).
-define(low_sysLocation, 0).
-define(high_sysLocation, 255).
-define(low_sysServices, 0).
-define(high_sysServices, 127).
-define(low_ifDescr, 0).
-define(high_ifDescr, 255).
-define(low_ifSpeed, 0).
-define(high_ifSpeed, 4294967295).
-define(low_ifInOctets, 0).
-define(high_ifInOctets, 4294967295).
-define(low_ifInUcastPkts, 0).
-define(high_ifInUcastPkts, 4294967295).
-define(low_ifInNUcastPkts, 0).
-define(high_ifInNUcastPkts, 4294967295).
-define(low_ifInDiscards, 0).
-define(high_ifInDiscards, 4294967295).
-define(low_ifInErrors, 0).
-define(high_ifInErrors, 4294967295).
-define(low_ifInUnknownProtos, 0).
-define(high_ifInUnknownProtos, 4294967295).
-define(low_ifOutOctets, 0).
-define(high_ifOutOctets, 4294967295).
-define(low_ifOutUcastPkts, 0).
-define(high_ifOutUcastPkts, 4294967295).
-define(low_ifOutNUcastPkts, 0).
-define(high_ifOutNUcastPkts, 4294967295).
-define(low_ifOutDiscards, 0).
-define(high_ifOutDiscards, 4294967295).
-define(low_ifOutErrors, 0).
-define(high_ifOutErrors, 4294967295).
-define(low_ifOutQLen, 0).
-define(high_ifOutQLen, 4294967295).
-define(low_ipInReceives, 0).
-define(high_ipInReceives, 4294967295).
-define(low_ipInHdrErrors, 0).
-define(high_ipInHdrErrors, 4294967295).
-define(low_ipInAddrErrors, 0).
-define(high_ipInAddrErrors, 4294967295).
-define(low_ipForwDatagrams, 0).
-define(high_ipForwDatagrams, 4294967295).
-define(low_ipInUnknownProtos, 0).
-define(high_ipInUnknownProtos, 4294967295).
-define(low_ipInDiscards, 0).
-define(high_ipInDiscards, 4294967295).
-define(low_ipInDelivers, 0).
-define(high_ipInDelivers, 4294967295).
-define(low_ipOutRequests, 0).
-define(high_ipOutRequests, 4294967295).
-define(low_ipOutDiscards, 0).
-define(high_ipOutDiscards, 4294967295).
-define(low_ipOutNoRoutes, 0).
-define(high_ipOutNoRoutes, 4294967295).
-define(low_ipReasmReqds, 0).
-define(high_ipReasmReqds, 4294967295).
-define(low_ipReasmOKs, 0).
-define(high_ipReasmOKs, 4294967295).
-define(low_ipReasmFails, 0).
-define(high_ipReasmFails, 4294967295).
-define(low_ipFragOKs, 0).
-define(high_ipFragOKs, 4294967295).
-define(low_ipFragFails, 0).
-define(high_ipFragFails, 4294967295).
-define(low_ipFragCreates, 0).
-define(high_ipFragCreates, 4294967295).
-define(low_ipAdEntReasmMaxSize, 0).
-define(high_ipAdEntReasmMaxSize, 65535).
-define(low_ipRoutingDiscards, 0).
-define(high_ipRoutingDiscards, 4294967295).
-define(low_icmpInMsgs, 0).
-define(high_icmpInMsgs, 4294967295).
-define(low_icmpInErrors, 0).
-define(high_icmpInErrors, 4294967295).
-define(low_icmpInDestUnreachs, 0).
-define(high_icmpInDestUnreachs, 4294967295).
-define(low_icmpInTimeExcds, 0).
-define(high_icmpInTimeExcds, 4294967295).
-define(low_icmpInParmProbs, 0).
-define(high_icmpInParmProbs, 4294967295).
-define(low_icmpInSrcQuenchs, 0).
-define(high_icmpInSrcQuenchs, 4294967295).
-define(low_icmpInRedirects, 0).
-define(high_icmpInRedirects, 4294967295).
-define(low_icmpInEchos, 0).
-define(high_icmpInEchos, 4294967295).
-define(low_icmpInEchoReps, 0).
-define(high_icmpInEchoReps, 4294967295).
-define(low_icmpInTimestamps, 0).
-define(high_icmpInTimestamps, 4294967295).
-define(low_icmpInTimestampReps, 0).
-define(high_icmpInTimestampReps, 4294967295).
-define(low_icmpInAddrMasks, 0).
-define(high_icmpInAddrMasks, 4294967295).
-define(low_icmpInAddrMaskReps, 0).
-define(high_icmpInAddrMaskReps, 4294967295).
-define(low_icmpOutMsgs, 0).
-define(high_icmpOutMsgs, 4294967295).
-define(low_icmpOutErrors, 0).
-define(high_icmpOutErrors, 4294967295).
-define(low_icmpOutDestUnreachs, 0).
-define(high_icmpOutDestUnreachs, 4294967295).
-define(low_icmpOutTimeExcds, 0).
-define(high_icmpOutTimeExcds, 4294967295).
-define(low_icmpOutParmProbs, 0).
-define(high_icmpOutParmProbs, 4294967295).
-define(low_icmpOutSrcQuenchs, 0).
-define(high_icmpOutSrcQuenchs, 4294967295).
-define(low_icmpOutRedirects, 0).
-define(high_icmpOutRedirects, 4294967295).
-define(low_icmpOutEchos, 0).
-define(high_icmpOutEchos, 4294967295).
-define(low_icmpOutEchoReps, 0).
-define(high_icmpOutEchoReps, 4294967295).
-define(low_icmpOutTimestamps, 0).
-define(high_icmpOutTimestamps, 4294967295).
-define(low_icmpOutTimestampReps, 0).
-define(high_icmpOutTimestampReps, 4294967295).
-define(low_icmpOutAddrMasks, 0).
-define(high_icmpOutAddrMasks, 4294967295).
-define(low_icmpOutAddrMaskReps, 0).
-define(high_icmpOutAddrMaskReps, 4294967295).
-define(low_tcpActiveOpens, 0).
-define(high_tcpActiveOpens, 4294967295).
-define(low_tcpPassiveOpens, 0).
-define(high_tcpPassiveOpens, 4294967295).
-define(low_tcpAttemptFails, 0).
-define(high_tcpAttemptFails, 4294967295).
-define(low_tcpEstabResets, 0).
-define(high_tcpEstabResets, 4294967295).
-define(low_tcpCurrEstab, 0).
-define(high_tcpCurrEstab, 4294967295).
-define(low_tcpInSegs, 0).
-define(high_tcpInSegs, 4294967295).
-define(low_tcpOutSegs, 0).
-define(high_tcpOutSegs, 4294967295).
-define(low_tcpRetransSegs, 0).
-define(high_tcpRetransSegs, 4294967295).
-define(low_tcpConnLocalPort, 0).
-define(high_tcpConnLocalPort, 65535).
-define(low_tcpConnRemPort, 0).
-define(high_tcpConnRemPort, 65535).
-define(low_tcpInErrs, 0).
-define(high_tcpInErrs, 4294967295).
-define(low_tcpOutRsts, 0).
-define(high_tcpOutRsts, 4294967295).
-define(low_udpInDatagrams, 0).
-define(high_udpInDatagrams, 4294967295).
-define(low_udpNoPorts, 0).
-define(high_udpNoPorts, 4294967295).
-define(low_udpInErrors, 0).
-define(high_udpInErrors, 4294967295).
-define(low_udpOutDatagrams, 0).
-define(high_udpOutDatagrams, 4294967295).
-define(low_udpLocalPort, 0).
-define(high_udpLocalPort, 65535).
-define(low_egpInMsgs, 0).
-define(high_egpInMsgs, 4294967295).
-define(low_egpInErrors, 0).
-define(high_egpInErrors, 4294967295).
-define(low_egpOutMsgs, 0).
-define(high_egpOutMsgs, 4294967295).
-define(low_egpOutErrors, 0).
-define(high_egpOutErrors, 4294967295).
-define(low_egpNeighInMsgs, 0).
-define(high_egpNeighInMsgs, 4294967295).
-define(low_egpNeighInErrs, 0).
-define(high_egpNeighInErrs, 4294967295).
-define(low_egpNeighOutMsgs, 0).
-define(high_egpNeighOutMsgs, 4294967295).
-define(low_egpNeighOutErrs, 0).
-define(high_egpNeighOutErrs, 4294967295).
-define(low_egpNeighInErrMsgs, 0).
-define(high_egpNeighInErrMsgs, 4294967295).
-define(low_egpNeighOutErrMsgs, 0).
-define(high_egpNeighOutErrMsgs, 4294967295).
-define(low_egpNeighStateUps, 0).
-define(high_egpNeighStateUps, 4294967295).
-define(low_egpNeighStateDowns, 0).
-define(high_egpNeighStateDowns, 4294967295).
-define(low_snmpInPkts, 0).
-define(high_snmpInPkts, 4294967295).
-define(low_snmpOutPkts, 0).
-define(high_snmpOutPkts, 4294967295).
-define(low_snmpInBadVersions, 0).
-define(high_snmpInBadVersions, 4294967295).
-define(low_snmpInBadCommunityNames, 0).
-define(high_snmpInBadCommunityNames, 4294967295).
-define(low_snmpInBadCommunityUses, 0).
-define(high_snmpInBadCommunityUses, 4294967295).
-define(low_snmpInASNParseErrs, 0).
-define(high_snmpInASNParseErrs, 4294967295).
-define(low_snmpInTooBigs, 0).
-define(high_snmpInTooBigs, 4294967295).
-define(low_snmpInNoSuchNames, 0).
-define(high_snmpInNoSuchNames, 4294967295).
-define(low_snmpInBadValues, 0).
-define(high_snmpInBadValues, 4294967295).
-define(low_snmpInReadOnlys, 0).
-define(high_snmpInReadOnlys, 4294967295).
-define(low_snmpInGenErrs, 0).
-define(high_snmpInGenErrs, 4294967295).
-define(low_snmpInTotalReqVars, 0).
-define(high_snmpInTotalReqVars, 4294967295).
-define(low_snmpInTotalSetVars, 0).
-define(high_snmpInTotalSetVars, 4294967295).
-define(low_snmpInGetRequests, 0).
-define(high_snmpInGetRequests, 4294967295).
-define(low_snmpInGetNexts, 0).
-define(high_snmpInGetNexts, 4294967295).
-define(low_snmpInSetRequests, 0).
-define(high_snmpInSetRequests, 4294967295).
-define(low_snmpInGetResponses, 0).
-define(high_snmpInGetResponses, 4294967295).
-define(low_snmpInTraps, 0).
-define(high_snmpInTraps, 4294967295).
-define(low_snmpOutTooBigs, 0).
-define(high_snmpOutTooBigs, 4294967295).
-define(low_snmpOutNoSuchNames, 0).
-define(high_snmpOutNoSuchNames, 4294967295).
-define(low_snmpOutBadValues, 0).
-define(high_snmpOutBadValues, 4294967295).
-define(low_snmpOutGenErrs, 0).
-define(high_snmpOutGenErrs, 4294967295).
-define(low_snmpOutGetRequests, 0).
-define(high_snmpOutGetRequests, 4294967295).
-define(low_snmpOutGetNexts, 0).
-define(high_snmpOutGetNexts, 4294967295).
-define(low_snmpOutSetRequests, 0).
-define(high_snmpOutSetRequests, 4294967295).
-define(low_snmpOutGetResponses, 0).
-define(high_snmpOutGetResponses, 4294967295).
-define(low_snmpOutTraps, 0).
-define(high_snmpOutTraps, 4294967295).


%% Enum definitions from ifType
-define('ifType_frame-relay', 32).
-define(ifType_sip, 31).
-define(ifType_ds3, 30).
-define(ifType_ultra, 29).
-define(ifType_slip, 28).
-define(ifType_nsip, 27).
-define('ifType_ethernet-3Mbit', 26).
-define(ifType_eon, 25).
-define(ifType_softwareLoopback, 24).
-define(ifType_ppp, 23).
-define(ifType_propPointToPointSerial, 22).
-define(ifType_primaryISDN, 21).
-define(ifType_basicISDN, 20).
-define(ifType_e1, 19).
-define(ifType_ds1, 18).
-define(ifType_sdlc, 17).
-define(ifType_lapb, 16).
-define(ifType_fddi, 15).
-define(ifType_hyperchannel, 14).
-define('ifType_proteon-80Mbit', 13).
-define('ifType_proteon-10Mbit', 12).
-define(ifType_starLan, 11).
-define('ifType_iso88026-man', 10).
-define('ifType_iso88025-tokenRing', 9).
-define('ifType_iso88024-tokenBus', 8).
-define('ifType_iso88023-csmacd', 7).
-define('ifType_ethernet-csmacd', 6).
-define('ifType_rfc877-x25', 5).
-define('ifType_ddn-x25', 4).
-define(ifType_hdh1822, 3).
-define(ifType_regular1822, 2).
-define(ifType_other, 1).

%% Enum definitions from ifAdminStatus
-define(ifAdminStatus_testing, 3).
-define(ifAdminStatus_down, 2).
-define(ifAdminStatus_up, 1).

%% Enum definitions from ifOperStatus
-define(ifOperStatus_testing, 3).
-define(ifOperStatus_down, 2).
-define(ifOperStatus_up, 1).

%% Enum definitions from ipForwarding
-define('ipForwarding_not-forwarding', 2).
-define(ipForwarding_forwarding, 1).

%% Enum definitions from ipRouteType
-define(ipRouteType_indirect, 4).
-define(ipRouteType_direct, 3).
-define(ipRouteType_invalid, 2).
-define(ipRouteType_other, 1).

%% Enum definitions from ipRouteProto
-define(ipRouteProto_bgp, 14).
-define(ipRouteProto_ospf, 13).
-define(ipRouteProto_bbnSpfIgp, 12).
-define(ipRouteProto_ciscoIgrp, 11).
-define('ipRouteProto_es-is', 10).
-define('ipRouteProto_is-is', 9).
-define(ipRouteProto_rip, 8).
-define(ipRouteProto_hello, 7).
-define(ipRouteProto_ggp, 6).
-define(ipRouteProto_egp, 5).
-define(ipRouteProto_icmp, 4).
-define(ipRouteProto_netmgmt, 3).
-define(ipRouteProto_local, 2).
-define(ipRouteProto_other, 1).

%% Enum definitions from ipNetToMediaType
-define(ipNetToMediaType_static, 4).
-define(ipNetToMediaType_dynamic, 3).
-define(ipNetToMediaType_invalid, 2).
-define(ipNetToMediaType_other, 1).

%% Enum definitions from tcpRtoAlgorithm
-define(tcpRtoAlgorithm_vanj, 4).
-define(tcpRtoAlgorithm_rsre, 3).
-define(tcpRtoAlgorithm_constant, 2).
-define(tcpRtoAlgorithm_other, 1).

%% Enum definitions from tcpConnState
-define(tcpConnState_deleteTCB, 12).
-define(tcpConnState_timeWait, 11).
-define(tcpConnState_closing, 10).
-define(tcpConnState_lastAck, 9).
-define(tcpConnState_closeWait, 8).
-define(tcpConnState_finWait2, 7).
-define(tcpConnState_finWait1, 6).
-define(tcpConnState_established, 5).
-define(tcpConnState_synReceived, 4).
-define(tcpConnState_synSent, 3).
-define(tcpConnState_listen, 2).
-define(tcpConnState_closed, 1).

%% Enum definitions from egpNeighState
-define(egpNeighState_cease, 5).
-define(egpNeighState_up, 4).
-define(egpNeighState_down, 3).
-define(egpNeighState_acquisition, 2).
-define(egpNeighState_idle, 1).

%% Enum definitions from egpNeighMode
-define(egpNeighMode_passive, 2).
-define(egpNeighMode_active, 1).

%% Enum definitions from egpNeighEventTrigger
-define(egpNeighEventTrigger_stop, 2).
-define(egpNeighEventTrigger_start, 1).

%% Enum definitions from snmpEnableAuthenTraps
-define(snmpEnableAuthenTraps_disabled, 2).
-define(snmpEnableAuthenTraps_enabled, 1).

%% Default values
-define(default_sysDescr, []).
-define(default_sysObjectID, [0,0]).
-define(default_sysUpTime, 0).
-define(default_sysContact, []).
-define(default_sysName, []).
-define(default_sysLocation, []).
-define(default_sysServices, 0).
-define(default_ifNumber, 0).
-define(default_ipForwarding, 1).
-define(default_ipDefaultTTL, 0).
-define(default_ipInReceives, 0).
-define(default_ipInHdrErrors, 0).
-define(default_ipInAddrErrors, 0).
-define(default_ipForwDatagrams, 0).
-define(default_ipInUnknownProtos, 0).
-define(default_ipInDiscards, 0).
-define(default_ipInDelivers, 0).
-define(default_ipOutRequests, 0).
-define(default_ipOutDiscards, 0).
-define(default_ipOutNoRoutes, 0).
-define(default_ipReasmTimeout, 0).
-define(default_ipReasmReqds, 0).
-define(default_ipReasmOKs, 0).
-define(default_ipReasmFails, 0).
-define(default_ipFragOKs, 0).
-define(default_ipFragFails, 0).
-define(default_ipFragCreates, 0).
-define(default_ipRoutingDiscards, 0).
-define(default_icmpInMsgs, 0).
-define(default_icmpInErrors, 0).
-define(default_icmpInDestUnreachs, 0).
-define(default_icmpInTimeExcds, 0).
-define(default_icmpInParmProbs, 0).
-define(default_icmpInSrcQuenchs, 0).
-define(default_icmpInRedirects, 0).
-define(default_icmpInEchos, 0).
-define(default_icmpInEchoReps, 0).
-define(default_icmpInTimestamps, 0).
-define(default_icmpInTimestampReps, 0).
-define(default_icmpInAddrMasks, 0).
-define(default_icmpInAddrMaskReps, 0).
-define(default_icmpOutMsgs, 0).
-define(default_icmpOutErrors, 0).
-define(default_icmpOutDestUnreachs, 0).
-define(default_icmpOutTimeExcds, 0).
-define(default_icmpOutParmProbs, 0).
-define(default_icmpOutSrcQuenchs, 0).
-define(default_icmpOutRedirects, 0).
-define(default_icmpOutEchos, 0).
-define(default_icmpOutEchoReps, 0).
-define(default_icmpOutTimestamps, 0).
-define(default_icmpOutTimestampReps, 0).
-define(default_icmpOutAddrMasks, 0).
-define(default_icmpOutAddrMaskReps, 0).
-define(default_tcpRtoAlgorithm, 1).
-define(default_tcpRtoMin, 0).
-define(default_tcpRtoMax, 0).
-define(default_tcpMaxConn, 0).
-define(default_tcpActiveOpens, 0).
-define(default_tcpPassiveOpens, 0).
-define(default_tcpAttemptFails, 0).
-define(default_tcpEstabResets, 0).
-define(default_tcpCurrEstab, 0).
-define(default_tcpInSegs, 0).
-define(default_tcpOutSegs, 0).
-define(default_tcpRetransSegs, 0).
-define(default_tcpInErrs, 0).
-define(default_tcpOutRsts, 0).
-define(default_udpInDatagrams, 0).
-define(default_udpNoPorts, 0).
-define(default_udpInErrors, 0).
-define(default_udpOutDatagrams, 0).
-define(default_egpInMsgs, 0).
-define(default_egpInErrors, 0).
-define(default_egpOutMsgs, 0).
-define(default_egpOutErrors, 0).
-define(default_egpAs, 0).
-define(default_snmpInPkts, 0).
-define(default_snmpOutPkts, 0).
-define(default_snmpInBadVersions, 0).
-define(default_snmpInBadCommunityNames, 0).
-define(default_snmpInBadCommunityUses, 0).
-define(default_snmpInASNParseErrs, 0).
-define(default_snmpInTooBigs, 0).
-define(default_snmpInNoSuchNames, 0).
-define(default_snmpInBadValues, 0).
-define(default_snmpInReadOnlys, 0).
-define(default_snmpInGenErrs, 0).
-define(default_snmpInTotalReqVars, 0).
-define(default_snmpInTotalSetVars, 0).
-define(default_snmpInGetRequests, 0).
-define(default_snmpInGetNexts, 0).
-define(default_snmpInSetRequests, 0).
-define(default_snmpInGetResponses, 0).
-define(default_snmpInTraps, 0).
-define(default_snmpOutTooBigs, 0).
-define(default_snmpOutNoSuchNames, 0).
-define(default_snmpOutBadValues, 0).
-define(default_snmpOutGenErrs, 0).
-define(default_snmpOutGetRequests, 0).
-define(default_snmpOutGetNexts, 0).
-define(default_snmpOutSetRequests, 0).
-define(default_snmpOutGetResponses, 0).
-define(default_snmpOutTraps, 0).
-define(default_snmpEnableAuthenTraps, 1).

-endif.
