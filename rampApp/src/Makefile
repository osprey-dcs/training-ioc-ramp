# SPDX-FileCopyrightText: 2003 Argonne National Laboratory
#
# SPDX-License-Identifier: EPICS

TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = ramp
# ramp.dbd will be created and installed
DBD += ramp.dbd

# ramp.dbd will be made up from these files:
ramp_DBD += base.dbd

# Include dbd files from all support applications:
#ramp_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#ramp_LIBS += xxx

# ramp_registerRecordDeviceDriver.cpp derives from ramp.dbd
ramp_SRCS += ramp_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
ramp_SRCS_DEFAULT += rampMain.cpp
ramp_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#ramp_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
ramp_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

