#!../../bin/linux-x86_64/ramp

#- SPDX-FileCopyrightText: 2005 Argonne National Laboratory
#-
#- SPDX-License-Identifier: EPICS

#- You may have to change ramp to something else
#- everywhere it appears in this file

< envPaths

## Register all support components
dbLoadDatabase "../../dbd/ramp.dbd"
ramp_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/ramp.db","P=LLNL_2026_Test:")

iocInit()

## Start any sequence programs
#seq sncramp,"user=epics-dev"
