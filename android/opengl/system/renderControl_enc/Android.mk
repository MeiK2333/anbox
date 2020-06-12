LOCAL_PATH := $(call my-dir)

$(call emugl-begin-shared-library,lib_renderControl_enc)

LOCAL_CFLAGS := \
    -Wno-unused-parameter \
	-Wno-unused-variable \
	-Wno-unused-function \
	-Wno-mismatched-tags \
	-Wno-gnu-designator

LOCAL_SRC_FILES := \
    renderControl_client_context.cpp \
    renderControl_enc.cpp \
    renderControl_entry.cpp

$(call emugl-export,C_INCLUDES,$(LOCAL_PATH))
$(call emugl-import,libOpenglCodecCommon)
$(call emugl-end-module)
