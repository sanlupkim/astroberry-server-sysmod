cmake_minimum_required(VERSION 2.8)
PROJECT(astroberry-server-sysmod NONE)

set (VERSION_MAJOR 2)
set (VERSION_MINOR 0)
set (VERSION_RELEASE 0)

set(BIN_INSTALL_DIR "/usr/bin")
set(XDG_INSTALL_DIR "/etc/xdg")

if (${CMAKE_SYSTEM_NAME} MATCHES "Linux")
        install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/files/startlxde-astroberry DESTINATION ${BIN_INSTALL_DIR})
	install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/files/openbox-lxde-astroberry DESTINATION ${BIN_INSTALL_DIR})
        install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/files/lxde-astroberry-rc.xml DESTINATION ${XDG_INSTALL_DIR}/openbox)
	install(FILES ${CMAKE_CURRENT_SOURCE_DIR}/files/lxde-astroberry-applications.menu DESTINATION ${XDG_INSTALL_DIR}/menus)
        install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/files/lxpanel/LXDE-astroberry DESTINATION ${XDG_INSTALL_DIR}/lxpanel)
        install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/files/lxsession/LXDE-astroberry DESTINATION ${XDG_INSTALL_DIR}/lxsession)
        install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/files/pcmanfm/LXDE-astroberry DESTINATION ${XDG_INSTALL_DIR}/pcmanfm)
endif()
