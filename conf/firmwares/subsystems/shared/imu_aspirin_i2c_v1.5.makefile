# Hey Emacs, this is a -*- makefile -*-
#
# Aspirin IMU v1.5 via I2C only
#
#
# if ACCEL and GYRO SENS/NEUTRAL are not defined,
# the defaults from the datasheet will be used
#
# required xml:
#  <section name="IMU" prefix="IMU_">
#
#    <define name="MAG_X_NEUTRAL" value="2358"/>
#    <define name="MAG_Y_NEUTRAL" value="2362"/>
#    <define name="MAG_Z_NEUTRAL" value="2119"/>
#
#    <define name="MAG_X_SENS" value="3.4936416" integer="16"/>
#    <define name="MAG_Y_SENS" value="3.607713" integer="16"/>
#    <define name="MAG_Z_SENS" value="4.90788848" integer="16"/>
#
#  </section>
#

include $(CFG_SHARED)/imu_aspirin_i2c_common.makefile

IMU_ASPIRIN_CFLAGS += -DIMU_ASPIRIN_VERSION_1_5

# Keep CFLAGS/Srcs for imu in separate expression so we can assign it to other targets
ap.CFLAGS += $(IMU_ASPIRIN_CFLAGS)
ap.srcs   += $(IMU_ASPIRIN_SRCS)

test_imu.CFLAGS += $(IMU_ASPIRIN_CFLAGS)
test_imu.srcs   += $(IMU_ASPIRIN_SRCS)
