import QtQuick 2.1
import QtQuick.Controls 2.0 as QQC2
import org.kde.kirigami 2.4 as Kirigami
 
Kirigami.ApplicationWindow {
    id: root
 
    globalDrawer: Kirigami.GlobalDrawer {
        title: "Hello App"
        titleIcon: "applications-graphics"
        actions: [
            Kirigami.Action {
                text: "View"
                icon.name: "view-list-icons"
                Kirigami.Action {
                    text: "action 1"
                }
                Kirigami.Action {
                    text: "action 2"
                }
                Kirigami.Action {
                    text: "action 3"
                }
            },
            Kirigami.Action {
                text: "action 3"
            },
            Kirigami.Action {
                text: "action 4"
            }
        ]
    }
    contextDrawer: Kirigami.ContextDrawer {
        id: contextDrawer
    }
    pageStack.initialPage: mainPageComponent
    Component {
        id: mainPageComponent
        Kirigami.ScrollablePage {
            title: "Hello"
            actions {
                main: Kirigami.Action {
                    icon.name: sheet.sheetOpen ? "dialog-cancel" : "document-edit"
                    onTriggered: {
                        print("Action button in buttons page clicked");
                        sheet.sheetOpen = !sheet.sheetOpen
                    }
                }
                left: Kirigami.Action {
                    icon.name: "go-previous"
                    onTriggered: {
                        print("Left action triggered")
                    }
                }
                right: Kirigami.Action {
                    icon.name: "go-next"
                    onTriggered: {
                        print("Right action triggered")
                    }
                }
                contextualActions: [
                    Kirigami.Action {
                        text:"Action for buttons"
                        icon.name: "bookmarks"
                        onTriggered: print("Action 1 clicked")
                    },
                    Kirigami.Action {
                        text:"Action 2"
                        icon.name: "folder"
                        enabled: false
                    },
                    Kirigami.Action {
                        text: "Action for Sheet"
                        visible: sheet.sheetOpen
                    }
                ]
            }
            Kirigami.OverlaySheet {
                id: sheet
                onSheetOpenChanged: page.actions.main.checked = sheetOpen
                QQC2.Label {
                    wrapMode: Text.WordWrap
                    text: "Lorem ipsum dolor sit amet"
                }
            }
            //Page contents...
        }
    }
}