cmake_minimum_required(VERSION 3.19)
project(hydraulics_channel_gvf LANGUAGES CXX)

set(APP_VERSION 4.5.9) #21-9-2020 -25-7-2021 -9-8-2021 -25-7-2022 ver 4.5.1 le 25-3-2023ver 4.5.7 le 29-4-2023 4.5.9 le 5-5-2023

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

configure_file(version.h.in version.h)

find_package(Qt6 6.5 REQUIRED COMPONENTS Core Widgets PrintSupport)

qt_standard_project_setup()

qt_add_executable(hydraulics_channel_gvf
    WIN32 MACOSX_BUNDLE
    main.cpp
    hydraulics_channel_gvf.cpp
    hydraulics_channel_gvf.h
    hydraulics_channel_gvf.ui
    qcustomplot.h
    qcustomplot.cpp
    qtresource.qrc
    translations.qrc
    constants.h
    version.h.in
    io.github.hafmed.Hydraulics-Channel-GVF.desktop io.github.hafmed.Hydraulics-Channel-GVF.metainfo.xml io.github.hafmed.Hydraulics-Channel-GVF.png io.github.hafmed.Hydraulics-Channel-GVF.yaml io.github.hafmed.Hydraulics-Channel-GVF io.github.hafmed.Hydraulics-Channel-GVF.ico io.github.hafmed.Hydraulics-Channel-GVF.svg
)

# Include QCustomPlot header directory
target_include_directories(hydraulics_channel_gvf PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR} # Assuming qcustomplot.h is in the same directory as CMakeLists.txt
)

target_link_libraries(hydraulics_channel_gvf
    PRIVATE
        Qt::Core
        Qt::Widgets
        Qt::PrintSupport # Required for printing/exporting plots
)

include(GNUInstallDirs)

install(TARGETS hydraulics_channel_gvf
    BUNDLE  DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

# qt_generate_deploy_app_script(
#     TARGET hydraulics_channel_gvf
#     OUTPUT_SCRIPT deploy_script
#     NO_UNSUPPORTED_PLATFORM_ERROR
# )
# install(SCRIPT ${deploy_script})

#install(FILES ${PROJECT_SOURCE_DIR}/io.github.hafmed.Hydraulics-Channel-GVF.metainfo.xml DESTINATION $ENV{HOME}/.local/app/share/metainfo/io.github.hafmed.Hydraulics-Channel-GVF.metainfo.xml)

install(FILES "${PROJECT_SOURCE_DIR}/io.github.hafmed.Hydraulics-Channel-GVF.metainfo.xml"
        DESTINATION "$ENV{HOME}/.local/app/share/metainfo")
install(FILES "${PROJECT_SOURCE_DIR}/io.github.hafmed.Hydraulics-Channel-GVF.desktop"
        DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications")
install(FILES "${PROJECT_SOURCE_DIR}/io.github.hafmed.Hydraulics-Channel-GVF.metainfo.xml"
        DESTINATION "${CMAKE_INSTALL_PREFIX}/share/metainfo")
install(FILES "${PROJECT_SOURCE_DIR}/io.github.hafmed.Hydraulics-Channel-GVF.png"
        DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/256x256/apps")
