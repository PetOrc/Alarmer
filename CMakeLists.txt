cmake_minimum_required(VERSION 3.16)

project(alarmer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(QT_QML_GENERATE_QMLLS_INI ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appalarmer
    main.cpp
    Alarm.cpp
    AlarmModel.cpp
)

qt_add_qml_module(appalarmer
    URI alarmer
    QML_FILES
        Main.qml
        AlarmCard.qml
        AlarmListScreen.qml
        AlarmSettingsScreen.qml
        AppIconButton.qml
        TimePicker.qml
        AppArrowButton.qml
        AppCanvasButton.qml
        AppSwitch.qml
        AppSlider.qml
        AppSettingsTile.qml
        ExpandableSection.qml
        MelodyItem.qml
        MelodySelectionScreen.qml
        AppTopBar.qml
        BackButton.qml
        PuzzleModelItem.qml
        PuzzleSelectionScreen.qml
        WarningDialog.qml
        ConfirmDialog.qml
    SOURCES
        Alarm.cpp
        AlarmModel.cpp
)

set_target_properties(appalarmer PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appalarmer
    PRIVATE Qt6::Quick
)

install(TARGETS appalarmer
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)