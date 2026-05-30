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
        PuzzleModeItem.qml
        PuzzleSelectionScreen.qml
        WarningDialog.qml
        ConfirmDialog.qml
        SOURCES Alarm.h
        SOURCES Alarm.cpp
        SOURCES AlarmModel.h
        SOURCES AlarmModel.cpp
        QML_FILES AlarmCard.qml
        SOURCES
        SOURCES
        QML_FILES AlarmListScreen.qml
        QML_FILES AlarmSettingsScreen.qml
        QML_FILES AppIconButton.qml
        QML_FILES TimePicker.qml
        QML_FILES AppArrowButton.qml
        QML_FILES AppCanvasButton.qml
        QML_FILES AppSwitch.qml
        QML_FILES AppSlider.qml
        QML_FILES AppSettingsTile.qml
        SOURCES AlarmData.h
        QML_FILES MelodySelectionScreen.qml
        QML_FILES MelodyItem.qml
        QML_FILES ExpandableSection.qml
        QML_FILES AppTopBar.qml
        QML_FILES BackButton.qml
        QML_FILES PuzzleModeItem.qml
        QML_FILES PuzzleSelectionScreen.qml
        QML_FILES WarningDialog.qml
        QML_FILES ConfirmDialog.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appalarmer PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appalarmer
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
